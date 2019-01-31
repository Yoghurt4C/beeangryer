import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.forestry.Carpenter;

var ingotCopper=<ore:ingotCopper>;
var ingotTin=<ore:ingotTin>;
var ingotBronze=<ore:ingotBronze>;
var glassOrange=<ore:blockGlassOrange>;
var plateIron=<ore:plateIron>;
var gearIron=<ore:gearIron>;
var modularium=<modularmachinery:itemmodularium>;
var scentedGear=<extrabees:misc>;
var royalJelly=<forestry:royal_jelly>;
var beeswax=<forestry:beeswax>;
var pollen=<forestry:pollen>;
var chest=<ore:chestWood>;
var slabWood=<ore:slabWood>;
var plankWood=<ore:plankWood>;

var grafter=<forestry:grafter>.anyDamage().transformDamage(1);
var grafterProven=<forestry:grafter_proven>.anyDamage().transformDamage(1);


recipes.replaceAllOccurences(<thermalfoundation:material:257>,<extrabees:misc:0>, <*>.only(function(item) {
    return !isNull(item) & !<thermalexpansion:dynamo:2>.matches(item)& !<thermalexpansion:augment:288>.matches(item)& !<thermalexpansion:augment:432>.matches(item);
}));

//forestry
recipes.addShaped(<forestry:bee_house>,[
[slabWood,slabWood,slabWood],
[plankWood,null,plankWood],
[plankWood,plankWood,plankWood]]);
recipes.addShaped(<forestry:sturdy_machine>,[
[ingotBronze,ingotBronze,ingotBronze],
[ingotBronze,<forestry:beeswax>,ingotBronze],
[ingotBronze,ingotBronze,ingotBronze]]);
recipes.addShaped(<forestry:carpenter>,[
[ingotBronze,glassOrange,ingotBronze],
[ingotBronze,<forestry:sturdy_machine>,ingotBronze],
[ingotBronze,glassOrange,ingotBronze]]);
recipes.addShaped(<forestry:squeezer>,[
[ingotTin,glassOrange,ingotTin],
[ingotTin,<forestry:sturdy_machine>,ingotTin],
[ingotTin,glassOrange,ingotTin]]);
recipes.addShaped(<forestry:centrifuge>,[
[ingotCopper,glassOrange,ingotCopper],
[ingotCopper,<forestry:sturdy_machine>,ingotCopper],
[ingotCopper,glassOrange,ingotCopper]]);
recipes.addShaped(<forestry:fabricator>,[
[<ore:ingotGold>,glassOrange,<ore:ingotGold>],
[glassOrange,<forestry:sturdy_machine>,glassOrange],
[<ore:ingotGold>,chest,<ore:ingotGold>]]);
recipes.addShaped(<genetics:misc>,[
[gearIron,plateIron,gearIron],
[plateIron,<forestry:sturdy_machine>,plateIron],
[gearIron,plateIron,gearIron]]);
recipes.addShaped(<forestry:grafter_proven>,[
[null,null,<ore:ingotIridium>],
[null,<ore:stickWood>,null],
[<ore:stickWood>,null,null]]);
recipes.addShaped(<binniecore:storage>,[
[<minecraft:stone_button>,chest,<minecraft:stone_button>],
[chest,<minecraft:book>,chest],
[<minecraft:stone_button>,chest,<minecraft:stone_button>]]);

mods.forestry.Carpenter.removeRecipe(scentedGear);
mods.forestry.Carpenter.addRecipe(scentedGear, [
[null,royalJelly,null],
[beeswax,<ore:plankWood>,beeswax],
[null,pollen,null]],
40, 
<liquid:for.honey> * 500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:itemmodularium>*5, [
[<ore:ingotSignalum>,ingotBronze,<ore:ingotSignalum>],
[ingotBronze,<minecraft:redstone>,ingotBronze],
[<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:redstone>]],
40, 
<liquid:for.honey> * 200);
mods.forestry.Carpenter.addRecipe(<modulardiversity:blockmanainputhatch>, [
[modularium,<botania:manadetector>,modularium],
[modularium,<botania:manaresource:1>,modularium],
[modularium,<botania:pool>,modularium]],
120, 
<liquid:for.honey> * 1000);
mods.forestry.Carpenter.addRecipe(<forestry:habitat_former>, [
[glassOrange,<minecraft:redstone>,glassOrange],
[<forestry:thermionic_tubes:3>,<forestry:sturdy_machine>,<forestry:thermionic_tubes:3>],
[scentedGear,<forestry:chipsets>,scentedGear]],
120, 
<liquid:for.honey> * 1000);

mods.forestry.ThermionicFabricator.removeCast(<minecraft:stained_glass:1>*4);
mods.forestry.ThermionicFabricator.addCast(<minecraft:stained_glass:1>*4, [
[null,<forestry:honey_drop>,null],
[null,<forestry:propolis:*>,null],
[null,null,null]],
<liquid: glass> * 1000,
<forestry:wax_cast>);
mods.forestry.ThermionicFabricator.addCast(<minecraft:stained_glass:1>*4, [
[null,<extrabees:honey_drop:20>,null],
[null,<forestry:propolis:*>,null],
[null,null,null]],
<liquid: glass> * 1000,
<forestry:wax_cast>);
mods.forestry.ThermionicFabricator.addCast(<minecraft:stained_glass:1>*4, [
[null,<gendustry:honey_drop:24>,null],
[null,<forestry:propolis:*>,null],
[null,null,null]],
<liquid: glass> * 1000,
<forestry:wax_cast>);
//ticon glass because lol

mods.forestry.Centrifuge.removeRecipe(<extrabees:honey_comb:11>);
mods.forestry.Centrifuge.addRecipe(
[<forestry:beeswax>%50,<forestry:honey_drop>%25,<minecraft:stone>%100],
<extrabees:honey_comb:11>,
10);
mods.thermalexpansion.Centrifuge.removeRecipe(<extrabees:honey_comb:11>);
mods.thermalexpansion.Centrifuge.addRecipe(
[<forestry:beeswax>%50,<forestry:honey_drop>%25,<minecraft:stone>%100],
<extrabees:honey_comb:11>,
null,
2000);

mods.forestry.Centrifuge.removeRecipe(<extrabees:honey_comb:24>);
mods.forestry.Centrifuge.addRecipe(
[<minecraft:brown_mushroom>%100,<minecraft:red_mushroom>%75,<forestry:beeswax>%90],
<extrabees:honey_comb:24>,
10);
mods.thermalexpansion.Centrifuge.removeRecipe(<extrabees:honey_comb:24>);
mods.thermalexpansion.Centrifuge.addRecipe(
[<minecraft:brown_mushroom>%100,<minecraft:red_mushroom>%75,<forestry:beeswax>%90],
<extrabees:honey_comb:24>,
null,
2000);
mods.forestry.Squeezer.removeRecipe(<liquid:juice>,[<extrabees:honey_drop:3>]);
mods.forestry.Squeezer.removeRecipe(<liquid:milk>,[<extrabees:honey_drop:6>]);
mods.forestry.Squeezer.removeRecipe(<liquid:short.mead>,[<extrabees:honey_drop:8>]);
val forDropArray={
<extrabees:honey_drop:0>:<liquid:redstone>,
<extrabees:honey_drop:1>:<liquid:fluidsulfuricacid>,
<extrabees:honey_drop:3>:<liquid:juice>,
<extrabees:honey_drop:5>:<liquid:cryotheum>,
<extrabees:honey_drop:6>:<liquid:milk>,
<extrabees:honey_drop:7>:<liquid:seed.oil>,
<extrabees:honey_drop:8>:<liquid:short.mead>
} as ILiquidStack[IItemStack];
//mods.forestry.Squeezer.addRecipe(ILiquidStack fluidOutput, IItemStack[] ingredients, int timePerItem, @Optional WeightedItemStack itemOutput);
//mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy);
//mods.immersiveengineering.Squeezer.addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy);
for drop, liquid in forDropArray{
mods.forestry.Squeezer.addRecipe(
liquid*200,
[drop], 
40,
null);
mods.thermalexpansion.Transposer.addExtractRecipe(
liquid*200,
drop, 
2400);
mods.immersiveengineering.Squeezer.addRecipe(
null, 
liquid*200, 
 drop, 
2400);
}
