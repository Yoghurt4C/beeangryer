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
<ore:nuggetBrass>,
<ore:nuggetBronze>,
<ore:nuggetChrome>,
<ore:nuggetConstantan>,
<ore:nuggetSignalum>,
<ore:nuggetLumium>,
<ore:nuggetEnderium>,
<ore:nuggetTitanium>,
<ore:nuggetTungsten>,
<ore:nuggetHotTungstensteel>,
<ore:nuggetTungstensteel>,
<ore:nuggetZinc>,
<ore:nuggetRefinedIron>,
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
<ore:ingotBrass>,
<ore:ingotBronze>,
<ore:ingotChrome>,
<ore:ingotConstantan>,
<ore:ingotSignalum>,
<ore:ingotLumium>,
<ore:ingotEnderium>,
<ore:ingotTitanium>,
<ore:ingotTungsten>,
<ore:ingotHotTungstensteel>,
<ore:ingotTungstensteel>,
<ore:ingotZinc>,
<ore:ingotRefinedIron>,
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
<ore:blockBrass>,
<ore:blockBronze>,
<ore:blockChrome>,
<ore:blockConstantan>,
<ore:blockSignalum>,
<ore:blockLumium>,
<ore:blockEnderium>,
<ore:blockTitanium>,
<ore:blockTungsten>,
<ore:blockHotTungstensteel>,
<ore:blockTungstensteel>,
<ore:blockZinc>,
<ore:blockRefinedIron>,
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
<ore:gearBrass>,
<ore:gearBronze>,
<ore:gearChrome>,
<ore:gearConstantan>,
<ore:gearSignalum>,
<ore:gearLumium>,
<ore:gearEnderium>,
<ore:gearTitanium>,
<ore:gearTungsten>,
<ore:gearHotTungstensteel>,
<ore:gearTungstensteel>,
<ore:gearZinc>,
<ore:gearRefinedIron>
] as IOreDictEntry[];
for item in rmOreArray {recipes.remove(item);}
//recipeid array, rather pointless but it exists
val k=0;
for k in 1 .. 20{
val rmIDArray=[	
//"techreborn:nuggets_"+k
]as string[];
for name in rmIDArray{recipes.removeByRecipeName(name);}}
//furnace rm
val rmFurnaceArray=[
<ore:nuggetIron>,
<ore:nuggetGold>
] as IOreDictEntry[];
for item in rmFurnaceArray{furnace.remove(item);}
