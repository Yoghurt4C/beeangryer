import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

var limestone=<ore:stoneLimestone>;
var plastic=<hatchery:plastic>;
var circuitOrganic=<hatchery:circuit_board>;
var monitor=<techreborn:part:24>;
val toolRod = <ore:stickWood>|<ore:stickTreatedWood>;
recipes.addShaped("firestarter",<contenttweaker:firestarter>,[
[null,<ore:stickWood>],
[<ore:stickWood>,<minecraft:wheat>]]);
<contenttweaker:firestarter>.addTooltip(format.red(format.italic("Very cheap flint and steel alternative.")));
<contenttweaker:firestarter>.addShiftTooltip(format.red(format.italic("Not very reliable.")));
<quark:charcoal_block>.addTooltip(format.red(format.italic("Burns forever, like netherrack!")));
recipes.addShaped("plunger",<contenttweaker:plunger>,[
[null,<ore:petalOrange>,<minecraft:leather>|<techreborn:part:32>],
[<ore:yarn>,toolRod,<ore:petalOrange>],
[toolRod,<ore:paper>,null]]);

recipes.addShaped("salt_block",<contenttweaker:salt_block>,[
[<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,<contenttweaker:salt_cube>],
[<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,<contenttweaker:salt_cube>],
[<contenttweaker:salt_cube>,<contenttweaker:salt_cube>,<contenttweaker:salt_cube>]]);

var barkArray as IItemStack[IItemStack]={
	<minecraft:log>:<quark:bark:0>,
	<minecraft:log:1>:<quark:bark:1>,
	<minecraft:log:2>:<quark:bark:2>,
	<minecraft:log:3>:<quark:bark:3>,
	<minecraft:log2>:<quark:bark:4>,
	<minecraft:log2:1>:<quark:bark:5>
};
for log, bark in barkArray{recipes.addShaped("bark"+bark.damage,bark*4,[
[log,log],
[log,log]]);}
recipes.addShaped("brimstone",<quark:biome_cobblestone>*8,[
[<ore:cobblestone>,<botania:quartz:2>],
[<botania:quartz:2>,<ore:cobblestone>]]);
recipes.addShaped("permafrost",<quark:biome_cobblestone:1>*8,[
[<ore:cobblestone>,<forestry:pollen:1>],
[<forestry:pollen:1>,<ore:cobblestone>]]);
recipes.addShaped("smoker",<quark:smoker>,[
[null,<simplyjetpacks:metaitem:2>,null],
[<ore:dustRedstone>,<ore:netherrack>,<ore:dustRedstone>]]);

recipes.addShapeless("vertical_end_portal_frame",<randomportals:vertical_end_portal_frame>,[<minecraft:end_portal_frame>]);
recipes.addShapeless("upside_down_end_portal_frame",<randomportals:upside_down_end_portal_frame>,[<randomportals:vertical_end_portal_frame>]);
recipes.addShapeless("lateral_end_portal_frame",<minecraft:end_portal_frame>,[<randomportals:upside_down_end_portal_frame>]);

recipes.addShaped("ash_brick",<forestry:ash_brick>*3,[
[<ore:dustAsh>,<ore:dustClay>,<ore:dustAsh>],
[<ore:dustClay>,null,<ore:dustClay>],
[<ore:dustAsh>,<ore:dustClay>,<ore:dustAsh>]]);
recipes.addShaped("limestone_furnace",<minecraft:furnace>,[
[limestone,limestone,limestone],
[limestone,null,limestone],
[limestone,limestone,limestone]]);
<minecraft:furnace>.addShiftTooltip(format.	darkPurple(format.italic("How does this thing not melt?..")));
recipes.addShaped("template_manager",<buildinggadgets:templatemanager>,[
[plastic,monitor,plastic],
[plastic,circuitOrganic,plastic],
[plastic,<tconstruct:tooltables:4>,plastic]]);
recipes.addShaped("building_gadget",<buildinggadgets:buildingtool>.withTag({mode: "BuildToMe", blockstate: {Name: "minecraft:air"}}),[
[plastic,circuitOrganic,plastic],
[<ore:dyeBlue>,monitor,<ore:dyeBlue>],
[plastic,<ore:buttonWood>,plastic]]);
recipes.addShaped("exchanging_gadget",<buildinggadgets:exchangertool>.withTag({mode: "Surface", range: 1, blockstate: {Name: "minecraft:air"}}),[
[plastic,<ore:dyeGreen>,plastic],
[circuitOrganic,monitor,<ore:dyeGreen>],
[plastic,<ore:buttonWood>,plastic]]);
recipes.addShaped("copy_paste_gadget",<buildinggadgets:copypastetool>.withTag({mode: "Copy"}),[
[plastic,monitor,plastic],
[<ore:dyeRed>,<ore:buttonWood>,<ore:dyeRed>],
[plastic,circuitOrganic,plastic]]);
recipes.addShaped("destruction_gadget",<buildinggadgets:destructiontool>.withTag({overlay: 1 as byte, fuzzy: 1 as byte}),[
[<ore:dyeYellow>,monitor,plastic],
[<ore:dyeBlack>,circuitOrganic,plastic],
[<ore:dyeYellow>,<minecraft:stone_button>,plastic]]);
recipes.addShaped("cogwheel_grindstone",<appliedenergistics2:grindstone>,[
[<ore:stone>,<ore:gearWood>,<ore:stone>],
[<ore:gearStone>,<ore:stone>,<ore:gearStone>],
[<ore:cobblestone>,<ore:gearStone>,<ore:cobblestone>]]);
	game.setLocalization("tile.appliedenergistics2.grindstone.name","Cogwheel Grindstone");
recipes.addShaped("beeangyer_guidebook",<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:beeangryer"}),[
[<minecraft:book>,<ore:beeComb>]]);

furnace.addRecipe(<contenttweaker:firedeggshells>,<contenttweaker:eggshells>,0.1);
//egg shell dissolving
mods.immersiveengineering.Mixer.addRecipe(<liquid:dissolvedeggshells>*1000, <liquid:water>*1000, [<contenttweaker:firedeggshells>], 2048);
//limestone
mods.tconstruct.Drying.addRecipe(<quark:limestone>,<contenttweaker:soggylime>, 1300);
mods.tconstruct.Casting.addBasinRecipe(<quark:limestone>,<techreborn:smalldust:12>,<liquid:dissolvedeggshells>,125,true,1000);
mods.integrateddynamics.DryingBasin.addRecipe(<contenttweaker:soggylime>,  null, <quark:limestone>, null, 650);
mods.integrateddynamics.DryingBasin.addRecipe(<techreborn:smalldust:12>,  <liquid:dissolvedeggshells>*125, <quark:limestone>, null, 650);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<contenttweaker:soggylime>,  null, <quark:limestone>, null, 650);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<techreborn:smalldust:12>,  <liquid:dissolvedeggshells>*125, <quark:limestone>, null, 650);

mods.jei.JEI.addDescription(<quark:enderdragon_scale>,["Obtained by disposing a resummoned Ender Dragon. If you don't know how to resummon the Dragon, you have to place 4 End Crystals on the bedrock borders of the End->Overworld portal."]);
mods.jei.JEI.addDescription(<quark:limestone>,[
"How to obtain Limestone early on:/n1. Pan sand for Egg Shells,/n2. Make them spend some time in heat,/n3. Put the Fired Egg Shells into a Water-filled Crucible,/n4. Mix in a Smapll Pile of Clay Dust,/n5. Put the mixture somewhere it can dry up./n/nThis instruction is mirrored on the Soggy Lime tooltip, and in the Guidebook."]);

mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 16514145, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/der elektrum-ente", author: "The Greatest Egg", display: {color: 16246410, Lore:["Facing North"]}, label: "Der Elektrum-Ente"}));

val grindingAB as IItemStack[IItemStack]={
	<minecraft:feather>:<hatchery:feather_fiber>*1,
	<hatchery:feather_fiber>:<hatchery:feather_meal>*1,
	<minecraft:bone_block>:<minecraft:dye:15>*4
};

for a, b in grindingAB{
	mods.thermalexpansion.Pulverizer.addRecipe(b, 
		a, 1500, b, 25);
	mods.immersiveengineering.Crusher.addRecipe(b, 
		a, 1500, b, 0.25);
	mods.techreborn.grinder.addRecipe(b*(b.amount*2),
		a, 75, 20);
	mods.techreborn.industrialGrinder.addRecipe(b*(b.amount*3),null,null,null,
		a, null, <liquid:water>*1000, 75, 20);
	mods.appliedenergistics2.Grinder.addRecipe(b, 
		a, 3, b, 0.25);
}

//I'm honestly too lazy to do this the proper way
 val liquifyingThings ={
	<liquid:salt>*144 : <contenttweaker:salt_cube>
	}as IItemStack[ILiquidStack];
for liquid, thing in liquifyingThings{
	mods.immersiveengineering.Squeezer.addRecipe(	//ignores nbt
		null, 
		liquid, 
		thing, 
		2400);
	mods.thermalexpansion.Crucible.addRecipe( 	//ignores nbt
		liquid, 
		thing, 
		2400);
	mods.tconstruct.Melting.addRecipe(	//ignores nbt, pathetic
		liquid,
		thing, 
		1074);
	mods.forestry.Squeezer.addRecipe(
		liquid, 
		[thing], 
		120, 
		null);
	mods.thermalexpansion.Transposer.addExtractRecipe(
		liquid,
		thing, 
		2400, 
		null);
	mods.integrateddynamics.Squeezer.addRecipe(
		thing, 
		null, 1.0F,
		null, 1.0F,
		null, 1.0F,
		liquid);
	mods.integrateddynamics.MechanicalSqueezer.addRecipe(
		thing, 
		null, 1.0F,
		null, 1.0F,
		null, 1.0F,
		liquid,120);
}
 val liquifyingThingBlocks ={
	<liquid:salt>*1296 : <contenttweaker:salt_block>
	}as IItemStack[ILiquidStack];
for liquid, thing in liquifyingThingBlocks{
	mods.immersiveengineering.Squeezer.addRecipe(	//ignores nbt
		null, 
		liquid, 
		thing, 
		21600);
	mods.thermalexpansion.Crucible.addRecipe( 	//ignores nbt
		liquid, 
		thing, 
		21600);
	mods.tconstruct.Melting.addRecipe(	//ignores nbt, pathetic
		liquid,
		thing, 
		1074);
	mods.forestry.Squeezer.addRecipe(
		liquid, 
		[thing], 
		1080, 
		null);
	mods.thermalexpansion.Transposer.addExtractRecipe(
		liquid,
		thing, 
		21600, 
		null);
	mods.integrateddynamics.Squeezer.addRecipe(
		thing, 
		null, 1.0F,
		null, 1.0F,
		null, 1.0F,
		liquid);
	mods.integrateddynamics.MechanicalSqueezer.addRecipe(
		thing, 
		null, 1.0F,
		null, 1.0F,
		null, 1.0F,
		liquid,1080);
}

events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent){
	if (<item:contenttweaker:koboldstone>.asBlock() has event.block){
		event.player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(100,0));
}});
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:water"}),
 <contenttweaker:koboldstone>,
 <minecraft:potion>.withTag({Potion: "minecraft:poison"}),
 false);
 
events.onPlayerAdvancement(function(event as crafttweaker.event.PlayerAdvancementEvent){
	if (event.id=="triumph:beeangryer/vic_createisland"){
		event.player.executeCommand("island create");
	}
});
mods.jei.JEI.addDescription(<contenttweaker:koboldstone>,["Replaces Cobblestone, Stone and Obsidian in in-world Water and Lava interactions. Contains Arsenic."]);