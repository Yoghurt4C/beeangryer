import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntityAnimal;

var plastic=<hatchery:plastic>;
var feather_meal=<hatchery:feather_meal>;

<ore:egg>.add(<contenttweaker:golden_egg>);
recipes.replaceAllOccurences(<minecraft:egg>,<ore:egg>);

recipes.addShaped("water_bowl_chicken",<contenttweaker:water_bowl_chicken>,[
[<roost:chicken>.withTag({Chicken:"minecraft:chicken"})],
[<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]]);

//no rugrats
mods.jei.JEI.addDescription(<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:smartchicken"}}),
"Try giving a Book to a vanilla chicken. Perharps that'll make it less bird-brained?");
mods.jei.JEI.addDescription(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:smartchicken", Gain: 1, Strength: 1}),
"Try giving a Book to a vanilla chicken. Perharps that'll make it less bird-brained?");
<minecraft:egg>.addTooltip(format.yellow("Place in an "+format.gold(format.underline("Egg Nest"))+" to hatch reliably!"));

game.setLocalization("item.hatchery.circuit_board.name","Organic Circuit Board");
game.setLocalization("item.hatchery.plastic.name","Organic Plastic");
recipes.addShaped("chickencircuitboard",<hatchery:circuit_board>*2,[
[<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>],
[<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBlue>],
[plastic,plastic,plastic]]);

//feather processing
mods.thermalexpansion.Pulverizer.addRecipe(<hatchery:feather_fiber>, 
<minecraft:feather>, 
1500, 
feather_meal, 25);
mods.immersiveengineering.Crusher.addRecipe(<hatchery:feather_fiber>, 
<minecraft:feather>, 
1500, 
feather_meal, 0.25);
mods.techreborn.grinder.addRecipe(<hatchery:feather_fiber>*2,
<minecraft:feather>, 
75, 20);
mods.appliedenergistics2.Grinder.addRecipe(<hatchery:feather_fiber>, 
<minecraft:feather>, 
3, 
feather_meal, 0.25);
mods.thermalexpansion.Pulverizer.addRecipe(feather_meal, 
<hatchery:feather_fiber>, 
1500);
mods.immersiveengineering.Crusher.addRecipe(feather_meal, 
<hatchery:feather_fiber>, 
1500);
mods.techreborn.grinder.addRecipe(feather_meal,
<hatchery:feather_fiber>, 
75, 20);
mods.appliedenergistics2.Grinder.addRecipe(feather_meal, 
<hatchery:feather_fiber>, 
3);

recipes.addShapeless(<hatchery:feather_pulp>*4,[
feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,
<minecraft:water_bucket>]);
recipes.addShapeless(<hatchery:feather_pulp>*4,[
feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,
<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}})]);
recipes.addShapeless(<hatchery:feather_pulp>*4,[
feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,
<forestry:can:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).noReturn()]);
recipes.addShapeless(<hatchery:feather_pulp>*4,[
feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,
<forestry:capsule:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).noReturn()]);
recipes.addShapeless(<hatchery:feather_pulp>*4,[
feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,
<forestry:refractory:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).noReturn()]);
recipes.addShapeless(<hatchery:feather_pulp>*4,[
feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,feather_meal,
<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);


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

recipes.addShaped("chicken_catcher",<roost:catcher>,[
[<hatchery:plastic>,<ore:seed>,<hatchery:plastic>],
[<minecraft:feather>,<ore:stickWood>,<minecraft:feather>],
[null,<ore:stickWood>,null]]);
  
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
mods.integrateddynamics.DryingBasin.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1}),  null, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}), null, 
7200);
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}).addTooltip(format.white("Obtained by letting a "+format.underline("Water Chicken")+" evaporate."));
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}).addShiftTooltip(format.white("Takes a "+format.italic("really")+" long time!"));


events.onPlayerInteractEntity(function(event as crafttweaker.event.PlayerInteractEntityEvent){
    if (<item:contenttweaker:crushedeggshells> has event.player.currentItem & <entity:minecraft:chicken>.id has event.target.definition.id | <entity:chickens:chickenschicken>.id has event.target.definition.id){
				var tarChicken as IEntityAnimal=event.target;
				tarChicken.setInLove();
				event.player.currentItem.transformConsume(1);
	}
});