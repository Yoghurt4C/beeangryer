import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.MechanicalDryingBasin;

var menrilresin=<liquid:menrilresin>;
var menril_berries=<integrateddynamics:menril_berries>;
var menril_propolis=<contenttweaker:menril_propolis>;

recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>,[
[<ore:stickWood>,<minecraft:stone_slab>,<ore:stickWood>],
[<ore:stickWood>,null,<ore:stickWood>],
[<ore:plankWood>,<minecraft:stone_slab>,<ore:plankWood>]]);

for comb in <ore:beeComb>.items {
Squeezer.addRecipe(comb,null,<liquid:for.honey>*50);
MechanicalSqueezer.addRecipe(comb,null,<liquid:for.honey>*50);
DryingBasin.addRecipe(comb,null,<forestry:beeswax>,null);
MechanicalDryingBasin.addRecipe(comb,null,<forestry:beeswax>,null);
}
DryingBasin.addRecipe(<minecraft:glass>,<liquid:for.honey>*100,<minecraft:stained_glass:1>,null);
MechanicalDryingBasin.addRecipe(<minecraft:glass>,<liquid:for.honey>*100,<minecraft:stained_glass:1>,null);
DryingBasin.addRecipe(<tconstruct:clear_glass>,<liquid:for.honey>*100,<tconstruct:clear_stained_glass:1>,null);
MechanicalDryingBasin.addRecipe(<tconstruct:clear_glass>,<liquid:for.honey>*100,<tconstruct:clear_stained_glass:1>,null);

Squeezer.removeRecipesWithOutput(<minecraft:flint>,1.00,<minecraft:flint>,0.50);
Squeezer.addRecipe(<minecraft:gravel>,<minecraft:flint>,1.00,<minecraft:sand>,0.25);

mods.forestry.Squeezer.addRecipe(
menrilresin*100,
[menril_berries], 
40,
null);
mods.thermalexpansion.Transposer.addExtractRecipe(
menrilresin*100,
menril_berries, 
2400);
mods.immersiveengineering.Squeezer.addRecipe(
null, 
menrilresin*100, 
menril_berries, 
2400);
Squeezer.addRecipe(
menril_berries,
null,
menrilresin*100);
MechanicalSqueezer.addRecipe(
menril_berries,
null,
menrilresin*100);

DryingBasin.addRecipe(<minecraft:log:*>,menrilresin*1000,<integrateddynamics:menril_log>,null);
MechanicalDryingBasin.addRecipe(<minecraft:log:*>,menrilresin*1000,<integrateddynamics:menril_log>,null);
DryingBasin.addRecipe(<minecraft:leaves:*>,menrilresin*100,<integrateddynamics:menril_leaves>,null);
MechanicalDryingBasin.addRecipe(<minecraft:leaves:*>,menrilresin*100,<integrateddynamics:menril_leaves>,null);