import crafttweaker.item.IItemStack;

recipes.addShaped("stonebound_crushing_tub",<rustic:crushing_tub>.withTag({display:{Name:"Stone-bound Crushing Tub"}}),[
[<ore:slabWood>,null,<ore:slabWood>],
[<ore:rodStone>,null,<ore:rodStone>],
[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]]);

for seed in <ore:seed>.items{mods.rustic.CrushingTub.addRecipe(<liquid:seed.oil>*10, null, seed);}

<rustic:grape_stem>.addTooltip(format.green("Rarely harvested from "+format.italic("Vines")+" by using"));
<rustic:grape_stem>.addTooltip(format.green("Hoes(Iron/Diamond), Mattocks and Kamas"));

game.setLocalization("item.rustic.honeycomb.name","Deviate Honeycomb");
game.setLocalization("item.rustic.beeswax.name","Deviate Beeswax");
game.setLocalization("tile.rustic.honey.name","Unwonted Honey");
game.setLocalization("fluid.honey","Unwonted Honey");
furnace.addRecipe(<rustic:beeswax>,<forestry:beeswax>,0.1);

val ferns=[
<minecraft:tallgrass:1>,
<minecraft:tallgrass:2>,
<minecraft:vine>,
<rustic:aloe_vera>,
<rustic:blood_orchid>,
<rustic:chamomile>,
<rustic:cohosh>,
<rustic:deathstalk_mushroom>,
<rustic:horsetail>,
<rustic:mooncap_mushroom>,
<rustic:wind_thistle>,
<rustic:cloudsbluff>,
<rustic:core_root>,
<rustic:ginseng>,
<rustic:marsh_mallow>]as IItemStack[];
for fern in ferns{mods.jei.JEI.addDescription(fern,["You can obtain some exotic flora by using Mutandis on ''tall'' Grass."]);}

val saplings=[
<minecraft:sapling>,
<minecraft:sapling:1>,
<minecraft:sapling:2>,
<minecraft:sapling:3>,
<minecraft:sapling:4>,
<minecraft:sapling:5>,
<rustic:sapling>,<rustic:sapling:1>]as IItemStack[];
for sapling in saplings{mods.jei.JEI.addDescription(sapling,["You can obtain some exotic flora by using Mutandis on Saplings"]);}