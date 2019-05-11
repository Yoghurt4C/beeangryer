import crafttweaker.item.IItemStack;

for seed in <ore:seed>.items{mods.rustic.CrushingTub.addRecipe(<liquid:seed.oil>*10, null, seed);}

<rustic:grape_stem>.addTooltip(format.green("Rarely harvested from "+format.italic("Vines")+" by using"));
<rustic:grape_stem>.addTooltip(format.green("Hoes(Iron/Diamond), Mattocks and Kamas"));

<contenttweaker:plunger>.addTooltip(format.darkPurple(format.italic("The tag somehow has ''Turns your Squeezers")));
<contenttweaker:plunger>.addTooltip(format.darkPurple(format.italic("into Crushing Tubs!'' written on it.")));
<contenttweaker:plunger>.addShiftTooltip(format.darkPurple(format.italic("The other side of the tag simply reads ''25¢''.")));

game.setLocalization("item.rustic.honeycomb.name","Deviate Honeycomb");
game.setLocalization("item.rustic.beeswax.name","Deviate Beeswax");
game.setLocalization("tile.rustic.honey.name","Unwonted Honey");
game.setLocalization("fluid.honey","Unwonted Honey");
game.setLocalization("fluid.mead","Aberrant Mead");
furnace.addRecipe(<rustic:beeswax>,<forestry:beeswax>,0.1);

val vanillaferns=[
<minecraft:tallgrass:1>,
<minecraft:tallgrass:2>,
<minecraft:vine>,
<minecraft:brown_mushroom>,
<minecraft:red_mushroom>,
<quark:glowshroom>] as IItemStack[];
val ferns=[
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
for fern in ferns{
<ore:rusticFlora>.add(fern);
mods.jei.JEI.addDescription(fern,["You can obtain some exotic flora by using Mutandis on ''tall'' Grass."]);}
for fern in vanillaferns{
mods.jei.JEI.addDescription(fern,["You can obtain some exotic flora by using Mutandis on ''tall'' Grass."]);}

val saplings=[
<minecraft:sapling>,
<minecraft:sapling:1>,
<minecraft:sapling:2>,
<minecraft:sapling:3>,
<minecraft:sapling:4>,
<minecraft:sapling:5>,
<rustic:sapling>,<rustic:sapling:1>,
<rustic:wildberry_bush>]as IItemStack[];
for sapling in saplings{mods.jei.JEI.addDescription(sapling,["You can obtain some exotic flora by using Mutandis on Saplings."]);}
