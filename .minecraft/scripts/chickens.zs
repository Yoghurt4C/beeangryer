import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

var plastic=<hatchery:plastic>;

//no rugrats
mods.jei.JEI.addDescription(<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:smartchicken"}}),
"Try giving a Book to a vanilla chicken. Perharps that'll make it less bird-brained?");
mods.jei.JEI.addDescription(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:smartchicken", Gain: 1, Strength: 1}),
"Try giving a Book to a vanilla chicken. Perharps that'll make it less bird-brained?");
<minecraft:egg>.addTooltip(format.yellow("Place in an "+format.gold(format.underline("Egg Nest"))+" to hatch reliably!"));

game.setLocalization("item.hatchery.circuit_board.name","Organic Circuit Board");
recipes.addShaped("chickencircuitboard",<hatchery:circuit_board>*2,[
[<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>],
[<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBlue>],
[plastic,plastic,plastic]]);

recipes.remove(<hatchery:nest>);
recipes.addShaped(<hatchery:nest>,[
[<ore:cropWheat>,null,<ore:cropWheat>],
[null,<ore:cropWheat>]]);
recipes.remove(<chickens:henhouse>);
recipes.addShaped(<chickens:henhouse>, [
  [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
  [<minecraft:planks>, <minecraft:hay_block:*>, <minecraft:planks>],
  [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
]);

recipes.addShaped(<chickens:spawn_egg>.withTag({
  ChickenType: {id: "chickens:flintchicken"}}), [
  [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
  [<minecraft:flint>, <minecraft:egg>, <minecraft:flint>],
  [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>]]);

recipes.addShaped(<chickens:spawn_egg>.withTag({
  ChickenType: {id: "chickens:sandchicken"}}), [
  [<ore:sand>, <ore:sand>, <ore:sand>],
  [<ore:sand>, <minecraft:egg>, <ore:sand>],
  [<ore:sand>, <ore:sand>, <ore:sand>]]);

recipes.addShaped(<chickens:spawn_egg>.withTag({
  ChickenType: {id: "chickens:logchicken"}}), [
  [<ore:logWood>, <ore:logWood>, <ore:logWood>],
  [<ore:logWood>, <minecraft:egg>, <ore:logWood>],
  [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

recipes.addShaped(<chickens:spawn_egg>.withTag({
  ChickenType: {id: "chickens:soulsandchicken"}}), [
  [<ore:soulSand>, <ore:soulSand>, <ore:soulSand>],
  [<ore:soulSand>, <minecraft:egg>, <ore:soulSand>],
  [<ore:soulSand>, <ore:soulSand>, <ore:soulSand>]]);
  
 val squeezingChickens ={
	<liquid:fluidsilicon>:<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1})
	
}as IItemStack[ILiquidStack];
for liquid, chicken in squeezingChickens{
//	mods.immersiveengineering.Squeezer.addRecipe(	//ignores nbt
//		<hatchery:feather_pulp>, 
//		liquid*250, 
//		chicken, 
//		2400);
//	mods.thermalexpansion.Crucible.addRecipe( 	/ignores nbt
//		liquid*250, 
//		chicken, 
//		2400);
//	mods.tconstruct.Melting.addRecipe(	//ignores nbt, pathetic
//		liquid*250,
//		chicken, 
//		1500);
	mods.forestry.Squeezer.addRecipe(
		liquid*250, 
		[chicken], 
		120, 
		<minecraft:feather>%10);
	mods.thermalexpansion.Transposer.addExtractRecipe(
		liquid * 250,
		chicken, 
		2400, 
		<minecraft:feather> % 10);
	mods.integrateddynamics.Squeezer.addRecipe(
		chicken, 
		<minecraft:feather>, 0.1F,
		null, 1.0F,
		null, 1.0F,
		liquid*250);
	mods.integrateddynamics.MechanicalSqueezer.addRecipe(
		chicken, 
		<minecraft:feather>, 0.1F,
		null, 1.0F,
		null, 1.0F,
		liquid*250,120);
}

mods.botania.Apothecary.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}),[
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rubychicken", Gain: 1, Strength: 1})
]);