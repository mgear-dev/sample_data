import pymel.core as pm

for oSkin in pm.ls(type='skinCluster'):
    skinJointList = pm.listConnections(oSkin.matrix, t='joint')
    for jnt in skinJointList:
        jnt.liw.set(0)