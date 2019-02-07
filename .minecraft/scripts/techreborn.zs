import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.techreborn.blastFurnace;
import mods.techreborn.vacuumFreezer;
import mods.techreborn.industrialGrinder;
import mods.techreborn.centrifuge;

var plastic=<hatchery:plastic>;
var refinedIron=<techreborn:ingot:19>;
furnace.remove(refinedIron);

recipes.addShapeless(<immersiveengineering:metal:10>,[<techreborn:smalldust:1>,<techreborn:smalldust:1>,<techreborn:smalldust:1>,<techreborn:smalldust:1>]);

recipes.addShaped("plastic_monitor",<techreborn:part:24>,[
[plastic,<ore:dye>,plastic],
[<ore:dye>,<ore:paneGlass>,<ore:dye>],
[plastic,<ore:dye>,plastic]]);
//recipes.replaceAllOccurences(<ore:ingotAluminum>,<ore:plateAluminum>,<techreborn:part:24>);
recipes.addShaped(<techreborn:machine_frame>,[
[refinedIron,<ore:blockGlassOrange>,refinedIron],
[<ore:blockGlassOrange>,<extrabees:misc:0>,<ore:blockGlassOrange>],
[refinedIron,<ore:blockGlassOrange>,refinedIron]]);

recipes.addShaped(<techreborn:compressor>,[
[<ore:stone>,<immersiveengineering:mold>,<ore:stone>],
[<ore:stone>,<ore:circuitBasic>,<ore:stone>],
[<ore:stone>,<techreborn:machine_frame>,<ore:stone>]]);

industrialGrinder.removeAll();
industrialGrinder.addRecipe(<techreborn:dust:21>*2,null,null,null,
<minecraft:end_stone>,null,<liquid:water>*1000,100,256);
industrialGrinder.addRecipe(<techreborn:dust:21>*4,null,null,null,
<minecraft:end_bricks>,null,<liquid:water>*1000,100,256);
centrifuge.removeInputRecipe(<techreborn:dust:33>*16);
centrifuge.removeInputRecipe(<minecraft:speckled_melon>*8);

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
<immersiveengineering:metal:35>*9
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
<minecraft:iron_ore>,
<techreborn:ore:5>,
<techreborn:ingot:16>
] as IItemStack[];
for item in blastRmArray {blastFurnace.removeRecipe(item);}

blastFurnace.addRecipe(
<techreborn:ingot:16>,
null,
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tungstenchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:steelchicken", Gain: 1, Strength: 1}),
500, 512,3000);

<techreborn:ingot:16>.displayName="Hot Tungstensteel Chicken Egg";
<techreborn:ingot:16>.addTooltip(format.red(format.italic("Too hot to hatch! Get it down to room temperature first.")));

vacuumFreezer.removeRecipe(<techreborn:ingot:17>);
vacuumFreezer.addRecipe(
<chickens:spawn_egg>.withTag({ChickenType: {id: "contenttweaker:tungstensteelchicken"}}),
<techreborn:ingot:16>, 500, 512);