import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;

var nuggetCopper=<ore:nuggetCopper>;
var nuggetTin=<ore:nuggetTin>;
var ingotCopper=<ore:ingotCopper>;
var ingotTin=<ore:ingotTin>;
var ingotBronze=<ore:ingotBronze>;
var plateIron=<ore:plateIron>;
var gearIron=<thermalfoundation:material:24>;

Pulverizer.removeRecipe(<thermaldynamics:duct_16>);
Pulverizer.removeRecipe(<thermaldynamics:duct_16:1>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0:1>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:iron_bars>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:rail>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:golden_rail>);