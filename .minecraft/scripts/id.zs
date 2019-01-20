import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.MechanicalDryingBasin;

recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>,[
[<ore:stickWood>,<minecraft:stone_slab>,<ore:stickWood>],
[<ore:stickWood>,null,<ore:stickWood>],
[<ore:plankWood>,<minecraft:stone_slab>,<ore:plankWood>]]);

for comb in <ore:beeComb>.items {
Squeezer.addRecipe(comb,null,<liquid:for.honey>*50);
MechanicalSqueezer.addRecipe(comb,null,<liquid:for.honey>*50);
DryingBasin.addRecipe(<minecraft:glass>,<liquid:for.honey>*100,<minecraft:stained_glass:1>,null);
MechanicalDryingBasin.addRecipe(<minecraft:glass>,<liquid:for.honey>*100,<minecraft:stained_glass:1>,null);
DryingBasin.addRecipe(<tconstruct:clear_glass>,<liquid:for.honey>*100,<tconstruct:clear_stained_glass:1>,null);
MechanicalDryingBasin.addRecipe(<tconstruct:clear_glass>,<liquid:for.honey>*100,<tconstruct:clear_stained_glass:1>,null);
}

Squeezer.removeRecipesWithOutput(<minecraft:flint>,1.00,<minecraft:flint>,0.50);
Squeezer.addRecipe(<minecraft:gravel>,<minecraft:flint>,1.00,<minecraft:sand>,0.25);