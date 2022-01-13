'''
This custom step import the corrective blendshapes for the mouth main positions
'''
import os
import mgear.shifter.custom_step as cstp
import maya.mel as mel


class CustomShifterStep(cstp.customShifterMainStep):

    def __init__(self):
        self.name = "mouth_blendshapes"

    def run(self, stepDict):
        self.stepDict = stepDict
        path = os.path.join(self.stepDict["paths"].data_path,
                            self.name,
                            "head_geo_proportions_setup_blendShape.mel")
        path = str(path).replace("\\", "/")
        mel.eval('source "{}";'.format(path))

        # we connect here the mouth_sliding
        # the main reason for this is that SHAPES plugin needs to create a new
        # blendshape node when import it. While  connect can add to the
        # exiting blendshape node
        stepDict["mouth_slide"].connect(stepDict)
