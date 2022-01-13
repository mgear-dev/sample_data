import os
import mgear.shifter.custom_step as cstp
import pymel.core as pm


class CustomShifterStep(cstp.customShifterMainStep):
    def __init__(self):
        self.name = "import_geo"


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
        self.import_geometry()

        try:
            pm.select("guide")
        except:
            pass


    def import_geometry(self):
        path =  "\\".join(os.path.abspath(
            os.path.dirname(__file__)).split("\\")[:-2])

        pm.importFile(os.path.join(path, "assets", "geo.ma"))
