import crafttweaker.item.IItemStack;
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>*4);

mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:0>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold:1>);
mods.immersiveengineering.MetalPress.removeRecipe(<techreborn:plates:37>);
val toolRod = <ore:stickWood>|<ore:stickTreatedWood>;
var condiment = <ore:rusticFlora>;
val steelplate = <tconstruct:large_plate>.withTag({Material:"steel"});
val steelsignplate = <tconstruct:sign_head>.withTag({Material:"steel"});
val steelrod = <tconstruct:tool_rod>.withTag({Material: "steel"});
val steeltrod = <tconstruct:tough_tool_rod>.withTag({Material:"steel"});
val steeltbinding = <tconstruct:tough_binding>.withTag({Material:"steel"});

game.setLocalization("item.immersiveengineering.tool.hammer.name","Limited Edition Engineer's Hammer");
recipes.addShaped("IE_hammer",<immersiveengineering:tool:0>.withTag({multiblockInterdiction:["IE:AlloySmelter", "IE:BlastFurnace", "IE:BlastFurnaceAdvanced"]}),[
[null,<ore:ingotIron>,<ore:yarn>],
[null,toolRod,<ore:ingotIron>],
[toolRod,null,null]]);
recipes.replaceAllOccurences(<ore:plateIron>,<ore:ingotIron>,<immersiveengineering:material:8>);
recipes.replaceAllOccurences(<ore:plateSteel>,<tconstruct:sign_head>.withTag({Material:"steel"})|<tconstruct:large_plate>.withTag({Material:"steel"}),<immersiveengineering:material:9>);
recipes.addShaped("steel_scaffolding",<immersiveengineering:metal_decoration1:1>*8,[
[steeltrod,steeltrod,steeltrod],
[steeltrod,steeltbinding,steeltrod],
[steeltrod,steeltrod,steeltrod]]);
recipes.addShaped("steel_fence",<immersiveengineering:metal_decoration1:0>*6,[
[steeltrod,steelrod,steeltrod],
[steeltrod,steelrod,steeltrod]]);
recipes.addShaped("heavy_engineering",<immersiveengineering:metal_decoration0:5>*3,[
[steelplate|steelsignplate,<immersiveengineering:material:9>,steelplate|steelsignplate],
[<minecraft:piston>,<tconstruct:sign_head>.withTag({Material:"electrum"})|<tconstruct:large_plate>.withTag({Material:"electrum"})|<ore:ingotElectrum>,<minecraft:piston>],
[steelplate|steelsignplate,<immersiveengineering:material:9>,steelplate|steelsignplate]]);
mods.immersiveengineering.Blueprint.addRecipe("molds", 
<immersiveengineering:mold:0>, 
[<tconstruct:large_plate>.withTag({Material: "steel"}), 
<immersiveengineering:tool:1>]);
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}),[
[<immersiveengineering:tool>,<ore:ingotSteel>|steelplate|steelsignplate,<ore:ingotSteel>|steelplate|steelsignplate],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

mods.immersiveengineering.Squeezer.removeByInput(<minecraft:rotten_flesh>);

mods.immersiveengineering.Refinery.addRecipe(<liquid:chickenstock>*1000,
 <liquid:liquidchicken>*1000,
 <liquid:salt>*288,
 4800);
mods.immersiveengineering.Mixer.addRecipe(<liquid:chickenstock>*1200,
 <liquid:liquidchicken>*1000,
 [<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,condiment,condiment],
 3600);
mods.immersiveengineering.Mixer.addRecipe(<liquid:chickenstock>*900,
 <liquid:liquidchicken>*1000,
 [<contenttweaker:salt_cube>*2],
 4800);
mods.immersiveengineering.Mixer.addRecipe(<liquid:chickenstock>*5000,
 <liquid:liquidchicken>*5000,
 [<contenttweaker:salt_block>*1,condiment,condiment,condiment],
 43200);

//mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);
mods.immersiveengineering.ArcFurnace.addRecipe(
 <thermalfoundation:glass:3>*2,
 <ore:dustLead>,
 null,
 100, 80,
 [<ore:dustObsidian>*4],
 "Alloying");
for glass, dust in scripts.techreborn.glassArray{mods.immersiveengineering.ArcFurnace.addRecipe(
 glass*2,
 dust,
 null,
 100, 60,
 [<ore:blockGlassHardened>*2],
 "Alloying");}
mods.immersiveengineering.ArcFurnace.addRecipe(
 <simplyjetpacks:metaitemmods:23>,
 <simplyjetpacks:metaitemmods:22>,
 null,
 100, 320,
 [<ore:ingotBronze>*10],
 "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(
 <simplyjetpacks:metaitemmods:24>,
 <simplyjetpacks:metaitemmods:23>,
 null,
 100, 480,
 [<ore:ingotInvar>*10],
 "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(
 <simplyjetpacks:metaitemmods:25>,
 <simplyjetpacks:metaitemmods:24>,
 null,
 100, 640,
 [<ore:ingotEnderium>*10],
 "Alloying");