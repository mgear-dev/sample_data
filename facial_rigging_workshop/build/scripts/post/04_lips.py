import os
import pymel.core as pm

import mgear.shifter.custom_step as cstp


from mgear.core import attribute
from mgear import rigbits
from mgear.rigbits import ghost
from mgear.rigbits import blendShapes
from mgear.rigbits.facial_rigger import lips_rigger


class CustomShifterStep(cstp.customShifterMainStep):

    def __init__(self):
        self.name = "lips"

    def run(self, stepDict):
        """Run method.

            i.e:  stepDict["mgearRun"].global_ctl  gets the global_ctl from
                    shifter rig build bas
            i.e:  stepDict["mgearRun"].components["control_C0"].ctl  gets the
                    ctl from shifter component called control_C0
            i.e:  stepDict["otherCustomStepName"].ctlMesh  gets the ctlMesh
                    from a previous custom step called "otherCustomStepName"
        Arguments:
            stepDict (dict): Dictionary containing the objects from
                the previous steps

        Returns:
            None: None
        """
        self.stepDict = stepDict

        self.setup_root = stepDict["facial_base"].local_setup_root(
            self, stepDict)

        self.duplicate_geo(stepDict)
        self.build_lips(stepDict)
        self.ghost_structure(stepDict)
        stepDict["facial_base"].import_skin(self.name)
        stepDict["facial_base"].import_ctrl_shapes(self.name)
        self.connect(stepDict)

    def duplicate_geo(self, stepDict):
        # Duplicate the geometry for each local rig

        self.head_geo = self.dup(stepDict["facial_base"].head_geo)

    def build_lips(self, stepDict):
        # build the lip rigger using the previously saved preset and set
        # the objects to the lips controls

        # create the lips rig
        path = os.path.join(self.stepDict["paths"].data_path,
                            self.name,
                            "lips.lips")

        lips_rigger.rig_from_file(path)

        # Sets the objects for the lips original rig controls
        self.lips_C_upper_ctl_original = pm.PyNode("lips_C_upper_ctl")
        self.lips_C_lower_ctl_original = pm.PyNode("lips_C_lower_ctl")

        self.lips_L_upInner_ctl_original = pm.PyNode("lips_L_upInner_ctl")
        self.lips_L_upOuter_ctl_original = pm.PyNode("lips_L_upOuter_ctl")
        self.lips_L_lowInner_ctl_original = pm.PyNode("lips_L_lowInner_ctl")
        self.lips_L_lowOuter_ctl_original = pm.PyNode("lips_L_lowOuter_ctl")

        self.lips_R_upInner_ctl_original = pm.PyNode("lips_R_upInner_ctl")
        self.lips_R_upOuter_ctl_original = pm.PyNode("lips_R_upOuter_ctl")
        self.lips_R_lowInner_ctl_original = pm.PyNode("lips_R_lowInner_ctl")
        self.lips_R_lowOuter_ctl_original = pm.PyNode("lips_R_lowOuter_ctl")

    def ghost_structure(self, stepDict):
        # creates the controls that will be exposed to the animators

        # center main controls
        self.lips_C_upper_ctl = ghost.createGhostCtl(
            self.lips_C_upper_ctl_original,
            stepDict["mgearRun"].components["mouth_C0"].lipup_ctl)
        self.lips_C_lower_ctl = ghost.createGhostCtl(
            self.lips_C_lower_ctl_original,
            stepDict["mgearRun"].components["mouth_C0"].liplow_ctl)

        # unlock all the attributes in the upper and lower lip control
        attribute.setKeyableAttributes(self.lips_C_upper_ctl)
        attribute.setKeyableAttributes(self.lips_C_lower_ctl)

        # add slider offset
        npos = rigbits.addNPO([self.lips_C_upper_ctl, self.lips_C_lower_ctl])
        for c in npos:
            master_ctl = stepDict["mouth_slide"].mouthSlide_ctl
            rigbits.connectLocalTransform([master_ctl, c])

        # Left side controls
        self.lips_L_upInner_ctl = ghost.createGhostCtl(
            self.lips_L_upInner_ctl_original,
            self.lips_C_upper_ctl)
        self.lips_L_upOuter_ctl = ghost.createGhostCtl(
            self.lips_L_upOuter_ctl_original,
            stepDict["mouth_slide"].cornerL_ctl)
        self.lips_L_lowInner_ctl = ghost.createGhostCtl(
            self.lips_L_lowInner_ctl_original,
            self.lips_C_lower_ctl)
        self.lips_L_lowOuter_ctl = ghost.createGhostCtl(
            self.lips_L_lowOuter_ctl_original,
            stepDict["mouth_slide"].cornerL_ctl)

        # Right side controls
        self.lips_R_upInner_ctl = ghost.createGhostCtl(
            self.lips_R_upInner_ctl_original,
            self.lips_C_upper_ctl)
        self.lips_R_upOuter_ctl = ghost.createGhostCtl(
            self.lips_R_upOuter_ctl_original,
            stepDict["mouth_slide"].cornerR_ctl)
        self.lips_R_lowInner_ctl = ghost.createGhostCtl(
            self.lips_R_lowInner_ctl_original,
            self.lips_C_lower_ctl)
        self.lips_R_lowOuter_ctl = ghost.createGhostCtl(
            self.lips_R_lowOuter_ctl_original,
            stepDict["mouth_slide"].cornerR_ctl)

    def connect(self, stepDict):

        blendShapes.connectWithBlendshape(
            stepDict["mouth_slide"].head_geo, self.head_geo)
