import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
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
<techreborn:iron_alloy_furnace>,
<techreborn:alloy_smelter>,
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
<forestry:greenhouse.window_up>,
<chickens:colored_egg:*>,
<modularmachinery:blockinputbus>,
<modularmachinery:blockoutputbus>,
<modularmachinery:blockinputbus:2>,
<modularmachinery:blockoutputbus:2>,
<modularmachinery:blockinputbus:4>,
<modularmachinery:blockoutputbus:4>,
<modularmachinery:blockfluidinputhatch:1>,
<modularmachinery:blockfluidoutputhatch:1>,
<modularmachinery:blockfluidinputhatch:4>,
<modularmachinery:blockfluidoutputhatch:4>,
<binniecore:glass>,
<thermalexpansion:device:2>,
<hatchery:pen>,
<notenoughwands:freezing_wand>,
<appliedenergistics2:inscriber>,
<appliedenergistics2:material:13>,
<appliedenergistics2:material:16>,
<appliedenergistics2:material:14>,
<appliedenergistics2:material:17>,
<appliedenergistics2:material:15>,
<appliedenergistics2:material:18>,
<appliedenergistics2:material:21>,
<appliedenergistics2:material:19>,
<appliedenergistics2:material:20>,
<appliedenergistics2:material:40>,
<thermalexpansion:machine:3>,
<thermalexpansion:augment:304>,
<contenttweaker:guidebook>
] as IItemStack[];
for trash in goneForever{JEI.removeAndHide(trash,false);}
JEI.hideCategory("thermalexpansion.factorizer_combine");
JEI.hideCategory("thermalexpansion.factorizer_split");
JEI.hideCategory("thermalexpansion.centrifuge_mobs");
JEI.hideCategory("TechReborn.AlloySmelter");
JEI.hideCategory("ie.blastfurnace");
JEI.hideCategory("ie.blastfurnace.fuel");
JEI.hideCategory("ie.alloysmelter");
JEI.hideCategory("chickens.Henhousing");
JEI.hideCategory("appliedenergistics2.inscriber");
JEI.hideCategory("thermalexpansion.smelter");
JEI.hideCategory("thermalexpansion.smelter_pyrotheum");

//heuristic removal array, put in `<modid:item>` with commas after each, except the last, for removal
val rmSpecArray=[
<forestry:sturdy_machine>,
<forestry:carpenter>,
<forestry:centrifuge>,
<forestry:squeezer>,
<forestry:fabricator>,
<forestry:habitat_former>,
<genetics:misc>,
<tconstruct:clear_stained_glass:1>,
<techreborn:ingot:16>,
<modularmachinery:itemmodularium>,
<chickens:colored_egg>,
<chickens:colored_egg:1>,
<chickens:colored_egg:2>,
<chickens:colored_egg:3>,
<chickens:colored_egg:4>,
<chickens:colored_egg:5>,
<chickens:colored_egg:6>,
<chickens:colored_egg:7>,
<chickens:colored_egg:8>,
<chickens:colored_egg:9>,
<chickens:colored_egg:10>,
<chickens:colored_egg:11>,
<chickens:colored_egg:12>,
<chickens:colored_egg:13>,
<chickens:colored_egg:14>,
<chickens:colored_egg:15>,
<modularmachinery:blockinputbus:1>,
<modularmachinery:blockoutputbus:1>,
<modularmachinery:blockfluidinputhatch:0>,
<modularmachinery:blockfluidoutputhatch:0>,
<uniquecrops:generic:12>
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
<techreborn:nuggets:24>,
<techreborn:rubber_sapling>] as IItemStack[];
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
val magmaCrucibleArray=[
<minecraft:emerald_ore>,
<thermalfoundation:ore:4>,
<minecraft:gold_ore>,
<tconstruct:ore>,
<thermalfoundation:ore:5>,
<thermalfoundation:ore:6>,
<thermalfoundation:ore:2>,
<thermalfoundation:ore:1>,
<thermalfoundation:ore>,
<thermalfoundation:ore:3>,
<tconstruct:ore:1>,
<minecraft:iron_ore>,
<thermalfoundation:ore:7>
] as IItemStack[];
for ore in magmaCrucibleArray{mods.thermalexpansion.Crucible.removeRecipe(ore);}
//recipeid array, rather pointless but it exists
val rmIDArray=[	
"forestry:greenhouse_fan",
"forestry:greenhouse_control",
"forestry:greenhouse_dehumidifier",
"forestry:greenhouse_humidifier",
"forestry:greenhouse_window",
"forestry:greenhouse_window_roof",
"minecraft:orange_stained_glass",
"ceramics:decoration/unfired_porcelain_bone_meal",
"techreborn:machine_frame",
"techreborn:compressor",
"binniecore:compartment",
"forestry:bee_house",
"minecraft:furnace",
//"minecraft:cauldron",
"forestry:charcoal_block",
"thermalfoundation:storage_resource",
"chisel:charcoal",
"hatchery:circuit_recipe",
"modularmachinery:controller",
"modularmachinery:casing_plain",
"modularmachinery:casing_reinforced",
"modularmachinery:energy_output_tiny",
"modularmachinery:casing_firebox",
"modularmachinery:energy_input_tiny",
"modularmachinery:energy_input_small",
"modularmachinery:energy_output_small",
"stevescarts:component/large_lump_of_galgador",
"stevescarts:component/lump_of_galgador",
"stevescarts:component/stabilized_metal",
"techreborn:iron_furnace",
"minecraft:diorite",
"minecraft:granite",
"minecraft:andesite",
"quark:basalt_1",
"hatchery:mealpulp_recipe",
"quark:hopper",
"forestry:ash_brick",
"buildinggadgets:templatemanager",
"buildinggadgets:buildingtool",
"buildinggadgets:exchangingtool",
"buildinggadgets:copypastetool",
"buildinggadgets:destructiontool",
"roost:catcher",
"fluidcows:halter",
"hatchery:egg_null_recipe",
"appliedenergistics2:misc/grindstone",
"immersiveengineering:tool/hammer",
"immersiveengineering:stone_decoration/cokeblock",
"binniecore:glass_container",
"binniecore:glass_container_conversion",
"forestry:wood_pile",
"botania:felpumpkin",
"uniquecrops:ender_pearl",
"appliedenergistics2:network/blocks/inscribers",
"flopper:flopper",
"minecraft:string_to_wool",
"hatchery:fiberpad_recipe",
"hatchery:string_recipe",
"hatchery:wool_recipe",
"forestry:silk_to_string",
"immersiveengineering:material/string",
"immersiveengineering:material/hemp_fabric",
"tconstruct:tools/materials/silky_cloth",
"minecraft:bone_meal_from_block",
"quark:bark",
"quark:bark_1",
"quark:bark_2",
"quark:bark_3",
"quark:bark_4",
"quark:bark_5",
"thermalfoundation:paper"
//"compactmachines3:fieldprojector"
]as string[];
for name in rmIDArray{recipes.removeByRecipeName(name);}
//furnace rm
val rmFurnaceODArray=[
<ore:nuggetIron>,
<ore:nuggetGold>,
<ore:blockGlass>,
<ore:itemSilicon>,
<ore:ingotBrickSeared>,
<ore:charcoal>
] as IOreDictEntry[];
for item in rmFurnaceODArray{furnace.remove(item);}
//ticon alloying
val rmTiConAlloyArray=[
<liquid:constantan>,
<liquid:invar>,
<liquid:signalum>,
<liquid:lumium>,
<liquid:enderium>,
<liquid:alumite>,
<liquid:knightslime>,
<liquid:pigiron>,
<liquid:manyullyn>,
<liquid:bronze>,
<liquid:electrum>,
<liquid:alubrass>,
<liquid:brass>] as ILiquidStack[];
for metal in rmTiConAlloyArray{mods.tconstruct.Alloy.removeRecipe(metal);}
recipes.remove(<techreborn:smalldust:*>);
mods.tconstruct.Alloy.removeRecipe(<liquid:constantan>*2, [<liquid:copper>*1, <liquid:nickel>*1]);
mods.tconstruct.Alloy.removeRecipe(<liquid:obsidian>);
mods.tconstruct.Alloy.removeRecipe(<liquid:clay>);
val mobStringArray as string[]=[
"minecraft:blaze",
"minecraft:cave_spider",
"minecraft:creeper",
"minecraft:elder_guardian",
"minecraft:enderman",
"minecraft:evocation_illager",
"minecraft:ghast",
"minecraft:guardian",
"minecraft:husk",
"minecraft:magma_cube",
"minecraft:parrot",
"minecraft:shulker",
"minecraft:skeleton",
"minecraft:skeleton_horse",
"minecraft:slime",
"minecraft:spider",
"minecraft:stray",
"minecraft:vex",
"minecraft:vindication_illager",
"minecraft:witch",
"minecraft:wither_skeleton",
"minecraft:zombie",
"minecraft:zombie_horse",
"minecraft:zombie_pigman",
"minecraft:zombie_villager"
];
for entry in mobStringArray{
mods.jei.JEI.hide(<minecraft:spawn_egg>.withTag({EntityTag: {id: entry}}));}
for portal in loadedMods["randomportals"].items{mods.jei.JEI.hide(portal);}