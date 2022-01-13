
from ngSkinTools.mllInterface import MllInterface
import pymel.core as pm
oSel = pm.selected()[0]
oJnt = [x.fullPath() for x in pm.skinCluster(oSel, query=True, influence=True)]
mll = MllInterface()
mll.setCurrentMesh(pm.selected()[0].name())
ii = mll.listInfluenceIndexes()
ip = mll.listInfluencePaths()
inf_dict = {}
for id, i in zip(ii, ip):
    inf_dict[i] = id
mirror_dict = {}
for x in oJnt:
    if "_L" in x and x.replace("_L", "_R") in oJnt:
        mirror_dict[inf_dict[x]] = inf_dict[x.replace("_L", "_R")]
        mirror_dict[inf_dict[x.replace("_L", "_R")]] = inf_dict[x]
mll.setManualMirrorInfluences(mirror_dict)

