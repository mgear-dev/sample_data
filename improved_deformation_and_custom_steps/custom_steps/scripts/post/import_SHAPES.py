
import mgear.shifter.custom_step as cstp
from maya import mel

class CustomShifterStep(cstp.customShifterMainStep):
    def __init__(self):
        self.name = "import_SHAPES"


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
        # mel.eval('source "SHAPES MEL Path";')
        mel.eval('source "D:/Dropbox/WIP/Training/improved_deformation_and_custom_steps/env/mgear/custom_steps/data/SHAPES/arms_geo_blendShape.mel";')
        mel.eval('source "D:/Dropbox/WIP/Training/improved_deformation_and_custom_steps/env/mgear/custom_steps/data/SHAPES/head_geo_blendShape.mel";')
        mel.eval('source "D:/Dropbox/WIP/Training/improved_deformation_and_custom_steps/env/mgear/custom_steps/data/SHAPES/leg_geo_blendShape.mel";')
        mel.eval('source "D:/Dropbox/WIP/Training/improved_deformation_and_custom_steps/env/mgear/custom_steps/data/SHAPES/pants_geo_blendShape.mel";')
        mel.eval('source "D:/Dropbox/WIP/Training/improved_deformation_and_custom_steps/env/mgear/custom_steps/data/SHAPES/shirt_geo_blendShape.mel";')
        return

