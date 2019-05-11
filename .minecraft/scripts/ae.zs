import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

var biomass=<thermalfoundation:material:816>;
val eqGrind as IItemStack[IItemStack]={
	<minecraft:coal:0>:<thermalfoundation:material:768>,
	<minecraft:coal:1>:<thermalfoundation:material:769>
};
for input, output in eqGrind{mods.appliedenergistics2.Grinder.addRecipe(output, input, 3);}

mods.appliedenergistics2.Grinder.addRecipe(<thermalfoundation:material:770>*2, <minecraft:obsidian>, 8);

val biomassGrind as float[IItemStack]={
	<minecraft:pumpkin>:0.2,
	<minecraft:potato>:0.1,
	<minecraft:melon_block>:0.2,
	<minecraft:beetroot>:0.1,
	<minecraft:vine>:0.1,
	<minecraft:cactus>:0.2,
	<minecraft:reeds>:0.1,
	<minecraft:carrot>:0.1,
	<minecraft:waterlily>:0.1,
	<minecraft:wheat>:0.1,
	<minecraft:sapling:0>:0.2,
	<minecraft:sapling:1>:0.2,
	<minecraft:sapling:2>:0.2,
	<minecraft:sapling:3>:0.2,
	<minecraft:sapling:4>:0.2,
	<minecraft:sapling:5>:0.2
};
for plant, weight in biomassGrind{mods.appliedenergistics2.Grinder.addRecipe(<contenttweaker:tiny_biomass>, plant, 2, biomass, weight);}