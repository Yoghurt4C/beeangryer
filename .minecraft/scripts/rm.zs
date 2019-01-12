import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//heuristic removal array, put in `<modid:item>` with commas after each, except the last, for removal
val rmSpecArray=[
<forestry:sturdy_machine>,
<forestry:carpenter>,
<forestry:centrifuge>,
<forestry:squeezer>
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
<ore:nuggetEnderium>
] as IOreDictEntry[];
for item in rmOreArray {recipes.remove(item);}
//removal by id, arrays are prohibited?
