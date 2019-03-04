#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.techreborn.blastFurnace;
import mods.techreborn.vacuumFreezer;
import mods.techreborn.industrialGrinder;
import mods.techreborn.centrifuge;
import mods.techreborn.industrialElectrolyzer;
import mods.techreborn.chemicalReactorRecipe;
import mods.techreborn.implosionCompressor;

var plastic=<hatchery:plastic>;
var refinedIron=<techreborn:ingot:19>;
var cell=<techreborn:dynamiccell>;
var dustAluminum=<immersiveengineering:metal:10>;
var dustIron=<immersiveengineering:metal:18>;
furnace.remove(refinedIron);

recipes.replaceAllOccurences(<techreborn:smalldust:62>,<minecraft:glowstone_dust>,<techreborn:nanosaber>);

recipes.addShapeless(<immersiveengineering:metal:10>,[<techreborn:smalldust:1>,<techreborn:smalldust:1>,<techreborn:smalldust:1>,<techreborn:smalldust:1>]);
<techreborn:iron_furnace>.addTooltip(format.blue(format.italic("More sophisticated than a limestone Furnace,")));
<techreborn:iron_furnace>.addTooltip(format.blue(format.italic("but lacks the ability to be heated externally.")));

recipes.addShaped("plastic_monitor",<techreborn:part:24>,[
[plastic,<ore:dye>,plastic],
[<ore:dye>,<ore:paneGlass>,<ore:dye>],
[plastic,<ore:dye>,plastic]]);
//recipes.replaceAllOccurences(<ore:ingotAluminum>,<ore:plateAluminum>,<techreborn:part:24>);
recipes.addShaped(<techreborn:machine_frame>,[
[refinedIron,<ore:blockGlassOrange>,refinedIron],
[<ore:blockGlassOrange>,<extrabees:misc:0>,<ore:blockGlassOrange>],
[refinedIron,<ore:blockGlassOrange>,refinedIron]]);

recipes.addShaped("tr_compressor",<techreborn:compressor>,[
[<ore:stone>,<immersiveengineering:mold>.reuse(),<ore:stone>],
[<ore:stone>,<ore:circuitBasic>,<ore:stone>],
[<ore:stone>,<techreborn:machine_frame>,<ore:stone>]]);

industrialGrinder.removeAll();
industrialGrinder.addRecipe(<techreborn:dust:21>*2,null,null,null,
<minecraft:end_stone>,null,<liquid:water>*1000,100,256);
industrialGrinder.addRecipe(<techreborn:dust:21>*4,null,null,null,
<minecraft:end_bricks>,null,<liquid:water>*1000,100,256);
centrifuge.removeInputRecipe(<techreborn:dust:33>*16);
centrifuge.removeInputRecipe(<minecraft:speckled_melon>*8);
centrifuge.removeInputRecipe(<minecraft:chicken>*12);

val TRCompressorArray=[
<techreborn:plates:31>,
<techreborn:plates:30>,
<techreborn:plates:19>,
<techreborn:plates:17>,
<techreborn:plates:33>,
<techreborn:plates:32>,
<thermalfoundation:material:328>,
<thermalfoundation:material:356>,
<thermalfoundation:material:357>,
<thermalfoundation:material:358>,
<thermalfoundation:material:359>,
<immersiveengineering:metal:35>,
<techreborn:plates:31>*9,
<techreborn:plates:30>*9,
<techreborn:plates:19>*9,
<techreborn:plates:17>*9,
<techreborn:plates:33>*9,
<techreborn:plates:32>*9,
<thermalfoundation:material:328>*9,
<thermalfoundation:material:356>*9,
<thermalfoundation:material:357>*9,
<thermalfoundation:material:358>*9,
<thermalfoundation:material:359>*9,
<immersiveengineering:metal:35>*9,
<contenttweaker:material_part:66>,
<contenttweaker:material_part:72>,
<contenttweaker:material_part:64>,
<contenttweaker:material_part:68>,
<contenttweaker:material_part:54>,
<contenttweaker:material_part:60>,
<contenttweaker:material_part:56>,
<contenttweaker:material_part:64>*9,
<contenttweaker:material_part:68>*9,
<contenttweaker:material_part:54>*9,
<contenttweaker:material_part:60>*9,
<contenttweaker:material_part:56>*9
]as IItemStack[];
for item in TRCompressorArray{mods.techreborn.compressor.removeRecipe(item);}

val blastRmArray=[
<techreborn:smalldust:54>,
<techreborn:smalldust:1>,
<techreborn:smalldust:55>,
<techreborn:smalldust:10>,
<techreborn:smalldust:51>,
<techreborn:dust:23>,
<minecraft:iron_ingot>,
<minecraft:gold_ingot>,
<minecraft:diamond>,
<minecraft:iron_ore>,
<techreborn:ore:5>,
<techreborn:ingot:16>
] as IItemStack[];
for item in blastRmArray {blastFurnace.removeRecipe(item);}
mods.techreborn.blastFurnace.removeInputRecipe(<techreborn:smalldust:*>);

//blastFurnace.addRecipe(IItemStack output1, IItemStack output2, IIngredient input1, IIngredient input2, int ticktime, int euTick, int neededHeat)
blastFurnace.addRecipe(
<immersiveengineering:metal:1>,
null,
dustAluminum,
null,
1700, 120,1700);
blastFurnace.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:steelchicken", Gain: 1, Strength: 1}),
null,
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:coalchicken", Gain: 1, Strength: 1})*2,
1700, 120,1000);
blastFurnace.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:titaniumchicken", Gain: 1, Strength: 1}),
null,
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:aluminiumchicken", Gain: 1, Strength: 1})*2,
3600, 120,1500);
blastFurnace.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:chromechicken", Gain: 1, Strength: 1}),
null,
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:titaniumchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pinkchicken", Gain: 1, Strength: 1})*2,
4420, 120,1700);
blastFurnace.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tungstenchicken", Gain: 1, Strength: 1}),
null,
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:refinedironchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:enderchicken", Gain: 1, Strength: 1})*2,
1800, 120,2500);
blastFurnace.addRecipe(
<techreborn:ingot:16>,
null,
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tungstenchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:steelchicken", Gain: 1, Strength: 1}),
500, 120,3000);

blastFurnace.addRecipe(
<fluidcows:cow_displayer>.withTag({fluid: "titanium"}),
null,
<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
<fluidcows:cow_displayer>.withTag({fluid: "aluminum"})*2,
3600, 120,1500);
blastFurnace.addRecipe(
<fluidcows:cow_displayer>.withTag({fluid: "chrome"}),
null,
<fluidcows:cow_displayer>.withTag({fluid: "titanium"}),
<ore:dyePink>*16,
4420, 120,1700);
blastFurnace.addRecipe(
<fluidcows:cow_displayer>.withTag({fluid: "tungsten"}),
null,
<fluidcows:cow_displayer>.withTag({fluid: "steel"}),
<minecraft:ender_pearl>*16,
1800, 120,2500);
blastFurnace.addRecipe(
<fluidcows:cow_displayer>.withTag({fluid: "tungstensteel"}),
null,
<fluidcows:cow_displayer>.withTag({fluid: "tungsten"}),
<fluidcows:cow_displayer>.withTag({fluid: "steel"}),
500, 120,3000);

<techreborn:ingot:16>.displayName="Hot Tungstensteel Chicken Egg";
<techreborn:ingot:16>.addTooltip(format.red(format.italic("Too hot to hatch! Get it down to room temperature first.")));

vacuumFreezer.removeRecipe(<techreborn:ingot:17>);
vacuumFreezer.addRecipe(
<chickens:spawn_egg>.withTag({ChickenType: {id: "contenttweaker:tungstensteelchicken"}}),
<techreborn:ingot:16>, 500, 512);

//centrifuge.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, int ticktime, int euTick)
centrifuge.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "liquidchicken", Amount: 1000}})*3,
 null,
 null,
 null,
 <minecraft:chicken>*4,
 <techreborn:dynamiccell>*4,
 480, 20);

//industrialElectrolyzer.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, int ticktime, int euTick)
industrialElectrolyzer.removeRecipe(<techreborn:dust:1>);
industrialElectrolyzer.removeRecipe(<techreborn:dust:27>);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidsodium", Amount: 1000}})*2,
 cell.withTag({Fluid: {FluidName: "fluidlithium", Amount: 1000}})*1,
 dustAluminum*2,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*2,
 <techreborn:dust:12>*8,
 cell*5,
 200, 50);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidsodium", Amount: 1000}})*4,
 cell.withTag({Fluid: {FluidName: "fluidcalcium", Amount: 1000}})*3,
 dustAluminum*3,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*3,
 <techreborn:dust:28>*29,
 cell*10,
 1460, 100);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidsodium", Amount: 1000}})*4,
 cell.withTag({Fluid: {FluidName: "fluidchlorite", Amount: 1000}})*1,
 dustAluminum*3,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*3,
 <techreborn:dust:48>*23,
 cell*8,
 1340, 90);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidhydrogen", Amount: 1000}})*5,
 cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*3,
 dustAluminum*8,
 <techreborn:smalldust:54>*2,
 <techreborn:dust:5>*12,
 cell*8,
 2000, 128);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*3,
 <techreborn:dust:10>,
 dustAluminum*2,
 null,
 <techreborn:dust:43>*9,
 cell*3,
 500, 50);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*3,
 dustAluminum*2,
 null,
 null,
 <techreborn:dust:12>*8,
 cell*3,
 400, 50);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*9,
 cell.withTag({Fluid: {FluidName: "fluidberyllium", Amount: 1000}})*3,
 dustAluminum*2,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*6,
 <techreborn:dust:18>*29,
 cell*18,
 600, 50);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*6,
 <techreborn:dust:30>*3,
 dustAluminum*2,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*3,
 <techreborn:dust:40>*20,
 cell*9,
 1700, 50);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*6,
 dustIron*3,
 dustAluminum*2,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*3,
 <techreborn:dust:0>*20,
 cell*9,
 1640, 50);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*6,
 <techreborn:dust:31>*3,
 dustAluminum*2,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*3,
 <techreborn:dust:49>*20,
 cell*9,
 1800, 50);
industrialElectrolyzer.addRecipe(cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*6,
 cell.withTag({Fluid: {FluidName: "fluidcalcium", Amount: 1000}})*3,
 dustAluminum*2,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*3,
 <techreborn:dust:25>*20,
 cell*12,
 204, 50);
industrialElectrolyzer.addRecipe(dustIron*1,
 <techreborn:dust:52>*2,
 null,
 null,
 <techreborn:dust:39>*3,
 null,
 120, 128);
industrialElectrolyzer.addRecipe(dustIron*2,
 <techreborn:dust:30>*2,
 cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*2,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*1,
 <techreborn:dust:36>*9,
 cell*3,
 600, 60);
industrialElectrolyzer.addRecipe(dustIron*2,
 cell.withTag({Fluid: {FluidName: "fluidcalcium", Amount: 1000}})*3,
 cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*6,
 cell.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}})*3,
 <techreborn:dust:2>*20,
 cell*12,
 1280, 50);
 
chemicalReactorRecipe.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "chickenstock", Amount: 1000}}),
 <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "liquidchicken", Amount: 1000}}),
 <contenttweaker:salt_cube>*2,
 240, 5);
chemicalReactorRecipe.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rubychicken", Gain: 1, Strength: 1}),
 <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:chromechicken", Gain: 1, Strength: 1})*1,
 <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:aluminiumchicken", Gain: 1, Strength: 1})*2,
 1000, 50);
chemicalReactorRecipe.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:sapphirechicken", Gain: 1, Strength: 1}),
 cell.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}})*3,
 <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:aluminiumchicken", Gain: 1, Strength: 1})*2,
 1000, 50);
 
implosionCompressor.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:diamondchicken", Gain: 1, Strength: 1}),
 <techreborn:dust:15>*16,
 <roost:chicken>.withTag({Growth: 1, Chicken: "chickens:coalchicken", Gain: 1, Strength: 1})*64,
 <minecraft:tnt>*48,
 200, 8);