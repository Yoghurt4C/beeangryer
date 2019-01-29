var limestone=<ore:stoneLimestone>;

recipes.addShaped("limestone_furnace",<minecraft:furnace>,[
[limestone,limestone,limestone],
[limestone,null,limestone],
[limestone,limestone,limestone]]);
<minecraft:furnace>.addShiftTooltip(format.	darkPurple(format.italic("How does this thing not melt?..")));

//egg shell dissolving
mods.immersiveengineering.Mixer.addRecipe(<liquid:dissolvedeggshells>*1000, <liquid:water>*1000, [<contenttweaker:firedeggshells>], 2048);
//limestone
mods.tconstruct.Drying.addRecipe(<quark:limestone>,<contenttweaker:soggylime>, 3000);
mods.tconstruct.Casting.addBasinRecipe(<quark:limestone>,<contenttweaker:stonedust>,<liquid:dissolvedeggshells>,250,true,3000);
mods.integrateddynamics.DryingBasin.addRecipe(<contenttweaker:soggylime>,  null, <quark:limestone>, null, 3000);
mods.integrateddynamics.DryingBasin.addRecipe(<contenttweaker:stonedust>,  <liquid:dissolvedeggshells>*250, <quark:limestone>, null, 3000);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<contenttweaker:soggylime>,  null, <quark:limestone>, null, 3000);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<contenttweaker:stonedust>,  <liquid:dissolvedeggshells>*250, <quark:limestone>, null, 3000);