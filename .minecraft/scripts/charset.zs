import mods.charset.Cauldron;

var stone=<ore:stone>;
var yarn=<ore:yarn>;
var fabric=<ore:plateFabric>;
var fabricWool=<ore:plateFabric>|<ore:wool>;
var plastic=<hatchery:plastic>;
val toolRod = <ore:stickWood>|<ore:stickTreatedWood>;
recipes.addShaped("stonecauldron",<minecraft:cauldron>.withTag({display:{Name:"Stone Cauldron",Lore:["Can be filled using","§9Bowls of Water"]}}),[
[stone,null,stone],
[stone,null,stone],
[<quark:stone_wall>,<minecraft:stone_slab>,<quark:stone_wall>]]);
var stickReuse=<minecraft:stick>.reuse()|<ore:stickTreatedWood>.reuse();

recipes.addShaped("string_to_yarn",<contenttweaker:yarn>*2,[
[null,<ore:string>,null],
[<ore:string>,stickReuse,<ore:string>],
[null,<ore:string>,null]]);
recipes.addShapeless("yarn_to_wool",<minecraft:wool:0>,[
<ore:yarn>,<ore:yarn>,<ore:yarn>,<ore:yarn>]);
recipes.addShapeless("wool_to_yarn",<contenttweaker:yarn>*3,[<ore:blockWool>]);
recipes.addShaped("silk_to_yarn",<contenttweaker:yarn_silk>*2,[
[null,<forestry:crafting_material:2>,null],
[<forestry:crafting_material:2>,stickReuse,<forestry:crafting_material:2>],
[null,<forestry:crafting_material:2>,null]]);
recipes.addShapeless("woven_silk_to_yarn",<contenttweaker:yarn_silk>*5,[<forestry:crafting_material:3>]);
recipes.addShaped("fiber_to_yarn",<contenttweaker:yarn_feather>*2,[
[null,<hatchery:feather_fiber>,null],
[<hatchery:feather_fiber>,stickReuse,<hatchery:feather_fiber>],
[null,<hatchery:feather_fiber>,null]]);
recipes.addShapeless("pad_to_yarn",<contenttweaker:yarn_feather>*3,[<hatchery:fiber_pad>]);
recipes.addShaped("hemp_to_yarn",<contenttweaker:yarn_hemp>*2,[
[null,<immersiveengineering:material:4>,null],
[<immersiveengineering:material:4>,stickReuse,<immersiveengineering:material:4>],
[null,<immersiveengineering:material:4>,null]]);
recipes.addShapeless("hemp_fabric_to_yarn",<contenttweaker:yarn_hemp>*3,[<immersiveengineering:material:5>]);
recipes.addShaped("collis_to_yarn",<contenttweaker:yarn_golden>*1,[
[null,<uniquecrops:generic:6>,null],
[<uniquecrops:generic:6>,stickReuse,<uniquecrops:generic:6>],
[null,<uniquecrops:generic:6>,null]]);
recipes.addShaped("enderlily_to_yarn",<contenttweaker:yarn_ender>*2,[
[null,<uniquecrops:generic:5>,null],
[<uniquecrops:generic:5>,stickReuse,<uniquecrops:generic:5>],
[null,<uniquecrops:generic:5>,null]]);
recipes.addShaped("invisibilia_to_yarn",<contenttweaker:yarn_invisibilia>*2,[
[null,<uniquecrops:generic:11>,null],
[<uniquecrops:generic:11>,stickReuse,<uniquecrops:generic:11>],
[null,<uniquecrops:generic:11>,null]]);
mods.jei.JEI.addDescription(<contenttweaker:yarn>,"Can be woven from String and separated from Wool. Six of these can be crafted into a Swatch of Fabric by using a Loom.");
mods.jei.JEI.addDescription(<contenttweaker:fabric>,"Crafted by using a Loom while holding at least six Balls of Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_silk>,"Can be woven from Silk Wisp and separated from Woven Silk. Six of these can be crafted into a Woven Silk by using a Loom.");
mods.jei.JEI.addDescription(<forestry:crafting_material:3>,"Crafted by using a Loom while holding at least six Balls of Silk Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_feather>,"Can be woven from Feather Fibers and separated from Fiber Pads. Six of these can be crafted into a Fiber Pad by using a Loom.");
game.setLocalization("jei.item.hatchery.fiber_pad","Crafted by using a Loom while holding at least six Balls of Fiber Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_hemp>,"Can be woven from Hemp Fiber and separated from Hemp Fabric. Six of these can be crafted into a Swatch of Hemp Fabric by using a Loom.");
mods.jei.JEI.addDescription(<immersiveengineering:material:5>,"Crafted by using a Loom while holding at least six Balls of Hemp Yarn in your hand.");
game.setLocalization("item.immersiveengineering.material.hemp_fabric.name","Roll of Hemp Fabric");
mods.jei.JEI.addDescription(<contenttweaker:yarn_golden>,"Can be woven from Golden Rods. Six of these can be crafted into a Silky Cloth by using a Loom.");
mods.jei.JEI.addDescription(<tconstruct:materials:15>,"Crafted by using a Loom while holding at least six Balls of Golden ''Yarn'' in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_ender>,"Can be woven from Enderlily Twines. Six of these can be crafted into a Pulsating Mesh by using a Loom.");
mods.jei.JEI.addDescription(<forestry:crafting_material:1>,"Crafted by using a Loom while holding at least six Balls of Enderlily Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_invisibilia>,"Can be woven from Invisibilia Twines. Six of these can be crafted into an Invisibilia Feather by using a Loom.");
recipes.addShaped("loom",<contenttweaker:loom>,[
[<ore:stickWood>,<ore:yarn>,<ore:stickWood>],
[<ore:stickWood>,<ore:yarn>,<ore:stickWood>],
[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]]);
mods.jei.JEI.addDescription(<contenttweaker:loom>,"Used to weave various fibers into fabric. Try using some Yarn on it!");

recipes.addShaped("lead",<minecraft:lead>*2,[
[yarn,yarn],
[yarn,<ore:slimeball>|<thermalfoundation:material:832>|<thermalfoundation:material:833>],
[null,null,yarn]]);
recipes.addShaped("fishing_rod",<minecraft:fishing_rod>,[
[null,null,toolRod],
[null,toolRod,yarn],
[toolRod,null,yarn]]);
recipes.addShaped("bow",<minecraft:bow>,[
[null,toolRod,yarn],
[toolRod,null,yarn],
[null,toolRod,yarn]]);
recipes.addShaped("web",<minecraft:web>,[
[yarn,null,yarn],
[null,<botania:manaresource:16>,null],
[yarn,null,yarn]]);
recipes.addShapeless("redstring",<botania:manaresource:12>*2,
[yarn,<minecraft:redstone_block>,<ore:elvenPixieDust>,<minecraft:dragon_breath>]);
recipes.addShapeless("redstring_alt",<botania:manaresource:12>*2,
[yarn,<minecraft:redstone_block>,<ore:elvenPixieDust>,<botania:manaresource:15>,<minecraft:pumpkin>]);
recipes.addShaped("slimesling",<tconstruct:slimesling:0>,[
[yarn,<tconstruct:slime_congealed:0>,yarn],
[<minecraft:slime_ball>,null,<minecraft:slime_ball>],
[null,<minecraft:slime_ball>]]);
recipes.addShaped("slimesling_blue",<tconstruct:slimesling:1>,[
[yarn,<tconstruct:slime_congealed:1>,yarn],
[<tconstruct:edible:1>,null,<tconstruct:edible:1>],
[null,<tconstruct:edible:1>]]);
recipes.addShaped("slimesling_purple",<tconstruct:slimesling:2>,[
[yarn,<tconstruct:slime_congealed:2>,yarn],
[<tconstruct:edible:2>,null,<tconstruct:edible:2>],
[null,<tconstruct:edible:2>]]);
recipes.addShaped("slimesling_blood",<tconstruct:slimesling:3>,[
[yarn,<tconstruct:slime_congealed:3>,yarn],
[<tconstruct:edible:3>,null,<tconstruct:edible:3>],
[null,<tconstruct:edible:3>]]);
recipes.addShaped("slimesling_magma",<tconstruct:slimesling:4>,[
[yarn,<tconstruct:slime_congealed:4>,yarn],
[<tconstruct:edible:4>,null,<tconstruct:edible:4>],
[null,<tconstruct:edible:4>]]);
recipes.addShapeless("book_alt",<minecraft:book>,
[<ore:paper>,<ore:paper>,<ore:paper>,yarn,<ore:pattern>,<ore:pattern>]);
recipes.addShaped("tape_measure",<chiselsandbits:tape_measure>,[
[null,null,yarn],
[plastic|<ore:ingotIron>,yarn,<ore:dyeYellow>],
[plastic|<ore:ingotIron>,plastic|<ore:ingotIron>]]);
recipes.addShaped("rope",<rustic:rope>*12,[
[yarn],
[yarn],
[yarn]]);
recipes.addShaped("rustic_candle",<rustic:candle>*4,[
[yarn],
[<ore:wax>|<forestry:beeswax>],
[<minecraft:iron_ingot>]]);
recipes.addShaped("fuse",<stevescarts:modulecomponents:43>*12,[
[null,null,yarn],
[null,yarn],
[yarn]]);
recipes.addShaped("sound_muffler_bauble",<supersoundmuffler:sound_muffler_bauble>,[
[null,yarn],
[yarn,null,yarn],
[null,<supersoundmuffler:sound_muffler>]]);
recipes.addShaped("dispenser_alt0",<minecraft:dispenser>,[
[yarn,toolRod],
[yarn,<minecraft:dropper>,toolRod],
[yarn,toolRod]]);
recipes.addShaped("tallow_candle",<quark:candle:0>*2,[
[yarn],
[<ore:tallow>],
[<ore:tallow>]]);
recipes.addShaped("animal_net",<hatchery:animalnet>,[
[null,toolRod,toolRod],
[toolRod,yarn,yarn],
[null,yarn,yarn]]);
recipes.addShaped("diamond_bow",<thermalfoundation:tool.bow_diamond>,[
[null,<ore:gemDiamond>,yarn],
[toolRod,null,yarn],
[null,<ore:gemDiamond>,yarn]]);
recipes.addShaped("diamond_fishing_rod",<thermalfoundation:tool.fishing_rod_diamond>,[
[null,null,<ore:gemDiamond>],
[null,<ore:gemDiamond>,yarn],
[toolRod,null,yarn]]);
recipes.addShaped("alchemical_quiver",<thermalinnovation:quiver>.withTag({}),[
[<minecraft:glass_bottle>,<minecraft:glass_bottle>],
[<ore:ingotCopper>,<ore:leather>,yarn],
[<ore:leather>,<ore:ingotCopper>,yarn]]);
recipes.addShaped("apiarist_bag",<forestry:apiarist_bag>,[
[yarn,fabricWool,yarn],
[toolRod,<forestry:bee_chest>,toolRod],
[yarn,fabricWool,yarn]]);
recipes.addShaped("miner_bag",<forestry:miner_bag>,[
[yarn,fabricWool,yarn],
[<minecraft:iron_ingot>,<ore:chest>,<minecraft:iron_ingot>],
[yarn,fabricWool,yarn]]);
recipes.addShaped("digging_bag",<forestry:digger_bag>,[
[yarn,fabricWool,yarn],
[<ore:stone>,<ore:chest>,<ore:stone>],
[yarn,fabricWool,yarn]]);
recipes.addShaped("foresting_bag",<forestry:forester_bag>,[
[yarn,fabricWool,yarn],
[<ore:logWood>,<ore:chest>,<ore:logWood>],
[yarn,fabricWool,yarn]]);
recipes.addShaped("hunter_bag",<forestry:hunter_bag>,[
[yarn,fabricWool,yarn],
[<ore:feather>,<ore:chest>,<ore:feather>],
[yarn,fabricWool,yarn]]);
recipes.addShaped("adventurer_bag",<forestry:adventurer_bag>,[
[yarn,fabricWool,yarn],
[<minecraft:bone>,<ore:chest>,<minecraft:bone>],
[yarn,fabricWool,yarn]]);
recipes.addShaped("builder_bag",<forestry:builder_bag>,[
[yarn,fabricWool,yarn],
[<minecraft:clay_ball>,<ore:chest>,<minecraft:clay_ball>],
[yarn,fabricWool,yarn]]);
recipes.addShaped("untreated_frame",<forestry:frame_untreated>,[
[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>],
[<minecraft:stick>,yarn,<minecraft:stick>],
[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>]]);
recipes.addShaped("impregnated_frame",<forestry:frame_impregnated>,[
[<forestry:oak_stick>,<forestry:oak_stick>,<forestry:oak_stick>],
[<forestry:oak_stick>,yarn,<forestry:oak_stick>],
[<forestry:oak_stick>,<forestry:oak_stick>,<forestry:oak_stick>]]);
recipes.addShaped("wire_bundled",<charset:logic_wire_b:0>,[
[yarn,<ore:wireLogicInsulatedGrounded>,yarn],
[<ore:wireLogicInsulatedGrounded>,<ore:wireLogicInsulatedGrounded>,<ore:wireLogicInsulatedGrounded>],
[yarn,<ore:wireLogicInsulatedGrounded>,yarn]]);
recipes.addShaped("wire_bundled_fs",<charset:logic_wire_b:1>,[
[yarn,<ore:wireLogicInsulatedFreestanding>,yarn],
[<ore:wireLogicInsulatedFreestanding>,<ore:wireLogicInsulatedFreestanding>,<ore:wireLogicInsulatedFreestanding>],
[yarn,<ore:wireLogicInsulatedFreestanding>,yarn]]);
for i in 0 .. 16{
	var quiltedWool=<quark:quilted_wool>.definition.makeStack(i);
	var wool=<minecraft:wool>.definition.makeStack(i);
	recipes.remove(quiltedWool);
	recipes.addShaped("quilted_wool_"+i,quiltedWool*3,[
	[null,yarn],
	[wool,wool,wool],
	[null,yarn]]);
}

recipes.addShaped("white_bed",<minecraft:bed:0>,[
[fabric|<minecraft:wool:0>,fabric|<minecraft:wool:0>,fabric|<minecraft:wool:0>],
[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
recipes.addShaped("white_banner",<minecraft:banner:15>,[
[fabric|<minecraft:wool:0>,fabric|<minecraft:wool:0>,fabric|<minecraft:wool:0>],
[fabric|<minecraft:wool:0>,fabric|<minecraft:wool:0>,fabric|<minecraft:wool:0>],
[null,toolRod]]);
recipes.addShaped("painting",<minecraft:painting>,[
[toolRod,toolRod,toolRod],
[toolRod,fabricWool,toolRod],
[toolRod,toolRod,toolRod]]);
recipes.addShapeless("covered_fluix",<appliedenergistics2:part:36>,
[fabricWool,<appliedenergistics2:part:16>]);
recipes.addShaped("cell_workbench",<appliedenergistics2:cell_workbench>,[
[fabricWool,<appliedenergistics2:material:23>,fabricWool],
[<ore:ingotIron>,<ore:chestWood>,<ore:ingotIron>],
[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>]]);
recipes.addShapeless("ae2_fuzzy_card",<appliedenergistics2:material:29>,
[<appliedenergistics2:material:28>,fabricWool]);
recipes.addShaped("skin_cube",<armourers_workshop:tile.skin-cube>*16,[
[fabricWool,fabricWool,fabricWool],
[fabricWool,plastic|<minecraft:iron_ingot>,fabricWool],
[fabricWool,fabricWool,fabricWool]]);
recipes.addShaped("supercloudpendant",<botania:supercloudpendant>,[
[<minecraft:ghast_tear>,<ore:ingotElvenElementium>,<minecraft:ghast_tear>],
[<minecraft:ghast_tear>,<botania:cloudpendant>,<minecraft:ghast_tear>],
[fabricWool,<botania:manaresource:5>,fabricWool]]);
recipes.addShaped("paintslingerlens",<botania:lens:14>.withTag({}),[
[null,<ore:ingotElvenElementium>],
[fabricWool,<botania:lens:0>,fabricWool],
[null,<ore:ingotElvenElementium>]]);
recipes.addShaped("invisibilitycloak",<botania:invisibilitycloak>,[
[<ore:dustPrismarine>,fabricWool,<ore:dustPrismarine>],
[<botania:managlass>,fabricWool,<botania:managlass>],
[<botania:managlass>,<ore:manaPearl>,<botania:managlass>]]);
recipes.addShaped("holycloak",<botania:holycloak>,[
[fabricWool,fabricWool,fabricWool],
[<ore:dustGlowstone>,fabricWool,<ore:dustGlowstone>],
[<ore:dustGlowstone>,<botania:manaresource:5>,<ore:dustGlowstone>]]);
recipes.addShaped("flowerbag",<botania:flowerbag>,[
[fabricWool,<botania:petal:*>,fabricWool],
[fabricWool,null,fabricWool],
[null,fabricWool]]);
recipes.addShaped("bit_bag",<chiselsandbits:bit_bag>.withTag({contents: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] as int[]}),[
[fabricWool,fabricWool,fabricWool],
[fabricWool,<chiselsandbits:block_bit>.withTag({id:1 as int}),fabricWool],
[fabricWool,fabricWool,fabricWool]]);
recipes.addShaped("torch_ie",<minecraft:torch>*12,[
[fabricWool,<forge:bucketfilled>.withTag({FluidName:"creosote",Amount:1000 as int})],
[toolRod,toolRod,toolRod]]);
recipes.addShaped("earmuffs",<immersiveengineering:earmuffs>,[
[null,<ore:stickIron>],
[<ore:stickIron>,null,<ore:stickIron>],
[fabricWool,null,fabricWool]]);
recipes.addShaped("sound_muffler",<supersoundmuffler:sound_muffler>,[
[null,fabricWool],
[fabricWool,<minecraft:noteblock>,fabricWool],
[null,fabricWool]]);
recipes.addShaped("3dglasses",<uniquecrops:3dglasses>.withTag({}),[
[plastic|<ore:ingotIron>,null,plastic|<ore:ingotIron>],
[plastic|<ore:ingotIron>,null,plastic|<ore:ingotIron>],
[<ore:paneGlassBlue>,fabricWool,<ore:paneGlassRed>]]);
recipes.addShaped("satchel_te",<thermalexpansion:satchel:0>,[
[null,<minecraft:leather>|<ore:blockRockwool>],
[<ore:ingotTin>,fabricWool,<ore:ingotTin>],
[<minecraft:leather>|<ore:blockRockwool>,yarn,<minecraft:leather>|<ore:blockRockwool>]]);
recipes.addShaped("pipette",<forestry:pipette>,[
[null,null,fabricWool|<ore:itemRubber>],
[null,<ore:paneGlass>],
[<ore:paneGlass>]]);
recipes.addShaped("scoop",<forestry:scoop>,[
[toolRod,fabricWool,toolRod],
[toolRod,toolRod,toolRod],
[null,toolRod]]);

/*
recipes.addShaped("",<>,[
[],
[],
[]]);
*/

recipes.addShaped("apiarist_hat",<forestry:apiarist_helmet>,[
[fabric,fabric,fabric],
[fabric,null,fabric]]);
recipes.addShaped("apiarist_chest",<forestry:apiarist_chest>,[
[fabric,null,fabric],
[fabric,fabric,fabric],
[fabric,fabric,fabric]]);
recipes.addShaped("apiarist_legs",<forestry:apiarist_legs>,[
[fabric,fabric,fabric],
[fabric,null,fabric],
[fabric,null,fabric]]);
recipes.addShaped("apiarist_boots",<forestry:apiarist_boots>,[
[fabric,null,fabric],
[fabric,null,fabric]]);
recipes.addShaped("alveary_sieve",<forestry:alveary.sieve>,[
[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
[null,<forestry:alveary.plain>],
[fabric,fabric,fabric]]);
recipes.addShaped("wirecoil_mv_ins",<immersiveengineering:wirecoil:7>*4,[
[fabric,<immersiveengineering:wirecoil:1>,fabric],
[<immersiveengineering:wirecoil:1>,<forge:bucketfilled>.withTag({FluidName:"creosote",Amount:1000 as int}),<immersiveengineering:wirecoil:1>],
[fabric,<immersiveengineering:wirecoil:1>,fabric]]);
recipes.addShaped("wirecoil_lv_ins",<immersiveengineering:wirecoil:6>*4,[
[fabric,<immersiveengineering:wirecoil:0>,fabric],
[<immersiveengineering:wirecoil:0>,fabric,<immersiveengineering:wirecoil:0>],
[fabric,<immersiveengineering:wirecoil:0>,fabric]]);
recipes.addShaped("maintenance_kit",<immersiveengineering:maintenance_kit>,[
[<ore:stickIron>,<immersiveengineering:tool:1>],
[fabric,fabric,fabric]]);
recipes.addShaped("windmill_sail",<immersiveengineering:material:12>,[
[null,fabric,fabric],
[fabric,fabric,fabric],
[null,fabric]]);
recipes.addShaped("strip_curtain",<immersiveengineering:cloth_device:2>*3,[
[<ore:stickAluminum>|<ore:stickIron>|<ore:stickSteel>,<ore:stickAluminum>|<ore:stickIron>|<ore:stickSteel>,<ore:stickAluminum>|<ore:stickIron>|<ore:stickSteel>],
[fabric,fabric,fabric],
[fabric,fabric,fabric]]);
recipes.addShaped("jump_cushion",<immersiveengineering:cloth_device:0>*3,[
[fabric,fabric,fabric],
[fabric,null,fabric],
[fabric,fabric,fabric]]);
recipes.addShaped("balloon_ie",<immersiveengineering:cloth_device:1>*2,[
[null,fabric],
[fabric,<ore:torch>,fabric],
[null,<ore:slabTreatedWood>]]);
//mods.charset.Cauldron.addItemRecipe(inputstack, fluid*int, outputstack);
//black chicken
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [15 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blackchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blackchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//red
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [14 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//green
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [13 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//brown
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [12 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:brownchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:brownchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//blue
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [11 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:bluechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:bluechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//purple
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [10 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:purplechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:purplechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//cyan
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [9 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:cyanchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:cyanchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//lightgray
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [8 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//gray
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [7 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:graychicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:graychicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//pink
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [6 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pinkchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pinkchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//lime
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [5 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:limechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:limechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//yellow
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [4 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//lightblue
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [3 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//magenta
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [2 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:magentachicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:magentachicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//orange
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [1 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:orangechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:orangechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//white
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [0 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:whitechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:whitechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));

//"boiling" recipes
//mods.charset.Cauldron.addItemFluidRecipe(inputstack, inputfluidstack*int, outputstack,  outputfluidstack*int);
Cauldron.addItemFluidRecipe(
<minecraft:sapling>, 
<liquid:water>*1000, 
null,  
<liquid:saplingslumgullion>*1000);

Cauldron.addItemFluidRecipe(
<botania:manaresource:6>, 
<liquid:saplingslumgullion>*1000, 
null,  
<liquid:excitedsaplingslumgullion>*1000);

Cauldron.addItemFluidRecipe(
<techreborn:dust:8>, 
<liquid:excitedsaplingslumgullion>*1000, 
null,  
<liquid:enrichedexcitedsaplingslumgullion>*1000);

Cauldron.addItemRecipe(
<minecraft:egg>, 
<liquid:enrichedexcitedsaplingslumgullion>*1000, 
<contenttweaker:mutandis>*16);

<contenttweaker:mutandis>.addTooltip(format.gray(format.italic("Hold SHIFT for a recipe...")));
<contenttweaker:mutandis>.addShiftTooltip(format.green("1. Put an "+format.underline("Oak Sapling")+" into"));
<contenttweaker:mutandis>.addShiftTooltip(format.green("    a "+format.gray(format.underline("Cauldron"))+" with "+format.blue(format.underline("Water."))));
<contenttweaker:mutandis>.addShiftTooltip(format.green("2. Add a "+format.red(format.underline("Redstone Root"))+" in."));
<contenttweaker:mutandis>.addShiftTooltip(format.green("3. Add some "+format.yellow(format.underline("Calcite"))+"."));
<contenttweaker:mutandis>.addShiftTooltip(format.green("4. Finally, top with an "+format.gold(format.underline("Egg"))+"."));

Cauldron.addItemFluidRecipe(
<contenttweaker:firedeggshells>, 
<liquid:water>*1000, 
null,  
<liquid:dissolvedeggshells>*1000);
mods.jei.JEI.addDescription(<liquid:dissolvedeggshells>,["Obtained by dissolving Fired Egg Shells in a Water-filled Cauldron. Look at the Soggy Lime tooltip or description to see the entire process."]);
Cauldron.addItemFluidRecipe(
<contenttweaker:salt_cube>*1, 
<liquid:liquidchicken>*1000, 
null,  
<liquid:chickenstock>*750);
mods.jei.JEI.addDescription(<liquid:chickenstock>,["Prepared by putting a Salt Cube into a full Cauldron of Liquid Poultry. Very bland, inefficient, and requires various tools to manage. Can be made in a variety of other, more industrialized ways."]);

Cauldron.addItemRecipe(
<techreborn:smalldust:12>, 
<liquid:dissolvedeggshells>*125, 
<contenttweaker:soggylime>);
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "minecraft:chicken", Gain: 1, Strength: 1}), 
<liquid:dissolvedeggshells>*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:calcitechicken", Gain: 1, Strength: 1}));
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "minecraft:chicken", Gain: 1, Strength: 1}), 
<liquid:for.honey>*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:honeychicken", Gain: 1, Strength: 1}));

Cauldron.addItemFluidRecipe(
<hatchery:manure_block>, 
<liquid:water>*1000, 
null,  
<liquid:liquid_fertilizer>*1000);
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "minecraft:chicken", Gain: 1, Strength: 1}), 
<liquid:for.honey>*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:manurechicken", Gain: 1, Strength: 1}));

furnace.addRecipe(<quark:glass_shards>,<ore:sand>,0.1);

mods.jei.JEI.addDescription(<contenttweaker:soggylime>,[
"Necessary for progression, and somewhat of a pain to obtain. See Guidebook for an in-depth breakdown, or look at the tooltip."]);
<contenttweaker:soggylime>.addTooltip(format.gray(format.italic("Hold SHIFT for a recipe...")));
<contenttweaker:soggylime>.addShiftTooltip(format.green("1. Pan sand for "+format.gold(format.underline("Egg Shells"+"."))));
<contenttweaker:soggylime>.addShiftTooltip(format.green("2. Make them spend some time in "+format.red("heat")+"."));
<contenttweaker:soggylime>.addShiftTooltip(format.green("3. Put the "+format.gray(format.underline("Fired Egg Shells"))+" into "));
<contenttweaker:soggylime>.addShiftTooltip(format.green("     a "+format.blue(format.underline("Water"))+"-filled "+format.gray("Crucible"+".")));
<contenttweaker:soggylime>.addShiftTooltip(format.green("4. Mix in a "+format.aqua(format.underline("Small Pile of Clay Dust"))+"."));
<contenttweaker:soggylime>.addShiftTooltip(format.green("5. Put the mixture somewhere it can "+format.yellow("dry up"+".")));
<contenttweaker:soggylime>.addShiftTooltip("");
<contenttweaker:soggylime>.addShiftTooltip(format.green("There are recipes that allow you"));
<contenttweaker:soggylime>.addShiftTooltip(format.green("to "+format.italic("skip")+" some of these steps!"));