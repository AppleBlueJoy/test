# -*- coding:UTF-8 -*-
# @chaixuebin
# copy_bsNode(copy=cmds.ls(sl=True)[0],copied=cmds.ls(sl=True)[1],bsCopyList=[])......#  if bsCopyList == [], copy all ; else, copy bsCopyList
import maya.cmds as cmds
import maya.mel as mel


def get_mesh_bs_and_bsAttrList(mesh='pSphere1',bsList=[]):
    bsTemp = [attr for attr in cmds.listHistory(mesh) if cmds.nodeType(attr) == 'blendShape']
    bsNode = bsTemp[0] if bsTemp else False
    if bsNode :
        bsAttrList = bsList if bsList else cmds.listAttr('%s.w'%bsNode,m=True) 
    else:
        bsAttrList = [False]
    return bsNode,bsAttrList

#
def bsNew_name_def(oldMesh='pSphere1',newMesh='pSphere2',oldBsList=[]):
    bsNodeOld,bsAttrListOld = get_mesh_bs_and_bsAttrList(mesh=oldMesh,bsList=oldBsList)
    bsNodeNew = bsNodeOld.replace(oldMesh,newMesh) if oldMesh in bsNodeOld else '%s_%s'%(newMesh,bsNodeOld)

    bsAttrListNew=[]
    for attr in bsAttrListOld :
        if oldMesh in attr :
            bsAttrListNew.append(attr.replace(oldMesh,newMesh)) 
        else :
            #bsAttrListNew.append('%s_%s'%(newMesh,attr))
            bsAttrListNew.append(attr)
    return bsNodeNew,bsAttrListNew

#
def set_warp_def(warp='pSphere2',warped='pSphere1'):
    cmds.select(warp,warped)
    mel.eval('doWrapArgList "7" { "1","0","1", "2", "1", "1", "1", "0" }')
    warpNode = [attr for attr in cmds.listHistory(warp) if cmds.nodeType(attr) == 'wrap'][0]
    warpBaseObj = cmds.listConnections('%s.basePoints[0]'%(warpNode),s=True,d=False)[0]
    
    return warpNode,warpBaseObj

#
def copy_bsNode(copy='pSphere1',copied='pSphere2',bsCopyList=[]):
    
    bsNodeOld,bsAttrListOld = get_mesh_bs_and_bsAttrList(mesh=copy,bsList=bsCopyList)
    bsNodeNew,bsAttrListNew = bsNew_name_def(oldMesh=copy,newMesh=copied,oldBsList=bsCopyList)
    
    bsNodeCopiedExisit,bsNodeCopiedExisitList = get_mesh_bs_and_bsAttrList(mesh=copied,bsList=[])
    
    connectObj = []
    for attr in bsAttrListOld:
        temp =  cmds.listConnections('%s.%s'%(bsNodeOld,attr),s=True,d=False,p=True)
        if temp:
            connectObj.append(temp[0])
            cmds.disconnectAttr(temp[0],'%s.%s'%(bsNodeOld,attr))
        else:
            connectObj.append(cmds.getAttr('%s.%s'%(bsNodeOld,attr)))
        cmds.setAttr('%s.%s'%(bsNodeOld,attr),0)
        
        
    warpMeshTemp = cmds.duplicate(copied,rr=True)[0]
    warpNode,warpBaseObj = set_warp_def(warp=warpMeshTemp,warped=copy)
    
    newBsObj = []
    for index,attr in enumerate(bsAttrListOld):
        cmds.setAttr('%s.%s'%(bsNodeOld,attr),1)
        newBsObj.append(cmds.duplicate(warpMeshTemp,rr=True,n=bsAttrListNew[index])[0])
        cmds.setAttr('%s.%s'%(bsNodeOld,attr),0)
        
        print '%s/100\n'%( (((index*1.0)/len(bsAttrListOld))*100.0) ),
        
    if bsNodeCopiedExisit:
        bsNodeNew = bsNodeCopiedExisit
        index = len(bsNodeCopiedExisitList)
        for obj in newBsObj:
            cmds.blendShape(bsNodeCopiedExisit,e=True,t=(copied,index,obj,1.0))
            index += 1     
    else:
        cmds.select(newBsObj,copied)
        cmds.blendShape(foc=True,n=bsNodeNew)
        
    for index,attr in enumerate(bsAttrListOld):
        if isinstance(connectObj[index],float):
            cmds.setAttr('%s.%s'%(bsNodeOld,attr),connectObj[index])
            cmds.setAttr('%s.%s'%(bsNodeNew,bsAttrListNew[index]),connectObj[index])
        else:
            cmds.connectAttr(connectObj[index],'%s.%s'%(bsNodeOld,attr))
            cmds.connectAttr(connectObj[index],'%s.%s'%(bsNodeNew,bsAttrListNew[index]))
    
    cmds.setAttr('%s.v'%(copy),0)
    cmds.delete(warpMeshTemp,warpBaseObj,newBsObj)
    
    print 'copy %s`s bsNode to %s'%(copy,copied),

