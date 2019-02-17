import crafttweaker.item.IItemStack;

var limestone=<ore:stoneLimestone>;
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

recipes.addShaped("limestone_furnace",<minecraft:furnace>,[
[limestone,limestone,limestone],
[limestone,null,limestone],
[limestone,limestone,limestone]]);
<minecraft:furnace>.addShiftTooltip(format.	darkPurple(format.italic("How does this thing not melt?..")));

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

mods.jei.JEI.addDescription(<quark:limestone>,[
"How to obtain Limestone early on:
1. Pan sand for Egg Shells,
2. Make them spend some time in heat,
3. Put the Fired Egg Shells into a Water-filled Crucible,
4. Mix in some Clay Dust,
5. Put the mixture somewhere it can dry up.

This instruction is mirrored on the Soggy Lime tooltip."]);