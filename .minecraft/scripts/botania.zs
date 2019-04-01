import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.botania.Apothecary;
import mods.botania.ManaInfusion;
import mods.botania.Lexicon;
import mods.botania.Orechid;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;

var anyPetal=<botania:petal:*>|<botania:mushroom:*>;
var crushedeggshells=<contenttweaker:crushedeggshells>;
recipes.remove(<botania:twigwand>);
recipes.addShaped("potato_wand",<botania:twigwand>.withTag({color1: 0, color2: 0}),[
[null,anyPetal,<botania:tinypotato>],
[null,<botania:manaresource:3>,anyPetal],
[<botania:manaresource:3>,null,null]]);
//oops'ie
recipes.addShaped("felpumpkin",<botania:felpumpkin>,[
[crushedeggshells,<minecraft:string>,crushedeggshells],
[<minecraft:bone>,<minecraft:pumpkin>,<minecraft:rotten_flesh>],
[crushedeggshells,<minecraft:gunpowder>,crushedeggshells]]);

recipes.addShapeless("crushedeggshells",crushedeggshells,[<contenttweaker:eggshells>,<botania:pestleandmortar>]);
mods.jei.JEI.addDescription(crushedeggshells,["Somewhat useful for a struggling survivalist's needs. See Guidebook for more information."]);
recipes.addShapeless("fertilizer_egg_powder",<botania:fertilizer>*2,[
crushedeggshells,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>]);
recipes.addShapeless("fertilizer_egg_vanilla",<botania:fertilizer>,[
crushedeggshells,<minecraft:dye:11>,<minecraft:dye:11>,<minecraft:dye:1>,<minecraft:dye:1>]);
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

Apothecary.removeRecipe("marimorphosis");
Apothecary.addRecipe("marimorphosis",[
	<ore:petalGray>,<ore:petalGray>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalGreen>,<ore:petalGreen>,<ore:petalRed>,<ore:petalRed>,<botania:manaresource:6>]);
	Lexicon.removePage("botania.entry.marimorphosis", 2);
	Lexicon.addPetalPage("Now with 100% less runes", "botania.entry.marimorphosis", 2, [<botania:specialflower>.withTag({type: "marimorphosis"})],[[<ore:petalGray>,<ore:petalGray>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalGreen>,<ore:petalGreen>,<ore:petalRed>,<ore:petalRed>,<botania:manaresource:6>]]);
Apothecary.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"},display:{Name: "Bovine Egg"}}),
 [<ore:petalBrown>,<ore:petalBrown>,<ore:petalBrown>,<ore:petalGray>,<ore:petalGray>,<ore:petalGray>,<minecraft:leather>,<minecraft:leather>,<minecraft:leather>,<contenttweaker:crushedeggshells>,<contenttweaker:crushedeggshells>,<contenttweaker:crushedeggshells>,<ore:egg>]);
Apothecary.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:sheep"},display:{Name: "Wooly Egg"}}),
 [<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalPink>,<ore:petalPink>,<ore:petalPink>,<minecraft:wool:*>,<minecraft:wool:*>,<minecraft:wool:*>,<contenttweaker:crushedeggshells>,<contenttweaker:crushedeggshells>,<contenttweaker:crushedeggshells>,<ore:egg>]);

ManaInfusion.removeRecipe(<minecraft:stone:5>);
ManaInfusion.removeRecipe(<minecraft:stone:3>);
ManaInfusion.removeRecipe(<minecraft:stone:1>);
ManaInfusion.removeRecipe(<minecraft:prismarine_shard>);
ManaInfusion.removeRecipe(<minecraft:prismarine_crystals>);
ManaInfusion.addAlchemy(<quark:marble>, <ore:stoneBasalt>, 200);
ManaInfusion.addAlchemy(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pshardchicken", Gain: 1, Strength: 1}),
 <roost:chicken>.withTag({Chicken:"chickens:quartzchicken"}), 10000);
ManaInfusion.addAlchemy(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pcrystalchicken", Gain: 1, Strength: 1}),
 <roost:chicken>.withTag({Chicken:"chickens:pshardchicken"}), 10000);

RuneAltar.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:elementiumchicken", Gain: 1, Strength: 1}),[
<botania:manaresource:8>,
<botania:manaresource:9>,
<botania:manaresource:8>,
<roost:chicken>.withTag({Chicken: "contenttweaker:manasteelchicken"}),
<roost:chicken>.withTag({Chicken: "contenttweaker:manasteelchicken"}),
<botania:manaresource:8>,
<botania:manaresource:9>,
<botania:manaresource:8>
],32500);
//aminals
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:bat"},display:{Name: "Batty Egg"}}),[
<ore:petalBlack>,
<ore:petalBlack>,
<ore:petalBlack>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:feather>,
<ore:feather>,
<ore:feather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"},display:{Name: "Emergency Chicken Deployer"}}),[
<ore:petalWhite>,
<ore:petalWhite>,
<ore:petalWhite>,
<ore:petalRed>,
<ore:petalRed>,
<ore:petalRed>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:donkey"},display:{Name: "Asinine Egg"}}),[
<ore:petalBrown>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:cropWheat>,
<ore:cropWheat>,
<ore:cropWheat>,
<minecraft:leather>,
<minecraft:leather>,
<minecraft:leather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:endermite"},display:{Name: "Pest Egg"}}),[
<ore:petalBlack>,
<ore:petalBlack>,
<ore:petalBlack>,
<ore:petalGray>,
<ore:petalGray>,
<ore:petalGray>,
<contenttweaker:yarn_ender>,
<minecraft:ender_eye>,
<contenttweaker:yarn_ender>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:silverfish"}})
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:horse"},display:{Name: "Equine Egg"}}),[
<ore:petalYellow>,
<ore:petalYellow>,
<ore:petalYellow>,
<ore:cropWheat>,
<ore:cropWheat>,
<ore:cropWheat>,
<ore:leather>,
<ore:leather>,
<ore:leather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:llama"},display:{Name: "Drool-Covered Egg"}}),[
<ore:petalYellow>,
<ore:petalYellow>,
<ore:petalYellow>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:petalBrown>,
<minecraft:leather>,
<minecraft:carpet:*>,
<minecraft:leather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mooshroom"},display:{Name: "Fungal Bovine Egg"}}),[
<ore:petalRed>,
<ore:petalRed>,
<ore:petalRed>,
<ore:petalLightGray>,
<ore:petalLightGray>,
<ore:petalLightGray>,
<minecraft:red_mushroom>,
<minecraft:mushroom_stew>,
<minecraft:red_mushroom>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}})
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mule"},display:{Name: "Hardy Egg"}}),[
<ore:petalBrown>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:cropWheat>,
<ore:cropWheat>,
<ore:cropWheat>,
<minecraft:leather>,
<minecraft:leather>,
<minecraft:leather>,
<contenttweaker:crushedeggshells>,
<ore:chestWood>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:ocelot"},display:{Name: "Feline Egg"}}),[
<ore:petalYellow>,
<ore:petalYellow>,
<ore:petalYellow>,
<ore:petalBlack>,
<ore:petalBlack>,
<ore:petalBlack>,
<ore:yarn>,
<ore:fish>,
<ore:yarn>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<quark:parrot_egg:0>,[
<ore:petalRed>,
<ore:petalRed>,
<ore:petalBlue>,
<ore:petalBlue>,
<ore:feather>,
<ore:feather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<quark:parrot_egg:1>,[
<ore:petalBlue>,
<ore:petalBlue>,
<ore:petalBlack>,
<ore:petalBlack>,
<ore:feather>,
<ore:feather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<quark:parrot_egg:2>,[
<ore:petalLime>,
<ore:petalLime>,
<ore:petalGreen>,
<ore:petalGreen>,
<ore:feather>,
<ore:feather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<quark:parrot_egg:3>,[
<ore:petalCyan>,
<ore:petalCyan>,
<ore:petalYellow>,
<ore:petalYellow>,
<ore:feather>,
<ore:feather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<quark:parrot_egg:4>,[
<ore:petalLightGray>,
<ore:petalLightGray>,
<ore:petalGray>,
<ore:petalGray>,
<ore:feather>,
<ore:feather>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:pig"},display:{Name: "Hoggy Egg"}}),[
<ore:petalPink>,
<ore:petalPink>,
<ore:petalPink>,
<ore:petalRed>,
<ore:petalRed>,
<ore:petalRed>,
<ore:cropCarrot>,
<ore:cropCarrot>,
<ore:cropCarrot>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:polar_bear"},display:{Name: "Ursine Egg"}}),[
<contenttweaker:yarn_invisibilia>,
<contenttweaker:yarn_invisibilia>,
<contenttweaker:yarn_invisibilia>,
<ore:petalLightGray>,
<ore:petalLightGray>,
<ore:petalLightGray>,
<minecraft:snowball>,
<ore:fish>,
<minecraft:snowball>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:rabbit"},display:{Name: "Leporine Egg"}}),[
<ore:petalOrange>,
<ore:petalOrange>,
<ore:petalOrange>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:cropCarrot>,
<minecraft:leather>,
<ore:cropCarrot>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:silverfish"},display:{Name: "Skittish Egg"}}),[
<ore:petalLightGray>,
<ore:petalLightGray>,
<ore:petalLightGray>,
<ore:petalGray>,
<ore:petalGray>,
<ore:petalGray>,
<minecraft:stone>,
<minecraft:cobblestone>,
<minecraft:stonebrick>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:squid"},display:{Name: "Cephalopod Egg"}}),[
<ore:petalCyan>,
<ore:petalCyan>,
<ore:petalCyan>,
<ore:petalBlack>,
<ore:petalBlack>,
<ore:petalBlack>,
<minecraft:dye:0>,
<minecraft:dye:0>,
<minecraft:dye:0>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"},display:{Name: "Nosy Egg"}}),[
<ore:petalBrown>,
<ore:petalBrown>,
<ore:petalBrown>,
<ore:fabric>,
<minecraft:emerald>,
<ore:fabric>,
<ore:cropWheat>,
<ore:cropCarrot>,
<ore:cropPotato>,
<contenttweaker:crushedeggshells>,
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:emeraldchicken", Gain: 1, Strength: 1}),
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
RuneAltar.addRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:wolf"},display:{Name: "Canine Egg"}}),[
<ore:petalWhite>,
<ore:petalWhite>,
<ore:petalWhite>,
<ore:petalLightGray>,
<ore:petalLightGray>,
<ore:petalLightGray>,
<ore:bone>,
<ore:bone>,
<ore:bone>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<contenttweaker:crushedeggshells>,
<ore:egg>
],6250);
val mobEggs as string[string]={
"minecraft:cow":"Bovine Egg",
"minecraft:sheep":"Wooly Egg",
"minecraft:bat":"Batty Egg",
"minecraft:chicken":"Emergency Chicken Deployer",
"minecraft:donkey":"Asinine Egg",
"minecraft:endermite":"Pest Egg",
"minecraft:horse":"Equine Egg",
"minecraft:llama":"Drool-Covered Egg",
"minecraft:mooshroom":"Fungal Bovine Egg",
"minecraft:mule":"Hardy Egg",
"minecraft:ocelot":"Feline Egg",
"minecraft:pig":"Hoggy Egg",
"minecraft:polar_bear":"Ursine Egg",
"minecraft:rabbit":"Leporine Egg",
"minecraft:silverfish":"Skittish Egg",
"minecraft:squid":"Cephalopod Egg",
"minecraft:villager":"Nosy Egg",
"minecraft:wolf":"Canine Egg",
};
for mob, mobname in mobEggs{
mods.jei.JEI.addItem(<minecraft:spawn_egg>.withTag({EntityTag: {id: mob},display:{Name: mobname}}));
}
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.removeRecipe(<minecraft:cobblestone>);
PureDaisy.removeRecipe(<minecraft:sand>);
PureDaisy.removeRecipe(<minecraft:obsidian>);
PureDaisy.addRecipe(<contenttweaker:water_bowl_chicken>,<contenttweaker:bowl_snow_chicken>,200);

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
mods.botania.OrechidIgnem.removeOre(<ore:oreArdite>);
mods.botania.OrechidIgnem.removeOre(<ore:oreCobalt>);

game.setLocalization("item.botania:redString.name","Ball of Red String Yarn");