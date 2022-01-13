
import mgear.shifter.custom_step as cstp
import os
import pymel.core as pm


class CustomShifterStep(cstp.customShifterMainStep):

    def __init__(self):
        self.name = "import_geo"

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

        self.import_geometry()

        try:
            pm.select("guide")
        except pm.MayaNodeError:
            pass

    def import_geometry(self):
        path = self.stepDict["paths"].asset_path

        pm.importFile(os.path.join(path, "geo.ma"))
