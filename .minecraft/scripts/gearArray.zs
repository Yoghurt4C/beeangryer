import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
var grafter=<forestry:grafter>.anyDamage().transformDamage(1);
var grafterProven=<forestry:grafter_proven>.anyDamage().transformDamage(1);
var gearIron=<thermalfoundation:material:24>;
var gearGold=<thermalfoundation:material:25>;
var gearCopper=<thermalfoundation:material:256>;
var gearTin=<thermalfoundation:material:257>;
var gearSilver=<thermalfoundation:material:258>;
var gearLead=<thermalfoundation:material:259>;
var gearAluminum=<thermalfoundation:material:260>;
var gearNickel=<thermalfoundation:material:261>;
var gearPlatinum=<thermalfoundation:material:262>;
var gearIridium=<thermalfoundation:material:263>;
var gearMithril=<thermalfoundation:material:264>;
var gearSteel=<thermalfoundation:material:288>;
var gearElectrum=<thermalfoundation:material:289>;
var gearInvar=<thermalfoundation:material:290>;
var gearBronze=<thermalfoundation:material:291>;
var gearConstantan=<thermalfoundation:material:292>;
var gearSignalum=<thermalfoundation:material:293>;
var gearLumium=<thermalfoundation:material:294>;
var gearEnderium=<thermalfoundation:material:295>;

val nuggetArray=[
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
val plateArray=[
<ore:plateIron>,
<ore:plateGold>,
<ore:plateCopper>,
<ore:plateTin>,
<ore:plateSilver>,
<ore:plateLead>,
<ore:plateAluminum>,
<ore:plateNickel>,
<ore:platePlatinum>,
<ore:plateIridium>,
<ore:plateMithril>,
<ore:plateSteel>,
<ore:plateElectrum>,
<ore:plateInvar>,
<ore:plateBronze>,
<ore:plateConstantan>,
<ore:plateSignalum>,
<ore:plateLumium>,
<ore:plateEnderium>
] as IOreDictEntry[];
val gearArray=[
gearIron,
gearGold,
gearCopper,
gearTin,
gearSilver,
gearLead,
gearAluminum,
gearNickel,
gearPlatinum,
gearIridium,
gearMithril,
gearSteel,
gearElectrum,
gearInvar,
gearBronze,
gearConstantan,
gearSignalum,
gearLumium,
gearEnderium
] as IItemStack[];
for i,item in gearArray{recipes.addShaped(item,[
[nuggetArray[i],plateArray[i],nuggetArray[i]],
[plateArray[i],grafter,plateArray[i]],
[nuggetArray[i],plateArray[i],nuggetArray[i]]]);}
for i,item in gearArray{recipes.addShaped(item,[
[nuggetArray[i],plateArray[i],nuggetArray[i]],
[plateArray[i],grafterProven,plateArray[i]],
[nuggetArray[i],plateArray[i],nuggetArray[i]]]);}