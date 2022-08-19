# -*- coding:UTF-8 -*-
# @chaixuebin
# deleteUnusedBsAttrDef(mod=cmds.ls(sl=True)[0])____________________# select mod run

#get_body_bs = pm.ls('FaceBs', typ = 'blendShape')[0]
#bs_name_list = [pm.aliasAttr('{}.weight[{}]'.format(get_body_bs, weight_name), q=True) for weight_name in get_body_bs.weightIndexList()]

# 方法一  mel
#mel.eval('blendShapeDeleteTargetGroup %s  %s '%(bsNode,7))


# 方法二  python
#targetIndex = 7
#cmds.removeMultiInstance('%s.w[%s]'%(bsNode,targetIndex),b=True)
#cmds.removeMultiInstance('%s.parentDirectory[%s]'%(bsNode,targetIndex),b=True)
#cmds.removeMultiInstance('%s.nextTarget[%s]'%(bsNode,targetIndex),b=True)
#cmds.removeMultiInstance('%s.targetVisibility[%s]'%(bsNode,targetIndex),b=True)
#cmds.removeMultiInstance('%s.targetParentVisibility[%s]'%(bsNode,targetIndex),b=True)
#cmds.removeMultiInstance('%s.it[0].itg[%s].targetWeights'%(bsNode,targetIndex),b=True)
#cmds.removeMultiInstance('%s.it[0].itg[%s]'%(bsNode,targetIndex),b=True)

#bsAttrName = cmds.aliasAttr('%s.w[%s]'%(bsNode,targetIndex),q=True)
#cmds.aliasAttr('%s.%s'%(bsNode,bsAttrName),rm=True)

import math
import maya.cmds
def deleteUnusedBsAttrDef(mod='mesh'):
    #mod=cmds.ls(sl=True)[0]
    bsNode = [ bsStr for bsStr in cmds.listHistory( mod ) if cmds.nodeType(bsStr)=='blendShape' ][0]
    bsNodeAttrList = cmds.listAttr('%s.w'%(bsNode),m=True)
    #origShape = [ origTemp for origTemp in cmds.listRelatives(mod,c=True) if 'Orig' in origTemp ][0]
    modVertexNum = cmds.polyEvaluate(mod,v=True)
    cmds.setAttr('%s.envelope'%(bsNode),0)
    origVertexPosList = [ cmds.xform('%s.vtx[%s]'%(mod,str(i)),q=True,ws=True,t=True) for i in range(modVertexNum) ]
    cmds.setAttr('%s.envelope'%(bsNode),1)
    
    lockBsAttrList = [ bsAttr for bsAttr in bsNodeAttrList if cmds.getAttr('%s.%s'%(bsNode,bsAttr),l=True)==True ]
    lockBsAttrDefaultValueList = [ cmds.getAttr('%s.%s'%(bsNode,bsAttr)) for bsAttr in lockBsAttrList ]
    [ cmds.setAttr('%s.%s'%(bsNode,bsAttr),l=False) for bsAttr in lockBsAttrList ]
    
    connectedBsAttrList = []
    for bsAttr in bsNodeAttrList:
        if cmds.listConnections('%s.%s'%(bsNode,bsAttr),s=True,d=False,p=True):
            connectedBsAttrList.append(bsAttr)
    
    connectStringList = [ '%sSPLIT%s'%(cmds.listConnections('%s.%s'%(bsNode,bsAttr),s=True,d=False,p=True)[0],bsAttr) for bsAttr in connectedBsAttrList if cmds.getAttr('%s.%s'%(bsNode,bsAttr),l=True)==False ] 
    frontAttrList , connectAttrList = [],[]
    for connectString in connectStringList:
        frontAttrList.append(connectString.split('SPLIT')[0])
        connectAttrList.append(connectString.split('SPLIT')[-1])
        
    [ cmds.disconnectAttr('%s'%(frontAttrList[i]),'%s.%s'%(bsNode,connectAttrList[i])) for i in range(len(frontAttrList)) ]
    
    defaultBsAttrList = list(set(bsNodeAttrList)-set(connectedBsAttrList)-set(lockBsAttrList))
    defaultBsAttrValueList = [ cmds.getAttr('%s.%s'%(bsNode,bsAttr)) for bsAttr in defaultBsAttrList ]
    
    [ cmds.setAttr('%s.%s'%(bsNode,attr),0) for attr in bsNodeAttrList ]
    
    usedAttrList = []
    for index,attr in enumerate(bsNodeAttrList):
        cmds.setAttr('%s.%s'%(bsNode,attr),1)
        deformVertexPosList = [ cmds.xform('%s.vtx[%s]'%(mod,str(i)),q=True,ws=True,t=True) for i in range(modVertexNum) ]
        cmds.setAttr('%s.%s'%(bsNode,attr),0)
        for i in range(modVertexNum):
            offset = math.sqrt(sum(map( lambda x,y : pow(x-y,2), origVertexPosList[i] ,deformVertexPosList[i] )))
            
            #print '%s/%s\n'%( i,modVertexNum ),
            
            if offset > 0.005:
                usedAttrList.append(attr)
                
                #print '%s\n'%(i),
                
                break
                
                
        print '%s/100\n'%( (((index*1.0)/len(bsNodeAttrList))*100.0) ),
        
        
    unUsedAttrList = list(set(bsNodeAttrList)-set(usedAttrList))
    targetIndexList = [ attrTemp.split('.')[1].split('[')[-1].split(']')[0] for attrTemp in cmds.listAttr('%s.it[0].itg'%(bsNode),m=True) if 'targetMatrix' in attrTemp ]
    
    for index,targetIndex in enumerate(targetIndexList):
        #bsAttrName = cmds.listAttr('%s.w[%s]'%(bsNode,targetIndex),m=1)[0]
        bsAttrName = cmds.aliasAttr('%s.w[%s]'%(bsNode,targetIndex),q=True)
        if bsAttrName not in usedAttrList:
            cmds.removeMultiInstance('%s.w[%s]'%(bsNode,targetIndex),b=True)
            cmds.removeMultiInstance('%s.parentDirectory[%s]'%(bsNode,targetIndex),b=True)
            cmds.removeMultiInstance('%s.nextTarget[%s]'%(bsNode,targetIndex),b=True)
            cmds.removeMultiInstance('%s.targetVisibility[%s]'%(bsNode,targetIndex),b=True)
            cmds.removeMultiInstance('%s.targetParentVisibility[%s]'%(bsNode,targetIndex),b=True)
            cmds.removeMultiInstance('%s.it[0].itg[%s].targetWeights'%(bsNode,targetIndex),b=True)
            cmds.removeMultiInstance('%s.it[0].itg[%s]'%(bsNode,targetIndex),b=True)
            
            cmds.aliasAttr('%s.%s'%(bsNode,bsAttrName),rm=True)
            
            #print '%s/100'%( (((index*1.0)/len(targetIndexList))*100.0) ),
            
            
    
    bsAttrDefaultDict = dict(zip(defaultBsAttrList, defaultBsAttrValueList))
    [ cmds.setAttr('%s.%s'%(bsNode,key),value) for key,value in bsAttrDefaultDict.items() if key in cmds.listAttr('%s.w'%(bsNode),m=True) ]
    
    bsAttrLockDict = dict(zip(lockBsAttrList, lockBsAttrDefaultValueList))
    [ cmds.setAttr('%s.%s'%(bsNode,key),value) for key,value in bsAttrLockDict.items() if key in cmds.listAttr('%s.w'%(bsNode),m=True) ]
    
    bsAttrCntDict = dict(zip(frontAttrList, connectAttrList))
    [ cmds.connectAttr(key,'%s.%s'%(bsNode,value)) for key,value in bsAttrCntDict.items() if value in usedAttrList if key != None]
    
    [ cmds.setAttr('%s.%s'%(bsNode,key),l=True) for key in bsAttrLockDict.keys() if key in cmds.listAttr('%s.w'%(bsNode),m=True) ]
    
    print 'these bsAttr is/are unused : [ %s ]'%(','.join(unUsedAttrList)),
    
    
    
    












