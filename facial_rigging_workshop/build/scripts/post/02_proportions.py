
import mgear.shifter.custom_step as cstp


class CustomShifterStep(cstp.customShifterMainStep):

    def __init__(self):
        self.name = "proportions"

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

        stepDict["facial_base"].import_skin(self.name)

    def duplicate_geo(self, stepDict):
        # Duplicate the geometry for each local rig

        self.head_geo = self.dup(stepDict["facial_base"].head_geo)
        self.eye_L_geo = self.dup(stepDict["facial_base"].eye_L_geo)
        self.eye_R_geo = self.dup(stepDict["facial_base"].eye_R_geo)
        self.lacrimal_geo = self.dup(stepDict["facial_base"].lacrimal_geo)
        self.eyebrows_geo = self.dup(stepDict["facial_base"].eyebrows_geo)
        self.upperTeeth_geo = self.dup(stepDict["facial_base"].upperTeeth_geo)
        self.lowerTeeth_geo = self.dup(stepDict["facial_base"].lowerTeeth_geo)
        self.tongue_geo = self.dup(stepDict["facial_base"].tongue_geo)
