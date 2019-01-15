import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;
import mods.techreborn.blastFurnace;
import mods.techreborn.vacuumFreezer;
import mods.techreborn.industrialGrinder;

Pulverizer.removeRecipe(<thermaldynamics:duct_16>);
Pulverizer.removeRecipe(<thermaldynamics:duct_16:1>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0>);
Pulverizer.removeRecipe(<thermaldynamics:duct_0:1>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:iron_bars>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:rail>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:golden_rail>);

industrialGrinder.removeAll();
industrialGrinder.addRecipe(<techreborn:dust:21>*2,null,null,null,
<minecraft:end_stone>,null,<liquid:water>*1000,100,256);
industrialGrinder.addRecipe(<techreborn:dust:21>*4,null,null,null,
<minecraft:end_bricks>,null,<liquid:water>*1000,100,256);

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