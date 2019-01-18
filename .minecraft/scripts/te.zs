import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;
import mods.techreborn.blastFurnace;
import mods.techreborn.vacuumFreezer;
import mods.techreborn.industrialGrinder;
import mods.techreborn.centrifuge;

mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>*4);
Pulverizer.removeRecipe(<thermaldynamics:duct_16>);
Pulverizer.removeRecipe(<thermaldynamics:duct_16:1>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0:1>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:iron_bars>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:rail>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:golden_rail>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:iron_ingot>*2);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>*2,<thermalfoundation:material:133>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>*2,<thermalfoundation:material:69>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3,<thermalfoundation:material:65>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>,<thermalfoundation:material:133>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3,<thermalfoundation:material:129>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3,<techreborn:dust:59>);
InductionSmelter.removeRecipe(<thermalfoundation:material:132>*3,<thermalfoundation:material:128>);
InductionSmelter.removeRecipe(<thermalfoundation:material:68>*3,<thermalfoundation:material:128>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>,<thermalfoundation:material:69>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3,<techreborn:ingot:18>);
InductionSmelter.removeRecipe(<tconstruct:ingots:1>,<tconstruct:ingots>);

val TECompressorArray=[
<thermalfoundation:material:164>,
<minecraft:gold_ingot>,
<immersiveengineering:metal:0>,
<thermalfoundation:material:167>,
<thermalfoundation:material:161>,
<thermalfoundation:material:160>,
<thermalfoundation:material:134>,
<thermalfoundation:material:129>,
<thermalfoundation:material:133>,
<thermalfoundation:material:163>,
<techreborn:ingot:3>,
<forestry:ingot_tin>,
<techreborn:ingot:15>,
<techreborn:ingot:17>,
<immersiveengineering:metal:1>,
<immersiveengineering:metal:5>,
<immersiveengineering:metal:7>,
<thermalfoundation:material:166>,
<thermalfoundation:material:130>,
<immersiveengineering:metal:8>,
<thermalfoundation:material:162>,
<thermalfoundation:material:136>,
<forestry:ingot_bronze>,
<techreborn:ingot:1>,
<techreborn:ingot:14>,
<techreborn:ingot:18>,
<thermalfoundation:material:135>,
<minecraft:iron_ingot>,
<thermalfoundation:material:165>,
<thermalfoundation:material:132>,
<immersiveengineering:metal:6>,
<thermalfoundation:material:131>,
<thermalfoundation:material:128>
]as IItemStack[];
for item in TECompressorArray{mods.thermalexpansion.Compactor.removeStorageRecipe(item);}
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
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<botania:livingwood>%100],<gendustry:honey_comb:116>,null,2000);
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<botania:livingrock>%100],<gendustry:honey_comb:117>,null,2000);

furnace.remove(<techreborn:ingot:19>);

industrialGrinder.removeAll();
industrialGrinder.addRecipe(<techreborn:dust:21>*2,null,null,null,
<minecraft:end_stone>,null,<liquid:water>*1000,100,256);
industrialGrinder.addRecipe(<techreborn:dust:21>*4,null,null,null,
<minecraft:end_bricks>,null,<liquid:water>*1000,100,256);
centrifuge.removeInputRecipe(<techreborn:dust:33>*16);

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
<roost:chicken>.withTag({Growth: 1, Chicken: "morechickens:tungstenchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "morechickens:steelchicken", Gain: 1, Strength: 1}),
500, 512,3000);

<techreborn:ingot:16>.displayName="Hot Tungstensteel Chicken Egg";
<techreborn:ingot:16>.addTooltip(format.red(format.italic("Too hot to hatch! Get it down to room temperature first.")));

vacuumFreezer.removeRecipe(<techreborn:ingot:17>);
vacuumFreezer.addRecipe(
<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:tungstensteelchicken"}}),
<techreborn:ingot:16>, 500, 512);