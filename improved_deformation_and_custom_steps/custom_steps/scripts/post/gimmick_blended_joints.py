
import mgear.shifter.custom_step as cstp

from mgear import rigbits
import pymel.core as pm

class CustomShifterStep(cstp.customShifterMainStep):
    def __init__(self):
        self.name = "gimmick_blended_joints"


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
        self.create_gimmick()
        self.create_support_gimmick()

    def create_gimmick(self):
        # this method will create the gimmick joints based on a list of joint
        # names

        # list of joints in the left side to add blended gimmick joints that
        # will me mirror in the right side
        left_joint_list = ["arm_L0_end_jnt",
                           "arm_L0_0_jnt",
                           "shoulder_L0_shoulder_jnt",
                           "leg_L0_0_jnt",
                           "finger_L0_0_jnt",
                           "finger_L0_1_jnt",
                           "finger_L0_2_jnt",
                           "finger_L1_0_jnt",
                           "finger_L1_1_jnt",
                           "finger_L1_2_jnt",
                           "finger_L2_0_jnt",
                           "finger_L2_1_jnt",
                           "finger_L2_2_jnt",
                           "finger_L3_0_jnt",
                           "finger_L3_1_jnt",
                           "finger_L3_2_jnt",
                           "thumb_L0_0_jnt",
                           "thumb_L0_1_jnt",
                           "thumb_L0_2_jnt"]

        for side in "LR":
            for jname in left_joint_list:
                sJnt = pm.PyNode(jname.replace("_L", "_{}".format(side)))
                rigbits.addBlendedJoint(sJnt)

        # list on the central part or side that will be not mirror
        central_joint_list = []

        for jname in central_joint_list:
            rigbits.addBlendedJoint(pm.PyNode(jname))


    def create_support_gimmick(self):
        # create the support joint in the position using a list of positions

        left_positions = [[0, -0.8, 0],
                          [0, 0, -0.5],
                          [0, 0.8, 0]]

        self.support_gimmick("blend_leg_L0_0_jnt", left_positions)

        right_positions = [[0, 0.8, 0],
                          [0, 0, 0.5],
                          [0, -0.8, 0]]

        self.support_gimmick("blend_leg_R0_0_jnt", right_positions)


    # Helper methods ###########################################

    def support_gimmick(self, gimmick_joint, support_positions):
        # create  support joint in place
        for p in support_positions:
            pm.select(gimmick_joint, r=True)
            sup_joint = rigbits.addSupportJoint()
            sup_joint[0].setTranslation(p)