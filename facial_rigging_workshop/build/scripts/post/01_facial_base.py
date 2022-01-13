import os

import pymel.core as pm

import mgear.shifter.custom_step as cstp
from mgear.core import skin
from mgear.core import curve


class CustomShifterStep(cstp.customShifterMainStep):

    def __init__(self):
        self.name = "facial_base"

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
        # the name of the rig root
        self.model_name = stepDict["mgearRun"].model.name()

        # facial local setups base root
        self.facial_local_setups = pm.createNode(
            "transform",
            name="facial_local_setup",
            p=stepDict["mgearRun"].setupWS)

        # groups (sets in Maya)
        self.controllers_grp = pm.PyNode(self.model_name + "_controllers_grp")
        self.deformers_grp = pm.PyNode(self.model_name + "_deformers_grp")

        # static joint creation
        self.static_jnt(stepDict)

        # setting the geometry object for the rig
        self.head_geo = pm.PyNode("head_geo")
        self.eye_L_geo = pm.PyNode("eye_L_geo")
        self.eye_R_geo = pm.PyNode("eye_R_geo")
        self.lacrimal_geo = pm.PyNode("lacrimal_geo")

        # We connect the eyebrows to see step by step. But can be skipped
        # and use wrap or cvwrap at the end
        self.eyebrows_geo = pm.PyNode("eyebrows_geo")
        self.upperTeeth_geo = pm.PyNode("upperTeeth_geo")
        self.lowerTeeth_geo = pm.PyNode("lowerTeeth_geo")
        self.tongue_geo = pm.PyNode("tongue_geo")

        # import surface for sliding
        self.import_surface(stepDict)

    def static_jnt(self, stepDict):
        # static joint to use as a dummy weight in parts that are not moving

        try:
            jnt_parent = stepDict["mgearRun"].jnt_org
        except AttributeError:
            jnt_parent = stepDict["mgearRun"].setupWS
        self.static_jnt = pm.createNode("joint",
                                        name="static_jnt",
                                        p=jnt_parent)

        self.deformers_grp.add(self.static_jnt)

    def local_setup_root(self, local_setup_custom_step, stepDict):
        # create local setup root for a custom step
        setup_root = pm.createNode(
            "transform",
            n=local_setup_custom_step.name + "_setup",
            p=self.facial_local_setups)
        setup_root.visibility.set(False)

        return setup_root

    def import_skin(self, custom_step_name, skin_name="skin"):
        # impor the skin pack for each custom step

        # we use subfolders to have the skin parts more organised
        skin.importSkinPack(os.path.join(self.stepDict["paths"].data_path,
                                         custom_step_name,
                                         "skin",
                                         "{}.gSkinPack".format(skin_name)))

    def import_surface(self, stepDict):
        # import the surface that will be used to mode the deformers over

        pm.importFile(os.path.join(self.stepDict["paths"].asset_path,
                                   "surface.ma"))

        self.surface_slider = pm.PyNode("sliding_surface")
        self.surface_slider.visibility.set(False)

        pm.parent(self.surface_slider, self.facial_local_setups)

    def import_ctrl_shapes(self, custom_step_name, file_name="curve_shapes"):
        # import custom control shapes
        path = os.path.join(self.stepDict["paths"].data_path,
                            custom_step_name,
                            "{}.crv".format(file_name))

        conf = curve._curve_from_file(path)
        curve.update_curve_from_data(conf, rplStr=["", ""])


# snippets

# export curves
# from mgear.core import curve
# import pymel.core as pm
# path = r"D:\Dropbox\WIP\Shifter_data_centric_part_2\build\custom_step\character\jay\data\facial\lips\curve_shapes.crv"
# curve.export_curve(path, pm.selected())
