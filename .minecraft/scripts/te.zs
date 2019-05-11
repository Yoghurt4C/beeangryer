import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Enchanter;

var honeyGlass=<ore:blockGlassOrange>;
var plateSteel=<ore:plateSteel>;
var plateLead=<ore:plateLead>;
var plateRedstone=<ore:plateRedstone>;
var gearScented=<extrabees:misc:0>;
var rodIron=<ore:rodIron>;
var rodSteel=<ore:rodSteel>;
var piston=<minecraft:piston>;
var redstoneServo=<thermalfoundation:material:512>;
var moldGear=<immersiveengineering:mold:1>;

recipes.addShaped("biomass",<thermalfoundation:material:816>,[
[<contenttweaker:tiny_biomass>,<contenttweaker:tiny_biomass>,<contenttweaker:tiny_biomass>],
[<contenttweaker:tiny_biomass>,<contenttweaker:tiny_biomass>,<contenttweaker:tiny_biomass>],
[<contenttweaker:tiny_biomass>,<contenttweaker:tiny_biomass>,<contenttweaker:tiny_biomass>]]);
recipes.addShaped("tiny_biomass",<contenttweaker:tiny_biomass>*9,[[<thermalfoundation:material:816>]]);

recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("machine_frame_te",<thermalexpansion:frame>,[
[plateSteel,honeyGlass,plateSteel],
[honeyGlass,gearScented|<ore:gearSteel>,honeyGlass],
[plateSteel,honeyGlass,plateSteel]]);

recipes.addShaped("redstone_servo",<thermalfoundation:material:512>*1,[
[plateRedstone,rodSteel,plateRedstone],
[null,plateSteel],
[plateRedstone,rodSteel,plateRedstone]]);

recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped("te_compactor",<thermalexpansion:machine:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),[
[<immersiveengineering:mold>.reuse(),<minecraft:piston>,null],
[<ore:ingotBronze>,<thermalexpansion:frame:0>,<ore:ingotBronze>],
[<ore:ingotCopper>,<thermalfoundation:material:513>,<ore:ingotCopper>]]);

recipes.addShaped("gearworking_die",<thermalexpansion:augment:337>,[
[rodSteel,moldGear,rodSteel],
[plateLead,redstoneServo,plateLead],
[rodSteel,piston,rodSteel]]);

Pulverizer.removeRecipe(<thermaldynamics:duct_16>);
Pulverizer.removeRecipe(<thermaldynamics:duct_16:1>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0:1>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:iron_bars>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:rail>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:golden_rail>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:iron_ingot>*2);
InductionSmelter.removeRecipe(<minecraft:sand>,<quark:iron_ladder>);
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
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<minecraft:rotten_flesh>*4);

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
<thermalfoundation:material:128>,
<techreborn:ingot:22>
]as IItemStack[];
for item in TECompressorArray{mods.thermalexpansion.Compactor.removeStorageRecipe(item);}

mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<botania:livingwood>%100],<gendustry:honey_comb:116>,null,2000);
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<botania:livingrock>%100],<gendustry:honey_comb:117>,null,2000);
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<integrateddynamics:crystalized_menril_chunk>*3%100],<gendustry:honey_comb:130>,null,2000);
recipes.addShapeless(<minecraft:chest>,[<ore:chestWood>]);
Enchanter.removeRecipe(<minecraft:book>, <minecraft:chest>);
for chest in <ore:chestWood>.items{
Enchanter.addRecipe(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: 11 as short}]}),
<minecraft:book>, chest, 12000, 1000, false);}

game.setLocalization("item.thermalfoundation.util.wrench0.name","Skookum Choocher");
game.setLocalization("info.thermalfoundation.util.wrench.1","Thumb Detecting Swedish Nut Lathe!");
<thermalfoundation:wrench>.addTooltip(format.italic(format.darkPurple("Formerly Crescent Hammer.")));
<ore:wrench>.add(<thermalfoundation:wrench>);

recipes.addShaped("iron_horse_armor_te",<minecraft:iron_horse_armor>,[
[<ore:plateIron>,null,<ore:plateIron>],
[<ore:yarn>,<ore:plateFabric>,<ore:yarn>],
[<ore:ingotIron>,null,<ore:ingotIron>]]);
recipes.addShaped("golden_horse_armor",<minecraft:golden_horse_armor>,[
[<ore:plateGold>,null,<ore:plateGold>],
[<ore:yarn>,<ore:plateFabric>,<ore:yarn>],
[<ore:ingotGold>,null,<ore:ingotGold>]]);
recipes.addShaped("diamond_horse_armor",<minecraft:diamond_horse_armor>,[
[<ore:plateDiamond>,null,<ore:plateDiamond>],
[<ore:yarn>,<ore:plateFabric>,<ore:yarn>],
[<ore:gemDiamond>,null,<ore:gemDiamond>]]);