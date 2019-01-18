import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

//JEI
val goneForever=[
<thermalexpansion:device:10>,
<thermalexpansion:augment:416>,
<techreborn:solar_panel:0>,
<techreborn:solar_panel:1>,
<techreborn:solar_panel:2>,
<techreborn:solar_panel:3>,
<techreborn:solar_panel:4>,
<techreborn:creative_solar_panel>,
<techreborn:magic_energy_absorber>,
<techreborn:dragon_egg_syphon>,
<techreborn:magic_energy_converter>,
<techreborn:nuggets:16>,
<forestry:greenhouse>,
<forestry:greenhouse:3>,
<forestry:greenhouse:4>,
<forestry:greenhouse:5>,
<forestry:climatiser>,
<forestry:climatiser:1>,
<forestry:climatiser:2>,
<forestry:climatiser:3>,
<forestry:climatiser:4>,
<forestry:greenhouse.window>,
<forestry:greenhouse.window_up>
] as IItemStack[];
for trash in goneForever{JEI.removeAndHide(trash,false);}
JEI.hideCategory("thermalexpansion.factorizer_combine");
JEI.hideCategory("thermalexpansion.factorizer_split");
JEI.hideCategory("thermalexpansion.centrifuge_mobs");

//heuristic removal array, put in `<modid:item>` with commas after each, except the last, for removal
val rmSpecArray=[
<forestry:sturdy_machine>,
<forestry:carpenter>,
<forestry:centrifuge>,
<forestry:squeezer>,
<forestry:fabricator>,
<forestry:habitat_former>,
<genetics:misc>,
<techreborn:ingot:16>,
<modularmachinery:itemmodularium>
] as IItemStack[];
for item in rmSpecArray {recipes.remove(item);}
val scrapbox=[
<minecraft:gold_nugget>,
<techreborn:nuggets>,
<techreborn:nuggets:1>,
<techreborn:nuggets:2>,
<techreborn:nuggets:3>,
<techreborn:nuggets:4>,
<techreborn:nuggets:5>,
<techreborn:nuggets:6>,
<techreborn:nuggets:7>,
<techreborn:nuggets:8>,
<techreborn:nuggets:9>,
<techreborn:nuggets:10>,
<techreborn:nuggets:11>,
<techreborn:nuggets:12>,
<techreborn:nuggets:13>,
<techreborn:nuggets:14>,
<techreborn:nuggets:15>,
<techreborn:nuggets:16>,
<techreborn:nuggets:17>,
<techreborn:nuggets:18>,
<techreborn:nuggets:19>,
<techreborn:nuggets:23>,
<techreborn:nuggets:24>] as IItemStack[];
for item in scrapbox{mods.techreborn.scrapbox.removeRecipe(item);}
//techreborn still sucks
val lowercaseplates ={
<ore:platebrass>:<techreborn:plates:17>,
<ore:platechrome>:<techreborn:plates:19>,
<ore:plateplatinum>:<techreborn:plates:26>,
<ore:platetitanium>:<techreborn:plates:30>,
<ore:platetungsten>:<techreborn:plates:31>,
<ore:platetungstensteel>:<techreborn:plates:32>,
<ore:platezinc>:<techreborn:plates:33>,
<ore:platerefinediron>:<techreborn:plates:34>,
<ore:plateadvancedalloy>:<techreborn:plates:35>,
<ore:platemagnalium>:<techreborn:plates:36>,
<ore:plateiridiumAlloy>:<techreborn:plates:37>} as IItemStack[IOreDictEntry];
for plate, item in lowercaseplates{plate.remove(item);}
<ore:ingotHotTungstensteel>.remove(<techreborn:ingot:16>);
//recipeid array, rather pointless but it exists
val k=0;
for k in 1 .. 20{
val rmIDArray=[	
"minecraft:orange_stained_glass"
]as string[];
for name in rmIDArray{recipes.removeByRecipeName(name);}}
//furnace rm
val rmFurnaceArray=[
<ore:nuggetIron>,
<ore:nuggetGold>
] as IOreDictEntry[];
for item in rmFurnaceArray{furnace.remove(item);}
