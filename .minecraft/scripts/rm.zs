import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

//JEI
JEI.removeAndHide(<thermalexpansion:device:10>,false);
JEI.removeAndHide(<thermalexpansion:device:416>,false);
JEI.hideCategory("thermalexpansion.factorizer_combine");
JEI.hideCategory("thermalexpansion.factorizer_split");
JEI.hideCategory("thermalexpansion.centrifuge_mobs");

//heuristic removal array, put in `<modid:item>` with commas after each, except the last, for removal
val rmSpecArray=[
<forestry:sturdy_machine>,
<forestry:carpenter>,
<forestry:centrifuge>,
<forestry:squeezer>,
<genetics:misc>
] as IItemStack[];
for item in rmSpecArray {recipes.remove(item);}
//same but for oredict
val rmOreArray=[
<ore:nuggetIron>,
<ore:nuggetGold>,
<ore:nuggetCopper>,
<ore:nuggetTin>,
<ore:nuggetSilver>,
<ore:nuggetLead>,
<ore:nuggetAluminum>,
<ore:nuggetNickel>,
<ore:nuggetPlatinum>,
<ore:nuggetIridium>,
<ore:nuggetMithril>,
<ore:nuggetSteel>,
<ore:nuggetElectrum>,
<ore:nuggetInvar>,
<ore:nuggetBronze>,
<ore:nuggetConstantan>,
<ore:nuggetSignalum>,
<ore:nuggetLumium>,
<ore:nuggetEnderium>,
//ingots
<ore:ingotIron>,
<ore:ingotGold>,
<ore:ingotCopper>,
<ore:ingotTin>,
<ore:ingotSilver>,
<ore:ingotLead>,
<ore:ingotAluminum>,
<ore:ingotNickel>,
<ore:ingotPlatinum>,
<ore:ingotIridium>,
<ore:ingotMithril>,
<ore:ingotSteel>,
<ore:ingotElectrum>,
<ore:ingotInvar>,
<ore:ingotBronze>,
<ore:ingotConstantan>,
<ore:ingotSignalum>,
<ore:ingotLumium>,
<ore:ingotEnderium>,
//blocks
<ore:blockIron>,
<ore:blockGold>,
<ore:blockCopper>,
<ore:blockTin>,
<ore:blockSilver>,
<ore:blockLead>,
<ore:blockAluminum>,
<ore:blockNickel>,
<ore:blockPlatinum>,
<ore:blockIridium>,
<ore:blockMithril>,
<ore:blockSteel>,
<ore:blockElectrum>,
<ore:blockInvar>,
<ore:blockBronze>,
<ore:blockConstantan>,
<ore:blockSignalum>,
<ore:blockLumium>,
<ore:blockEnderium>,
//gears
<ore:gearIron>,
<ore:gearGold>,
<ore:gearCopper>,
<ore:gearTin>,
<ore:gearSilver>,
<ore:gearLead>,
<ore:gearAluminum>,
<ore:gearNickel>,
<ore:gearPlatinum>,
<ore:gearIridium>,
<ore:gearMithril>,
<ore:gearSteel>,
<ore:gearElectrum>,
<ore:gearInvar>,
<ore:gearBronze>,
<ore:gearConstantan>,
<ore:gearSignalum>,
<ore:gearLumium>,
<ore:gearEnderium>
] as IOreDictEntry[];
for item in rmOreArray {recipes.remove(item);}
//furnace rm
val rmFurnaceArray=[
<ore:nuggetIron>,
<ore:nuggetGold>
] as IOreDictEntry[];
for item in rmFurnaceArray{furnace.remove(item);}
