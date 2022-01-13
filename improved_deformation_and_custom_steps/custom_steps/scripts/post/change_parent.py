
import mgear.shifter.custom_step as cstp

import pymel.core as pm

class CustomShifterStep(cstp.customShifterMainStep):
    def __init__(self):
        self.name = "change_parent"


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
        # direct name parenting example
        # # pm.parent("elbowHelper_L0_root", "arm_L0_tweak5_ctl")
        # pm.parent("elbowHelper_L1_root", "arm_L0_tweak3_ctl")
        # pm.parent("elbowHelper_L2_root", "arm_L0_tweak7_ctl")

        # # pm.parent("kneeHelper_L0_root", "leg_L0_tweak4_ctl")
        # pm.parent("kneeHelper_L1_root", "leg_L0_tweak3_ctl")
        # pm.parent("kneeHelper_L2_root", "leg_L0_tweak5_ctl")

        # # pm.parent("elbowHelper_R0_root", "arm_R0_tweak5_ctl")
        # pm.parent("elbowHelper_R1_root", "arm_R0_tweak3_ctl")
        # pm.parent("elbowHelper_R2_root", "arm_R0_tweak7_ctl")

        # # pm.parent("kneeHelper_R0_root", "leg_R0_tweak4_ctl")
        # pm.parent("kneeHelper_R1_root", "leg_R0_tweak3_ctl")
        # pm.parent("kneeHelper_R2_root", "leg_R0_tweak5_ctl")

        # access to the build dictionary
        pm.parent(stepDict["mgearRun"].components["elbowHelper_L0"].root,
                  "arm_L0_tweak5_ctl")
        pm.parent(stepDict["mgearRun"].components["elbowHelper_L1"].root,
                  "arm_L0_tweak3_ctl")
        pm.parent(stepDict["mgearRun"].components["elbowHelper_L2"].root,
                  "arm_L0_tweak7_ctl")

        pm.parent(stepDict["mgearRun"].components["kneeHelper_L0"].root,
                  "leg_L0_tweak4_ctl")
        pm.parent(stepDict["mgearRun"].components["kneeHelper_L1"].root,
                  "leg_L0_tweak3_ctl")
        pm.parent(stepDict["mgearRun"].components["kneeHelper_L2"].root,
                  "leg_L0_tweak5_ctl")

        pm.parent(stepDict["mgearRun"].components["elbowHelper_R0"].root,
                  "arm_R0_tweak5_ctl")
        pm.parent(stepDict["mgearRun"].components["elbowHelper_R1"].root,
                  "arm_R0_tweak3_ctl")
        pm.parent(stepDict["mgearRun"].components["elbowHelper_R2"].root,
                  "arm_R0_tweak7_ctl")

        pm.parent(stepDict["mgearRun"].components["kneeHelper_R0"].root,
                  "leg_R0_tweak4_ctl")
        pm.parent(stepDict["mgearRun"].components["kneeHelper_R1"].root,
                  "leg_R0_tweak3_ctl")
        pm.parent(stepDict["mgearRun"].components["kneeHelper_R2"].root,
                  "leg_R0_tweak5_ctl")