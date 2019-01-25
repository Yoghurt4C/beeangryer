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
	liquidchicken.register();

var chickenstock=VanillaFactory.createFluid("chickenstock", Color.fromHex("F0B116"));	
	chickenstock.register();

var chocolatemilk=VanillaFactory.createFluid("chocolatemilk", Color.fromHex("453631"));
	chocolatemilk.stillLocation="contenttweaker:blocks/fluid.chocolatemilk.still";
	chocolatemilk.flowingLocation="contenttweaker:blocks/fluid.chocolatemilk.flowing";
	chocolatemilk.colorize=false;
	chocolatemilk.register();