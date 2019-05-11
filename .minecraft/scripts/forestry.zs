import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.forestry.Carpenter;

var ingotCopper=<ore:ingotCopper>;
var ingotTin=<ore:ingotTin>;
var ingotBronze=<ore:ingotBronze>;
var glassOrange=<ore:blockGlassOrange>;
var plateIron=<ore:plateIron>;
var gearIron=<ore:gearIron>;
var scentedGear=<extrabees:misc>;
var royalJelly=<forestry:royal_jelly>;
var beeswax=<forestry:beeswax>;
var pollen=<forestry:pollen>;
var chest=<ore:chestWood>;
var slabWood=<ore:slabWood>;
var plankWood=<ore:plankWood>;
var logWood=<ore:logWood>;
var nsshard=<contenttweaker:nether_star_shard>;

var grafter=<forestry:grafter>.anyDamage().transformDamage(1);
var grafterProven=<forestry:grafter_proven>.anyDamage().transformDamage(1);

/*recipes.replaceAllOccurences(<thermalfoundation:material:257>,<extrabees:misc:0>, <*>.only(function(item) {
    return !isNull(item) & !<thermalexpansion:dynamo:2>.matches(item)& !<thermalexpansion:augment:288>.matches(item)& !<thermalexpansion:augment:432>.matches(item);
}));*/

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
recipes.addShaped("wood_pile",<forestry:wood_pile>,[
[logWood,logWood,logWood],
[logWood,logWood,logWood],
[logWood,logWood,logWood]]);

mods.forestry.Carpenter.removeRecipe(scentedGear);
mods.forestry.Carpenter.addRecipe(scentedGear, [
[null,royalJelly,null],
[beeswax,<ore:plankWood>,beeswax],
[null,pollen,null]],
40, 
<liquid:for.honey> * 500);
mods.forestry.Carpenter.addRecipe(<forestry:habitat_former>, [
[glassOrange,<minecraft:redstone>,glassOrange],
[<forestry:thermionic_tubes:3>,<forestry:sturdy_machine>,<forestry:thermionic_tubes:3>],
[scentedGear,<forestry:chipsets>,scentedGear]],
120, 
<liquid:for.honey> * 1000);
mods.forestry.Carpenter.addRecipe(<minecraft:nether_star>, [
[nsshard,nsshard,nsshard],
[nsshard,<minecraft:ghast_tear>,nsshard],
[nsshard,nsshard,nsshard]],
40, 
<liquid:for.honey> * 250);

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
mods.forestry.Centrifuge.addRecipe(
[<forestry:beeswax>%50,<forestry:honey_drop>%25,
<integrateddynamics:crystalized_menril_chunk>*3%100],
<gendustry:honey_comb:130>,10);

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
<extrabees:honey_drop:8>:<liquid:short.mead>,
<contenttweaker:menril_propolis>:<liquid:menrilresin>
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
mods.integrateddynamics.Squeezer.addRecipe(
drop,
null,
liquid*200);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(
drop,
null,
liquid*200);
}
val propolis as IItemStack[]=[
<forestry:propolis>,
<forestry:propolis:3>,
<extrabees:propolis>,
<extrabees:propolis:1>,
<extrabees:propolis:7>,
<contenttweaker:menril_propolis>];
for item in propolis{<ore:propolis>.add(item);}
recipes.replaceAllOccurences(<forestry:propolis:*>,<ore:propolis>);

val seed=itemUtils.getItemsByRegexRegistryName(".*uniquecrops:seed.*");
for item in seed{
mods.forestry.Squeezer.addRecipe(
<liquid:seed.oil>*10,
[item], 
40,
null);
mods.thermalexpansion.Transposer.addExtractRecipe(
<liquid:seed.oil>*10,
item, 
2400);
mods.immersiveengineering.Squeezer.addRecipe(
null, 
<liquid:seed.oil>*10, 
item, 
2400);
mods.integrateddynamics.Squeezer.addRecipe(
item,
null,
<liquid:seed.oil>*10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(
item,
null,
<liquid:seed.oil>*10);
mods.rustic.CrushingTub.addRecipe(<liquid:seed.oil>*10, null, item);}
val dumbSeeds as IItemStack[]=[
<immersiveengineering:seed>,
<rustic:tomato_seeds>,
<rustic:apple_seeds>,
<rustic:chili_pepper_seeds>];

for dumbseed in dumbSeeds{
mods.integrateddynamics.Squeezer.addRecipe(
dumbseed,
null,
<liquid:seed.oil>*10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(
dumbseed,
null,
<liquid:seed.oil>*10);
mods.rustic.CrushingTub.addRecipe(<liquid:seed.oil>*10, null, dumbseed);}

recipes.addShapeless(<forestry:arboretum>.withTag({display: {Lore: ["Managed!"], Name: "Automated Timber Handler"}}),
[<forestry:arboretum:1>.withTag({display: {Lore: ["Manual!"], Name: "Automated Timber Handler"}})]);
recipes.addShapeless(<forestry:arboretum:1>.withTag({display: {Lore: ["Manual!"], Name: "Automated Timber Handler"}}),
[<forestry:arboretum>.withTag({display: {Lore: ["Managed!"], Name: "Automated Timber Handler"}})]);
<forestry:alveary.plain>.addShiftTooltip(format.italic("The main alveary block."));
<forestry:alveary.plain>.addShiftTooltip(format.italic("Lower 3x2x3 of these can be substituted by modifier blocks."));
<forestry:alveary.swarmer>.addShiftTooltip(format.italic("Creates Swarm Hives by using Royal Jelly."));
<forestry:alveary.fan>.addShiftTooltip(format.italic("Used to simulate a colder climate, Stacks, needs power."));
<forestry:alveary.heater>.addShiftTooltip(format.italic("Used to simulate a warmer climate. Stacks, needs power."));
<forestry:alveary.hygro>.addShiftTooltip(format.italic("Used to influence the humidity of the Alveary. Supplied with fluids."));
<forestry:alveary.hygro>.addShiftTooltip(format.italic("Water: -10% Temperature, +20% Humidity"));
<forestry:alveary.hygro>.addShiftTooltip(format.italic("Lava: +10% Temperature, -20% Humidity"));
<forestry:alveary.stabiliser>.addShiftTooltip(format.italic("Prevents new species from appearing; existing alleles still change."));
<forestry:alveary.sieve>.addShiftTooltip(format.italic("Suppresses passive pollination, instead storing"));
<forestry:alveary.sieve>.addShiftTooltip(format.italic("pollen in itself. Needs Woven Silk to function."));
//binnie
game.setLocalization("extrabees.alveay.frame","Alveary Frame Housing");
game.setLocalization("extrabees.alveay.mutator","Alveary Mutator");
game.setLocalization("extrabees.alveay.rainShield","Alveary Rain Shield");
game.setLocalization("extrabees.alveay.stimulator","Alveary Electrical Stimulator");
game.setLocalization("extrabees.alveay.hatchery","Alveary Hatchery");
//gendustry zone
game.setLocalization("tile.gendustry.mutatron_advanced.name","Advanced Mutatron");
