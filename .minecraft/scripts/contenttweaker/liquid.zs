#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//var zsFluid = VanillaFactory.createFluid("zs_fluid", Color.fromHex("FF69B4"));
//	zsFluid.fillSound = <soundevent:block.anvil.place>;
//	zsFluid.register();

var liquidchicken=VanillaFactory.createFluid("liquidchicken", Color.fromHex("E7BCBB"));
	liquidchicken.stillLocation="contenttweaker:blocks/fluid.liquidchicken.still";
	liquidchicken.flowingLocation="contenttweaker:blocks/fluid.liquidchicken.flowing";
	liquidchicken.colorize=false;
	liquidchicken.density=2000;
	liquidchicken.viscosity=10000;
	liquidchicken.register();

var chickenstock=VanillaFactory.createFluid("chickenstock", Color.fromHex("F0B116"));	
	chickenstock.register();

var chocolatemilk=VanillaFactory.createFluid("chocolatemilk", Color.fromHex("453631"));
	chocolatemilk.stillLocation="contenttweaker:blocks/fluid.chocolatemilk.still";
	chocolatemilk.flowingLocation="contenttweaker:blocks/fluid.chocolatemilk.flowing";
	chocolatemilk.colorize=false;
	chocolatemilk.register();

var saplingslumgullion=VanillaFactory.createFluid("saplingslumgullion", Color.fromHex("ADBFB3"));	
	saplingslumgullion.register();	
	
var excitedsaplingslumgullion=VanillaFactory.createFluid("excitedsaplingslumgullion", Color.fromHex("95B59F"));	
	excitedsaplingslumgullion.register();
	
var enrichedexcitedsaplingslumgullion=VanillaFactory.createFluid("enrichedexcitedsaplingslumgullion", Color.fromHex("5D7C67"));	
	enrichedexcitedsaplingslumgullion.register();
	
var dissolvedeggshells=VanillaFactory.createFluid("dissolvedeggshells", Color.fromHex("DBDBDB"));	
	dissolvedeggshells.register();
	
var titanium=VanillaFactory.createFluid("titanium", Color.fromHex("DCA0F0"));
	titanium.stillLocation="contenttweaker:blocks/molten_metal.still";
	titanium.flowingLocation="contenttweaker:blocks/molten_metal.flowing";
	titanium.colorize=true;
	titanium.material=<blockmaterial:lava>;
	titanium.register();
	
var chrome=VanillaFactory.createFluid("chrome", Color.fromHex("FFAAAB"));
	chrome.stillLocation="contenttweaker:blocks/molten_metal.still";
	chrome.flowingLocation="contenttweaker:blocks/molten_metal.flowing";
	chrome.colorize=true;
	chrome.material=<blockmaterial:lava>;
	chrome.register();
	
var tungsten=VanillaFactory.createFluid("tungsten", Color.fromHex("323232"));
	tungsten.stillLocation="contenttweaker:blocks/molten_metal.still";
	tungsten.flowingLocation="contenttweaker:blocks/molten_metal.flowing";
	tungsten.colorize=true;
	tungsten.material=<blockmaterial:lava>;
	tungsten.register();

var tungstensteel=VanillaFactory.createFluid("tungstensteel", Color.fromHex("6464A0"));
	tungstensteel.stillLocation="contenttweaker:blocks/molten_metal.still";
	tungstensteel.flowingLocation="contenttweaker:blocks/molten_metal.flowing";
	tungstensteel.colorize=true;
	tungstensteel.material=<blockmaterial:lava>;
	tungstensteel.register();