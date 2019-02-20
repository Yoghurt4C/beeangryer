import crafttweaker.item.IItemStack;

var limestone=<ore:stoneLimestone>;
var plastic=<hatchery:plastic>;
var circuitOrganic=<hatchery:circuit_board>;
var monitor=<techreborn:part:24>;
recipes.addShaped("firestarter",<contenttweaker:firestarter>,[
[null,<ore:stickWood>],
[<ore:stickWood>,<minecraft:wheat>]]);
<contenttweaker:firestarter>.addTooltip(format.red(format.italic("Very cheap flint and steel alternative.")));
<contenttweaker:firestarter>.addShiftTooltip(format.red(format.italic("Not very reliable.")));
<quark:charcoal_block>.addTooltip(format.red(format.italic("Burns forever, like netherrack!")));
recipes.addShaped("salt_block",<contenttweaker:salt_block>,[
[<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,<contenttweaker:salt_cube>],
[<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,<contenttweaker:salt_cube>],
[<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,<contenttweaker:salt_cube>]]);

recipes.addShaped("brimstone",<quark:biome_cobblestone>*8,[
[<ore:cobblestone>,<botania:quartz:2>],
[<botania:quartz:2>,<ore:cobblestone>]]);
recipes.addShaped("permafrost",<quark:biome_cobblestone:1>*8,[
[<ore:cobblestone>,<forestry:pollen:1>],
[<forestry:pollen:1>,<ore:cobblestone>]]);

recipes.addShaped("ash_brick",<forestry:ash_brick>*3,[
[<ore:dustAsh>,<ore:dustClay>,<ore:dustAsh>],
[<ore:dustClay>,null,<ore:dustClay>],
[<ore:dustAsh>,<ore:dustClay>,<ore:dustAsh>]]);
recipes.addShaped("limestone_furnace",<minecraft:furnace>,[
[limestone,limestone,limestone],
[limestone,null,limestone],
[limestone,limestone,limestone]]);
<minecraft:furnace>.addShiftTooltip(format.	darkPurple(format.italic("How does this thing not melt?..")));
recipes.addShaped("template_manager",<buildinggadgets:templatemanager>,[
[plastic,monitor,plastic],
[plastic,circuitOrganic,plastic],
[plastic,<tconstruct:tooltables:4>,plastic]]);
recipes.addShaped("building_gadget",<buildinggadgets:buildingtool>.withTag({mode: "BuildToMe", blockstate: {Name: "minecraft:air"}}),[
[plastic,circuitOrganic,plastic],
[<ore:dyeBlue>,monitor,<ore:dyeBlue>],
[plastic,<ore:buttonWood>,plastic]]);
recipes.addShaped("exchanging_gadget",<buildinggadgets:exchangertool>.withTag({mode: "Surface", range: 1, blockstate: {Name: "minecraft:air"}}),[
[plastic,<ore:dyeGreen>,plastic],
[circuitOrganic,monitor,<ore:dyeGreen>],
[plastic,<ore:buttonWood>,plastic]]);
recipes.addShaped("copy_paste_gadget",<buildinggadgets:copypastetool>.withTag({mode: "Copy"}),[
[plastic,monitor,plastic],
[<ore:dyeRed>,<ore:buttonWood>,<ore:dyeRed>],
[plastic,circuitOrganic,plastic]]);
recipes.addShaped("destruction_gadget",<buildinggadgets:destructiontool>.withTag({overlay: 1 as byte, fuzzy: 1 as byte}),[
[<ore:dyeYellow>,monitor,plastic],
[<ore:dyeBlack>,circuitOrganic,plastic],
[<ore:dyeYellow>,<minecraft:stone_button>,plastic]]);

furnace.addRecipe(<contenttweaker:firedeggshells>,<contenttweaker:eggshells>,0.1);
//egg shell dissolving
mods.immersiveengineering.Mixer.addRecipe(<liquid:dissolvedeggshells>*1000, <liquid:water>*1000, [<contenttweaker:firedeggshells>], 2048);
//limestone
mods.tconstruct.Drying.addRecipe(<quark:limestone>,<contenttweaker:soggylime>, 1300);
mods.tconstruct.Casting.addBasinRecipe(<quark:limestone>,<techreborn:dust:12>,<liquid:dissolvedeggshells>,250,true,2000);
mods.integrateddynamics.DryingBasin.addRecipe(<contenttweaker:soggylime>,  null, <quark:limestone>, null, 1300);
mods.integrateddynamics.DryingBasin.addRecipe(<techreborn:dust:12>,  <liquid:dissolvedeggshells>*250, <quark:limestone>, null, 1300);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<contenttweaker:soggylime>,  null, <quark:limestone>, null, 1300);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<techreborn:dust:12>,  <liquid:dissolvedeggshells>*250, <quark:limestone>, null, 1300);

recipes.addShaped("cogwheel_grindstone",<appliedenergistics2:grindstone>,[
[<ore:stone>,<ore:gearWood>,<ore:stone>],
[<ore:gearStone>,<ore:stone>,<ore:gearStone>],
[<ore:cobblestone>,<ore:gearStone>,<ore:cobblestone>]]);
game.setLocalization("tile.appliedenergistics2.grindstone.name","Cogwheel Grindstone");

mods.jei.JEI.addDescription(<quark:limestone>,[
"How to obtain Limestone early on:
1. Pan sand for Egg Shells,
2. Make them spend some time in heat,
3. Put the Fired Egg Shells into a Water-filled Crucible,
4. Mix in some Clay Dust,
5. Put the mixture somewhere it can dry up.

This instruction is mirrored on the Soggy Lime tooltip."]);