import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;

recipes.replaceAllOccurences(<minecraft:iron_ingot>,<ore:ingotSteel>,<thermalexpansion:frame>);
recipes.replaceAllOccurences(<ore:blockGlass>,<ore:blockGlassOrange>,<thermalexpansion:frame>);
recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped(<thermalexpansion:machine:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),[
[<immersiveengineering:mold>,<minecraft:piston>,null],
[<ore:ingotBronze>,<thermalexpansion:frame:0>,<ore:ingotBronze>],
[<ore:ingotCopper>,<thermalfoundation:material:513>,<ore:ingotCopper>]]);

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

mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<botania:livingwood>%100],<gendustry:honey_comb:116>,null,2000);
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<botania:livingrock>%100],<gendustry:honey_comb:117>,null,2000);

