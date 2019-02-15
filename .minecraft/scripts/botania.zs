import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.botania.ManaInfusion;
import mods.botania.Orechid;
import mods.botania.PureDaisy;
//output IItemStack
//inputs IIngredient[]
Agglomeration.removeDefaultRecipe();
Agglomeration.addRecipe(
<forestry:bee_princess_ge>.withTag({MaxH: 30, Mate: {Chromosomes: [{UID1: "gendustry.bee.Terrasteel", UID0: "gendustry.bee.Terrasteel", Slot: 0 as byte}, {UID1: "forestry.speedSlowest", UID0: "forestry.speedSlowest", Slot: 1 as byte}, {UID1: "forestry.lifespanShort", UID0: "forestry.lifespanShort", Slot: 2 as byte}, {UID1: "forestry.fertilityLow", UID0: "forestry.fertilityLow", Slot: 3 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 4 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 6 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "gendustry.flowersBotaniaTerraPlate", UID0: "gendustry.flowersBotaniaTerraPlate", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}, Health: 30, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "gendustry.bee.Terrasteel", UID0: "gendustry.bee.Terrasteel", Slot: 0 as byte}, {UID1: "forestry.speedSlowest", UID0: "forestry.speedSlowest", Slot: 1 as byte}, {UID1: "forestry.lifespanShort", UID0: "forestry.lifespanShort", Slot: 2 as byte}, {UID1: "forestry.fertilityLow", UID0: "forestry.fertilityLow", Slot: 3 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 4 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 6 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "gendustry.flowersBotaniaTerraPlate", UID0: "gendustry.flowersBotaniaTerraPlate", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}}),
[<botania:manaresource:2>,
<forestry:bee_princess_ge>.withTag({Genome: {Chromosomes: [{UID1: "gendustry.bee.Manasteel", UID0: "gendustry.bee.Manasteel", Slot: 0 as byte}]}}),
<botania:manaresource:1>] as IIngredient[],
500000,	0x0000FF,0x00FF00,
<botania:livingrock>,<minecraft:lapis_block>,<forestry:bee_combs_0:*>
);

Agglomeration.addRecipe(
<forestry:bee_drone_ge>.withTag({MaxH: 30, Mate: {Chromosomes: [{UID1: "gendustry.bee.Terrasteel", UID0: "gendustry.bee.Terrasteel", Slot: 0 as byte}, {UID1: "forestry.speedSlowest", UID0: "forestry.speedSlowest", Slot: 1 as byte}, {UID1: "forestry.lifespanShort", UID0: "forestry.lifespanShort", Slot: 2 as byte}, {UID1: "forestry.fertilityLow", UID0: "forestry.fertilityLow", Slot: 3 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 4 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 6 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "gendustry.flowersBotaniaTerraPlate", UID0: "gendustry.flowersBotaniaTerraPlate", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}, Health: 30, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "gendustry.bee.Terrasteel", UID0: "gendustry.bee.Terrasteel", Slot: 0 as byte}, {UID1: "forestry.speedSlowest", UID0: "forestry.speedSlowest", Slot: 1 as byte}, {UID1: "forestry.lifespanShort", UID0: "forestry.lifespanShort", Slot: 2 as byte}, {UID1: "forestry.fertilityLow", UID0: "forestry.fertilityLow", Slot: 3 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 4 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceBoth2", UID0: "forestry.toleranceBoth2", Slot: 6 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte}, {UID1: "gendustry.flowersBotaniaTerraPlate", UID0: "gendustry.flowersBotaniaTerraPlate", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}}),
[<botania:manaresource:2>,
<forestry:bee_drone_ge>.withTag({Genome: {Chromosomes: [{UID1: "gendustry.bee.Manasteel", UID0: "gendustry.bee.Manasteel", Slot: 0 as byte}]}}),
<botania:manaresource:1>]
);
Agglomeration.addRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:terrasteelchicken", Gain: 1, Strength: 1}),
[<botania:manaresource:2>,
<roost:chicken>.withTag({Chicken: "contenttweaker:manasteelchicken"}),
<botania:manaresource:1>]
);
Agglomeration.addRecipe(
<fluidcows:cow_displayer>.withTag({fluid: "terrasteel"}),
[<botania:manaresource:2>,
<fluidcows:cow_displayer>.withTag({fluid: "manasteel"}),
<botania:manaresource:1>]
);
//<forestry:bee_princess_ge>.withTag({Genome: {Chromosomes: [{UID1: "gendustry.bee.Manasteel", UID0: "gendustry.bee.Manasteel", Slot: 0 as byte}]}}),

ManaInfusion.removeRecipe(<minecraft:stone:5>);
ManaInfusion.removeRecipe(<minecraft:stone:3>);
ManaInfusion.removeRecipe(<minecraft:stone:1>);
ManaInfusion.addAlchemy(<quark:marble>, <ore:stoneBasalt>, 200);

PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.removeRecipe(<minecraft:cobblestone>);
PureDaisy.removeRecipe(<minecraft:sand>);
PureDaisy.removeRecipe(<minecraft:obsidian>);

val orechidRm as IOreDictEntry[]=[
<ore:oreCoal>,
<ore:oreIron>,
<ore:oreTin>,
<ore:oreCopper>,
<ore:oreLead>,
<ore:oreRedstone>,
<ore:oreSilver>,
<ore:oreCertusQuartz>,
<ore:oreAluminum>,
<ore:oreTungsten>,
<ore:oreGold>,
<ore:oreCinnabar>,
<ore:oreNickel>,
<ore:oreApatite>,
<ore:oreUranium>,
<ore:oreLapis>,
<ore:oreDiamond>,
<ore:oreRuby>,
<ore:oreSapphire>,
<ore:oreGalena>,
<ore:oreEmerald>,
<ore:orePlatinum>,
<ore:oreMithril>];
for ore in orechidRm{Orechid.removeOre(ore);}
mods.botania.OrechidIgnem.removeOre(<ore:oreQuartz>);