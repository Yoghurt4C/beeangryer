import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntityAnimal;

var plastic=<hatchery:plastic>;
var feather_meal=<hatchery:feather_meal>;

<ore:egg>.add(<contenttweaker:golden_egg>);
<contenttweaker:golden_egg>.addTooltip(format.italic("Hold SHIFT for details..."));
<contenttweaker:golden_egg>.addShiftTooltip(format.gray("Can be thrown into "+format.darkRed("''Etching'' Acid")+" to skim the ''gold'' off."));

recipes.addShaped("water_bowl_chicken",<contenttweaker:water_bowl_chicken>,[
[<roost:chicken>.withTag({Chicken:"minecraft:chicken"})],
[<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]]);
recipes.addShapeless("snowballchicken_extraction",<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1}),[
	<contenttweaker:bowl_snow_chicken>.giveBack(<minecraft:bowl>)]);
	recipes.addShaped("snowballchicken_insertion",<contenttweaker:bowl_snow_chicken>.withTag({display:{Lore:["Why would you do this?"]}}),[
	[<roost:chicken>.withTag({Chicken:"chickens:snowballchicken"})],
	[<minecraft:bowl>]]);

//no rugrats
mods.jei.JEI.addDescription(<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:smartchicken"}}),
"Try giving a Book to a vanilla chicken. Perharps that'll make it less bird-brained?");
mods.jei.JEI.addDescription(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:smartchicken", Gain: 1, Strength: 1}),
"Try giving a Book to a vanilla chicken. Perharps that'll make it less bird-brained?");
<minecraft:egg>.addTooltip(format.yellow("Place in an "+format.gold(format.underline("Egg Nest"))+" to hatch reliably!"));

game.setLocalization("item.hatchery.circuit_board.name","Organic Circuit Board");
game.setLocalization("item.hatchery.plastic.name","Organic Plastic");
recipes.addShaped("badchickencircuitboard",<hatchery:circuit_board>*1,[
[<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>],
[<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBlue>],
[plastic,plastic,plastic]]);
recipes.addShaped("chickencircuitboard",<hatchery:circuit_board>*3,[
[<uniquecrops:generic:6>,<uniquecrops:generic:6>,<uniquecrops:generic:6>],
[<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBlue>],
[plastic,plastic,plastic]]);

var waterContainer=<minecraft:water_bucket>|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}})|<forestry:can:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).noReturn()|<forestry:capsule:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).noReturn()|<forestry:refractory:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).noReturn()|<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}})|<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).giveBack(<minecraft:bowl>)|<chickens:liquid_egg:0>;
var milkContainer=<minecraft:milk_bucket>|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "milk", Amount: 1000}})|<forestry:can:1>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).noReturn()|<forestry:capsule:1>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).noReturn()|<forestry:refractory:1>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).noReturn()|<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "milk", Amount: 1000}});

recipes.addShapeless("feather_pulp",<hatchery:feather_pulp>*4,[
feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,
waterContainer]);
recipes.addShapeless("sawdust_paper",<minecraft:paper>*2,[
<ore:pulpWood>,<ore:pulpWood>,<ore:pulpWood>,<ore:pulpWood>,waterContainer]);
recipes.addShapeless("feather_meal",feather_meal,[<minecraft:feather>,<minecraft:feather>,<botania:pestleandmortar>.reuse()]);

recipes.remove(<hatchery:nest>);
recipes.addShaped("nest",<hatchery:nest>,[
[<ore:cropWheat>,null,<ore:cropWheat>],
[null,<ore:cropWheat>]]);
recipes.remove(<chickens:henhouse:0>);
recipes.addShaped("henhouse",<chickens:henhouse:0>,[
[<minecraft:planks:0>,<minecraft:planks:0>,<minecraft:planks:0>],
[<minecraft:planks:0>,<minecraft:hay_block>,<minecraft:planks:0>],
[<minecraft:planks:0>,<minecraft:planks:0>,<minecraft:planks:0>]]);
recipes.remove(<roost:collector>);
var henhouse = <chickens:henhouse>|<chickens:henhouse_acacia>|<chickens:henhouse_birch>|<chickens:henhouse_dark_oak>|<chickens:henhouse_jungle>|<chickens:henhouse_spruce>;
recipes.addShaped("collector",<roost:collector>,[
[henhouse],
[<minecraft:hopper>|<tconstruct:wooden_hopper>],
[<roost:roost>]]);

recipes.addShaped("chicken_catcher",<roost:catcher>,[
[null,<hatchery:plastic>,<ore:seed>],
[<minecraft:feather>,<ore:stickWood>,<hatchery:plastic>],
[<ore:stickWood>,<minecraft:feather>,null]]);
  
recipes.addShaped("cake",<minecraft:cake>,[
[milkContainer,milkContainer,milkContainer],
[<minecraft:sugar>,<ore:egg>,<minecraft:sugar>],
[<ore:cropWheat>,<ore:cropWheat>,<ore:cropWheat>]]);
recipes.addShapeless("chicken_analyzer",<chickens:analyzer>,[
<ore:egg>,<minecraft:compass>|<binniecore:field_kit>.anyDamage()]);
recipes.addShaped("lucky_egg_machine",<hatchery:chicken_machine>,[
[<ore:dye>,<ore:plankWood>,<ore:dye>],
[<minecraft:concrete:1>,<ore:egg>,<minecraft:concrete:1>],
[<minecraft:concrete:1>,<hatchery:circuit_board>,<minecraft:concrete:1>]]);

val squeezingChickens ={
	<liquid:liquidchicken>:<minecraft:chicken>
	}as IItemStack[ILiquidStack];
for liquid, chicken in squeezingChickens{
	mods.immersiveengineering.Squeezer.addRecipe(	//ignores nbt
		null, 
		liquid*750, 
		chicken, 
		2400);
	mods.thermalexpansion.Crucible.addRecipe( 	//ignores nbt
		liquid*750, 
		chicken, 
		2400);
	mods.tconstruct.Melting.addRecipe(	//ignores nbt, pathetic
		liquid*750,
		chicken, 
		373);
	mods.forestry.Squeezer.addRecipe(
		liquid*750, 
		[chicken], 
		120, 
		null);
	mods.thermalexpansion.Transposer.addExtractRecipe(
		liquid * 750,
		chicken, 
		2400, 
		null);
	mods.integrateddynamics.Squeezer.addRecipe(
		chicken, 
		null, 1.0F,
		null, 1.0F,
		null, 1.0F,
		liquid*750);
	mods.integrateddynamics.MechanicalSqueezer.addRecipe(
		chicken, 
		null, 1.0F,
		null, 1.0F,
		null, 1.0F,
		liquid*750,120);
}
mods.integrateddynamics.DryingBasin.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1}),  null, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}), null, 
7200);
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}).addTooltip(format.white("Obtained by letting a Water Chicken evaporate."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}).addShiftTooltip(format.white("Takes a "+format.italic("really")+" long time!"));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:honeychicken", Gain: 1, Strength: 1}).addTooltip(format.gold("Obtained by dunking a Chicken"));
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:honeychicken", Gain: 1, Strength: 1}).addTooltip(format.gold("into a full Cauldron of Honey."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:calcitechicken", Gain: 1, Strength: 1}).addTooltip(format.yellow("Obtained by dunking a Chicken"));
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:calcitechicken", Gain: 1, Strength: 1}).addTooltip(format.yellow("into a full Cauldron of Dissolved Egg Shells."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:manurechicken", Gain: 1, Strength: 1}).addTooltip(format.darkGray(format.italic("Obtained by dunking a Chicken")));
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:manurechicken", Gain: 1, Strength: 1}).addTooltip(format.darkGray(format.italic("into a full Cauldron of Liquid Fertilizer.")));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blazechicken", Gain: 1, Strength: 1}).addTooltip(format.gold("Obtained via the Fel Blaze ritual."));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:smartchicken", Gain: 1, Strength: 1}).addTooltip(format.gold("Give a Book to a Chicken."));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1}).addTooltip(format.white("Obtained via the Punished Daisy."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:elementiumchicken", Gain: 1, Strength: 1}).addTooltip(format.lightPurple("Obtained via the Rune Altar."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:goldenhen", Gain: 1, Strength: 1}).addTooltip(format.gold("Obtained via Der Elektrum-Ente."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:manasteelchicken", Gain: 1, Strength: 1}).addTooltip(format.aqua("Obtained via the Odd Pagoda."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:terrasteelchicken", Gain: 1, Strength: 1}).addTooltip(format.aqua("Obtained via Agglomeration."));


val IWCChickens as string[]=[
	"chickens:stringchicken",
	"contenttweaker:rottenchicken",
	"chickens:gunpowderchicken",
	"contenttweaker:bonechicken",
	"chickens:coalchicken",
	"chickens:ironchicken",
	"chickens:goldchicken",
	"chickens:redstonechicken",
	"chickens:glowstonechicken",
	"chickens:lavachicken",
	"chickens:leatherchicken",
	"chickens:soulsandchicken",
	"chickens:netherwartchicken",
	"chickens:diamondchicken",
	"chickens:emeraldchicken",
	"chickens:enderchicken",
	"chickens:ghastchicken",
	"chickens:pshardchicken",
	"chickens:pcrystalchicken",
	"contenttweaker:tinchicken",
	"contenttweaker:copperchicken",
	"contenttweaker:nickelchicken",
	"contenttweaker:aluminiumchicken",
	"contenttweaker:leadchicken",
	"contenttweaker:silverchicken",
	"contenttweaker:platinumchicken",
	"contenttweaker:uraniumchicken",
	"contenttweaker:zincchicken",
	"contenttweaker:enderiumchicken",
	"contenttweaker:lumiumchicken",
	"contenttweaker:signalumchicken",
	"contenttweaker:arditechicken",
	"contenttweaker:cobaltchicken",
	"contenttweaker:pigironchicken",
	"contenttweaker:knightslimechicken",
	"contenttweaker:alumitechicken",
	"contenttweaker:menrilchicken",
	"contenttweaker:certuschicken",
	"contenttweaker:fluixchicken",
	"contenttweaker:reinforcedmetalchicken",
	"contenttweaker:galgadorianchicken",
	"contenttweaker:enhancedgalgadorianchicken"];
val IWCEAChickens as string[]=[
	"contenttweaker:calcprocessorchicken",
	"contenttweaker:logicprocessorchicken",
	"contenttweaker:engiprocessorchicken"];
val TRBFChickens as string[]=[
	"contenttweaker:steelchicken",
	"contenttweaker:titaniumchicken",
	"contenttweaker:chromechicken",
	"contenttweaker:tungstenchicken"];
val TRCRChickens as string[]=[
	"contenttweaker:rubychicken",
	"contenttweaker:sapphirechicken"];
for chicken in IWCChickens{
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addTooltip(format.italic("Hold SHIFT for details..."));
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addShiftTooltip(format.gray("Fused in "+format.gold("Chicken Stock")+" using other Chickens and various materials."));}
for chicken in IWCEAChickens{
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addTooltip(format.italic("Hold SHIFT for details..."));
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addShiftTooltip(format.gray("Fused in "+format.darkRed("''Etching'' Acid")+" using other Chickens."));}
for chicken in TRBFChickens{
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addTooltip(format.italic("Hold SHIFT for details..."));
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addShiftTooltip(format.gray("Alloyed in the "+format.blue("Industrial Blast Furnace")+" using other Chickens."));}
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tungstensteelchicken", Gain: 1, Strength: 1}).addTooltip(format.italic("Hold SHIFT for details..."));
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tungstensteelchicken", Gain: 1, Strength: 1}).addShiftTooltip(format.gray("Hatched from a "+format.aqua("Vacuum Freezer")+"-cooled Tungstensteel Chicken Egg."));
for chicken in TRCRChickens{
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addTooltip(format.italic("Hold SHIFT for details..."));
<roost:chicken>.withTag({Growth: 1, Chicken: chicken, Gain: 1, Strength: 1}).addShiftTooltip(format.gray("Synthesized in the "+format.blue("Chemical Reactor")+"."));}