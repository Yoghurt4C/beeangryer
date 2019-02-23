import crafttweaker.item.IItemStack;
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>*4);

mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:0>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:1>);

val toolRod = <ore:stickWood>|<ore:stickTreatedWood>;
var condiment = <ore:rusticFlora>;

game.setLocalization("item.immersiveengineering.tool.hammer.name","Limited Edition Engineer's Hammer");
recipes.addShaped("IE_hammer",<immersiveengineering:tool:0>.withTag({multiblockInterdiction:["IE:AlloySmelter", "IE:BlastFurnace", "IE:BlastFurnaceAdvanced"]}),[
[null,<ore:ingotIron>,<ore:string>],
[null,toolRod,<ore:ingotIron>],
[toolRod,null,null]]);
mods.immersiveengineering.Blueprint.addRecipe("molds", 
<immersiveengineering:mold:0>, 
[<tconstruct:large_plate>.withTag({Material: "steel"}), 
<immersiveengineering:tool:1>]);
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}),[
[<immersiveengineering:tool>,<ore:ingotSteel>,<ore:ingotSteel>],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

mods.immersiveengineering.Refinery.addRecipe(<liquid:chickenstock>*1000,
 <liquid:liquidchicken>*1000,
 <liquid:salt>*288,
 4800);
mods.immersiveengineering.Mixer.addRecipe(<liquid:chickenstock>*900,
 <liquid:liquidchicken>*1000,
 [<contenttweaker:salt_cube>*2],
 4800);
mods.immersiveengineering.Mixer.addRecipe(<liquid:chickenstock>*1200,
 <liquid:liquidchicken>*1000,
 [<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,condiment,condiment],
 3600);
mods.immersiveengineering.Mixer.addRecipe(<liquid:chickenstock>*5000,
 <liquid:liquidchicken>*5000,
 [<contenttweaker:salt_block>*1,condiment,condiment,condiment],
 43200);