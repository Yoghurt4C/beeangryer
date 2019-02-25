#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;
import crafttweaker.item.IItemStack;

var mutandis = VanillaFactory.createItem("mutandis");
	mutandis.register();

var eggshells = VanillaFactory.createItem("eggshells");
	eggshells.register();

var firedeggshells = VanillaFactory.createItem("firedeggshells");
	firedeggshells.register();
	
var crushedeggshells = VanillaFactory.createItemFood("crushedeggshells",1);	
	crushedeggshells.register();
	
var goldenegg= VanillaFactory.createItem("golden_egg");	
	goldenegg.register();
	
var menrilpropolis = VanillaFactory.createItem("menril_propolis");
	menrilpropolis.register();
	
var saltcube = VanillaFactory.createItem("salt_cube");
	saltcube.register();

var firestarter = VanillaFactory.createItem("firestarter");
			firestarter.maxDamage = 3;
			firestarter.maxStackSize = 1;
			firestarter.creativeTab = <creativetab:tools>;
			firestarter.setItemUseAction("BOW");
			firestarter.onItemUse = function(player, world, pos, hand, facing, blockHit) {
					var firePos = pos.getOffset(facing, 1);
					if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
					var chance=world.getRandom().nextInt(3);
					if (chance%2==0){
					world.setBlockState(<block:minecraft:fire>, firePos);}
					player.getHeldItem(hand).damage(1, player);
					return ActionResult.success();
					}
				return ActionResult.pass();
				};
firestarter.register();

var soggylime = VanillaFactory.createBlock("soggylime", <blockmaterial:clay>);
soggylime.setToolClass("shovel");
soggylime.setBlockHardness(2.0);
soggylime.setToolLevel(0);
soggylime.setGravity(false);
soggylime.setBlockSoundType(<soundtype:Ground>);
soggylime.onRandomTick=function(world, blockPos, blockState){
	var limetick=world.getRandom().nextInt(5);
	if (limetick/4==1){
	world.setBlockState(<block:quark:limestone>,blockPos);}};
soggylime.register();

var saltblock = VanillaFactory.createBlock("salt_block", <blockmaterial:sand>);
saltblock.setToolClass("shovel");
saltblock.setBlockHardness(2.0);
saltblock.setToolLevel(0);
saltblock.setGravity(true);
saltblock.setBlockSoundType(<soundtype:sand>);
saltblock.register();

var waterbowlchicken = VanillaFactory.createBlock("water_bowl_chicken", <blockmaterial:wood>);
waterbowlchicken.setToolClass("axe");
waterbowlchicken.setBlockHardness(0.5);
waterbowlchicken.setToolLevel(0);
waterbowlchicken.setGravity(true);
waterbowlchicken.setFullBlock(false);
waterbowlchicken.setBlockSoundType(<soundtype:wood>);
waterbowlchicken.register();

var bowlsnowchicken = VanillaFactory.createBlock("bowl_snow_chicken", <blockmaterial:wood>);
bowlsnowchicken.setToolClass("axe");
bowlsnowchicken.setBlockHardness(0.5);
bowlsnowchicken.setToolLevel(0);
bowlsnowchicken.setGravity(true);
bowlsnowchicken.setFullBlock(false);
bowlsnowchicken.setBlockSoundType(<soundtype:wood>);
bowlsnowchicken.setDropHandler(function(drops, world, position, state,fortune) {
	drops.clear();
    drops.add(<item:roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1}) as IItemStack);
    drops.add(<item:minecraft:bowl> as IItemStack);
    return;
});
bowlsnowchicken.register();