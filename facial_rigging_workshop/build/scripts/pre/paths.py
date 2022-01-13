
import os


import mgear.shifter.custom_step as cstp


# CUSTOM_STEPS_DIR = os.environ.get('MGEAR_SHIFTER_CUSTOMSTEP_PATH', None)
# os.sys.path.append(CUSTOM_STEPS_DIR)


class CustomShifterStep(cstp.customShifterMainStep):

    def __init__(self):
        self.name = "paths"

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

        self.custom_steps_path = os.sep.join(os.path.abspath(
            os.path.dirname(__file__)).split(os.sep)[:-2])

        self.asset_path = os.sep.join([self.custom_steps_path, "assets"])

        self.data_path = os.sep.join([self.custom_steps_path, "data"])

        self.pre_scripts_path = os.sep.join(
            [self.custom_steps_path, "scripts", "pre"])

        self.post_scripts_path = os.sep.join(
            [self.custom_steps_path, "scripts", "post"])

        print "custom_steps_path: " + self.custom_steps_path
        print "asset_path: " + self.asset_path
        print "data_path: " + self.data_path
        print "pre_scripts_path: " + self.pre_scripts_path
        print "post_scripts_path: " + self.post_scripts_path
