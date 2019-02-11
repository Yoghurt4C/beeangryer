mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>*4);

mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:0>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:1>);

mods.immersiveengineering.Blueprint.addRecipe("molds", 
<immersiveengineering:mold:0>, 
[<tconstruct:large_plate>.withTag({Material: "steel"}), 
<immersiveengineering:tool:1>]);
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}),[
[<immersiveengineering:tool>,<ore:ingotSteel>,<ore:ingotSteel>],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);
