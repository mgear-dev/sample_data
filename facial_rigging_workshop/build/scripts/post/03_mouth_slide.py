
'''
This custom step creates the local rig to creeate a genear sliding effect of
the mouth
'''

import os

import pymel.core as pm

import mgear.shifter.custom_step as cstp

from mgear import rigbits
from mgear.rigbits import ghost
from mgear.rigbits import blendShapes


class CustomShifterStep(cstp.customShifterMainStep):

    def __init__(self):
        self.name = "mouth_slide"

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
        self.setup_root = stepDict["facial_base"].local_setup_root(
            self, stepDict)
        self.duplicate_geo(stepDict)

        self.ghost_structure(stepDict)

        stepDict["facial_base"].import_skin(self.name)

        # After creating the mouth blendshapes, this should be connected on
        # mouth blendshapes custom step
        # NOTE: the main reason for this is that SHAPES plugin needs to create
        # a new blendshape node when import it. While  connect can add to the
        # exiting blendshape node
        # self.connect(stepDict)

    def duplicate_geo(self, stepDict):
        # Duplicate the geometry for each local rig

        self.head_geo = self.dup(stepDict["facial_base"].head_geo)

    def ghost_structure(self, stepDict):
        # creates the controls that will be exposed to the animators

        # create interpose lvl for the ctl
        intTra = rigbits.createInterpolateTransform(
            [stepDict["mgearRun"].components["mouth_C0"].lipup_ctl,
             stepDict["mgearRun"].components["mouth_C0"].liplow_ctl])
        pm.rename(intTra, intTra.name() + "_int")

        # create ghost controls
        self.mouthSlide_ctl = ghost.createGhostCtl(
            stepDict["mgearRun"].components["mouthSlide_C0"].ctl,
            intTra)
        self.cornerL_ctl = ghost.createGhostCtl(
            stepDict["mgearRun"].components["mouthCorner_L0"].ctl,
            self.mouthSlide_ctl)
        self.cornerR_ctl = ghost.createGhostCtl(
            stepDict["mgearRun"].components["mouthCorner_R0"].ctl,
            self.mouthSlide_ctl)

        # change the parent for the original controls to be under the
        # local setu root
        pm.parent(stepDict["mgearRun"].components["mouthSlide_C0"].root,
                  self.setup_root)
        pm.parent(stepDict["mgearRun"].components["mouthCorner_L0"].root,
                  stepDict["mgearRun"].components["mouthSlide_C0"].ctl)
        pm.parent(stepDict["mgearRun"].components["mouthCorner_R0"].root,
                  stepDict["mgearRun"].components["mouthSlide_C0"].ctl)

        # slide system
        ghost.ghostSlider(
            [stepDict["mgearRun"].components["mouthSlide_C0"].ctl,
             stepDict["mgearRun"].components["mouthCorner_L0"].ctl,
             stepDict["mgearRun"].components["mouthCorner_R0"].ctl],
            stepDict["facial_base"].surface_slider,
            self.setup_root)

        # connect scale
        pm.connectAttr(
            self.mouthSlide_ctl.scale,
            stepDict["mgearRun"].components["mouthSlide_C0"].ctl.scale)
        pm.connectAttr(
            self.cornerL_ctl.scale,
            stepDict["mgearRun"].components["mouthCorner_L0"].ctl.scale)
        pm.connectAttr(
            self.cornerR_ctl.scale,
            stepDict["mgearRun"].components["mouthCorner_R0"].ctl.scale)

        # connect pucker
        pm.connectAttr(self.mouthSlide_ctl.tz,
                       stepDict["mgearRun"].components["mouthSlide_C0"].ctl.tz)

    def connect(self, stepDict):
        # connect  to chain the deformation with another local rig.

        blendShapes.connectWithBlendshape(
            stepDict["proportions"].head_geo, self.head_geo)
