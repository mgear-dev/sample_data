
import mgear.shifter.custom_step as cstp
from mgear.core import skin
import os
import pymel.core as pm


class CustomShifterStep(cstp.customShifterMainStep):
    def __init__(self):
        self.name = "import_skinPack"


    def run(self, stepDict):
        """Run method.

            i.e:  stepDict["mgearRun"].global_ctl  gets the global_ctl from
                    shifter rig on post step
            i.e:  stepDict["otherCustomStepName"].ctlMesh  gets the ctlMesh
                    from a previous custom step called "otherCustomStepName"
        Arguments:
            stepDict (dict): Dictionary containing the objects from
                the previous steps

        Returns:
            None: None
        """
        path =  "\\".join(os.path.abspath(os.path.dirname(__file__)).split("\\")[:-2])
        skin.importSkinPack(os.path.join(path, "data", "skin", "skin.gSkinPack"))

