#loader contenttweaker
import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialPart;

	static mats as Material[string]={
	"alubrass": MaterialSystem.getMaterialBuilder().setName("Aluminum Brass").setColor(Color.fromHex("F0D467")).build(),
	"alumite": MaterialSystem.getMaterialBuilder().setName("Alumite").setColor(Color.fromHex("F9ECF7")).build(),
	"ardite": MaterialSystem.getMaterialBuilder().setName("Ardite").setColor(Color.fromHex("D34117")).build(),
	"brass": MaterialSystem.getMaterialBuilder().setName("Brass").setColor(Color.fromHex("FFB400")).build(),
	"chrome":MaterialSystem.getMaterialBuilder().setName("Chrome").setColor(Color.fromHex("FFAAAB")).build(),
	"cobalt": MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build(),
	"elementium": MaterialSystem.getMaterialBuilder().setName("Elementium").setColor(Color.fromHex("F697CB")).build(),
	"enhancedgalgadorian":MaterialSystem.getMaterialBuilder().setName("Enhanced Galgadorian").setColor(9850751).build(),
	"galgadorian":MaterialSystem.getMaterialBuilder().setName("Galgadorian").setColor(11625595).build(),
	"knightslime": MaterialSystem.getMaterialBuilder().setName("Knightslime").setColor(Color.fromHex("FAC3FA")).build(),
	"manasteel": MaterialSystem.getMaterialBuilder().setName("Manasteel").setColor(Color.fromHex("7DB4FF")).build(),
	"manyullyn": MaterialSystem.getMaterialBuilder().setName("Manyullyn").setColor(Color.fromHex("A97DE0")).build(),
    "orfpm":MaterialSystem.getMaterialBuilder().setName("OR&FPM").setColor(16777215).setHasEffect(true).build(),
	"pigiron": MaterialSystem.getMaterialBuilder().setName("Pig Iron").setColor(Color.fromHex("F0A8A4")).build(),
	"reinforcedmetal":MaterialSystem.getMaterialBuilder().setName("Reinforced Metal").setColor(7643841).build(),
	"terrasteel": MaterialSystem.getMaterialBuilder().setName("Terrasteel").setColor(Color.fromHex("58FF0B")).build(),
	"titanium":MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(Color.fromHex("DCA0F0")).build(),
	"tungsten":MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(Color.fromHex("323232")).build(),
	"tungstensteel":MaterialSystem.getMaterialBuilder().setName("Tungstensteel").setColor(Color.fromHex("6464A0")).build(),
	"uranium":MaterialSystem.getMaterialBuilder().setName("Uranium").setColor(Color.fromHex("7F9374")).build(),
	"zinc":MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(Color.fromHex("FAF0F0")).build()
	};
	
    var metal_list=[
	mats.titanium,
	mats.chrome,
	mats.tungsten,
	mats.tungstensteel] as Material[];
	var scmetals=[
	mats.galgadorian,
	mats.enhancedgalgadorian,
	mats.reinforcedmetal] as Material[];
	var gearplate=[
	mats.alubrass,
	mats.alumite,
	mats.ardite,
	mats.brass,
	mats.cobalt,
	mats.elementium,
	mats.knightslime,
	mats.manasteel,
	mats.manyullyn,
	mats.pigiron,
	mats.terrasteel,
	mats.uranium,
	mats.zinc] as Material[];
    var part_names = ["gear", "plate", "nugget", "ingot"] as string[];
	var scpartnames=["gear","plate","nugget"] as string[];
	var gearplateparts=["gear","plate"] as string[];

//or&fpm
	mats.orfpm.registerParts(part_names);
	var orfpmData as MaterialPartData=mats.orfpm.registerPart("molten").getData();
		moltenDefault(orfpmData);
	
	     var blockData = mats.orfpm.registerPart("block").getData();
        blockData.addDataValue("hardness", "5");
        blockData.addDataValue("resistance", "30");
        blockData.addDataValue("harvestTool", "pickaxe");
        blockData.addDataValue("harvestLevel", "4");
	
//else
    for i, metal in metal_list {
        metal.registerPart("gear");
		var fluidData as MaterialPartData = metal.registerPart("molten").getData();
		moltenDefault(fluidData);
	}
	for i,metal in scmetals{
		metal.registerParts(scpartnames);
		var fluidData as MaterialPartData = metal.registerPart("molten").getData();
		moltenDefault(fluidData);
	}
	for i,metal in gearplate{
		metal.registerParts(gearplateparts);}
		
	
function moltenDefault(moltenData as MaterialPartData) {
	moltenData.addDataValue("density", "4000");
	moltenData.addDataValue("viscosity", "3000");
	moltenData.addDataValue("temperature", "1300");
	moltenData.addDataValue("vaporize", "false");
}