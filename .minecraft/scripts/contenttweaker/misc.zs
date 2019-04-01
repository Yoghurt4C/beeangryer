#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;
import mods.contenttweaker.AxisAlignedBB;
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
	
var netherstarshard = VanillaFactory.createItem("nether_star_shard");
	netherstarshard.setGlowing(true);
	netherstarshard.register();
	
var saltcube = VanillaFactory.createItem("salt_cube");
	saltcube.register();
	
var yarn = VanillaFactory.createItem("yarn");
	yarn.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.getHeldItem(hand).amount < 6){return ActionResult.fail();} else {
			if (world.getBlockState(pos).getBlock().definition.id==("contenttweaker:loom")){
				player.getHeldItem(hand).shrink(6);
				player.give(<item:contenttweaker:fabric>*1);
				return ActionResult.success();
			}
		return ActionResult.pass();
		}};
	yarn.register();
	
var yarn_silk = VanillaFactory.createItem("yarn_silk");
	yarn_silk.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.getHeldItem(hand).amount < 6){return ActionResult.fail();} else {
			if (world.getBlockState(pos).getBlock().definition.id==("contenttweaker:loom")){
				player.getHeldItem(hand).shrink(6);
				player.give(<item:forestry:crafting_material:3>*1);
				return ActionResult.success();
			}
		return ActionResult.pass();
		}};
	yarn_silk.register();

var yarn_feather = VanillaFactory.createItem("yarn_feather");
	yarn_feather.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.getHeldItem(hand).amount < 6){return ActionResult.fail();} else {
			if (world.getBlockState(pos).getBlock().definition.id==("contenttweaker:loom")){
				player.getHeldItem(hand).shrink(6);
				player.give(<item:hatchery:fiber_pad>*1);
				return ActionResult.success();
			}
		return ActionResult.pass();
		}};
	yarn_feather.register();

var yarn_hemp = VanillaFactory.createItem("yarn_hemp");
	yarn_hemp.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.getHeldItem(hand).amount < 6){return ActionResult.fail();} else {
			if (world.getBlockState(pos).getBlock().definition.id==("contenttweaker:loom")){
				player.getHeldItem(hand).shrink(6);
				player.give(<item:immersiveengineering:material:5>*1);
				return ActionResult.success();
			}
		return ActionResult.pass();
		}};
	yarn_hemp.register();
	
var yarn_golden = VanillaFactory.createItem("yarn_golden");
	yarn_golden.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.getHeldItem(hand).amount < 6){return ActionResult.fail();} else {
			if (world.getBlockState(pos).getBlock().definition.id==("contenttweaker:loom")){
				player.getHeldItem(hand).shrink(6);
				player.give(<item:tconstruct:materials:15>*1);
				return ActionResult.success();
			}
		return ActionResult.pass();
		}};
	yarn_golden.register();
	
var yarn_ender = VanillaFactory.createItem("yarn_ender");
	yarn_ender.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.getHeldItem(hand).amount < 6){return ActionResult.fail();} else {
			if (world.getBlockState(pos).getBlock().definition.id==("contenttweaker:loom")){
				player.getHeldItem(hand).shrink(6);
				player.give(<item:tconstruct:materials:15>*1);
				return ActionResult.success();
			}
		return ActionResult.pass();
		}};
	yarn_ender.register();
	
var yarn_invisibilia = VanillaFactory.createItem("yarn_invisibilia");
	yarn_invisibilia.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.getHeldItem(hand).amount < 6){return ActionResult.fail();} else {
			if (world.getBlockState(pos).getBlock().definition.id==("contenttweaker:loom")){
				player.getHeldItem(hand).shrink(6);
				player.give(<item:tconstruct:materials:15>*1);
				return ActionResult.success();
			}
		return ActionResult.pass();
		}};
	yarn_invisibilia.register();
	
var fabric = VanillaFactory.createItem("fabric");
	fabric.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		if (player.creative as bool){
			player.executeCommand("say "+world.getBlockState(pos).getBlock().definition.unlocalizedName);
			player.executeCommand("say "+world.getBlockState(pos).getBlock().definition.id);
			return ActionResult.success();
			}
		return ActionResult.pass();
		};
	fabric.register();

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

var koboldstone = VanillaFactory.createBlock("koboldstone", <blockmaterial:rock>);
koboldstone.setToolClass("pickaxe");
koboldstone.setBlockHardness(5.0);
koboldstone.setToolLevel(0);
koboldstone.setGravity(false);
koboldstone.setBlockSoundType(<soundtype:stone>);
koboldstone.register();

var waterbowlchicken = VanillaFactory.createBlock("water_bowl_chicken", <blockmaterial:wood>);
waterbowlchicken.setAxisAlignedBB(AxisAlignedBB.create(0.125,0,0.0625,0.875,0.750,0.9375));
waterbowlchicken.setToolClass("axe");
waterbowlchicken.setBlockHardness(0.5);
waterbowlchicken.setToolLevel(0);
waterbowlchicken.setGravity(true);
waterbowlchicken.setFullBlock(false);
waterbowlchicken.setBlockSoundType(<soundtype:wood>);
waterbowlchicken.register();

var bowlsnowchicken = VanillaFactory.createBlock("bowl_snow_chicken", <blockmaterial:wood>);
bowlsnowchicken.setAxisAlignedBB(AxisAlignedBB.create(0.125,0,0.0625,0.875,0.750,0.9375));
bowlsnowchicken.setToolClass("axe");
bowlsnowchicken.setBlockHardness(0.5);
bowlsnowchicken.setToolLevel(0);
bowlsnowchicken.setGravity(true);
bowlsnowchicken.setFullBlock(false);
bowlsnowchicken.setBlockLayer("TRANSLUCENT");
bowlsnowchicken.setBlockSoundType(<soundtype:wood>);
bowlsnowchicken.setDropHandler(function(drops, world, position, state,fortune) {
	drops.clear();
    drops.add(<item:roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1}) as IItemStack);
    drops.add(<item:minecraft:bowl> as IItemStack);
    return;
});
bowlsnowchicken.register();

var guidebook = VanillaFactory.createBlock("guidebook", <blockmaterial:cloth>);
guidebook.setAxisAlignedBB(AxisAlignedBB.create(0.125,0,0.188,0.875,0.167,0.812));
guidebook.setToolClass("axe");
guidebook.setBlockHardness(0.1);
guidebook.setToolLevel(0);
guidebook.setGravity(true);
guidebook.setFullBlock(false);
guidebook.setBlockSoundType(<soundtype:cloth>);
guidebook.setPassable(true);
guidebook.setBlockLayer("CUTOUT");
guidebook.setTranslucent(false);
guidebook.setDropHandler(function(drops, world, position, state,fortune) {
	drops.clear();
    drops.add(<item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:beeangryer"}) as IItemStack);
    return;
});
guidebook.register();

var loom = VanillaFactory.createBlock("loom", <blockmaterial:wood>);
loom.setAxisAlignedBB(AxisAlignedBB.create(0.125,0,0,0.875,1,1));
loom.setToolClass("axe");
loom.setBlockHardness(1);
loom.setToolLevel(0);
loom.setGravity(true);
loom.setFullBlock(false);
loom.setBlockSoundType(<soundtype:wood>);
loom.register();

var log_dry = VanillaFactory.createBlock("log_dry", <blockmaterial:wood>);
log_dry.setToolClass("axe");
log_dry.setBlockHardness(2);
log_dry.setToolLevel(0);
log_dry.setGravity(false);
log_dry.setFullBlock(true);
log_dry.setBlockSoundType(<soundtype:wood>);
log_dry.register();

var log_rotten = VanillaFactory.createBlock("log_rotten", <blockmaterial:wood>);
log_rotten.setToolClass("axe");
log_rotten.setBlockHardness(3);
log_rotten.setToolLevel(1);
log_rotten.setGravity(false);
log_rotten.setFullBlock(true);
log_rotten.setBlockSoundType(<soundtype:wood>);
log_rotten.register();

var flint = VanillaFactory.createBlock("flint", <blockmaterial:cake>);
flint.setAxisAlignedBB(AxisAlignedBB.create(0.250,0,0.250,0.750,0.0625,0.750));
flint.setBlockHardness(0.1);
flint.setToolLevel(0);
flint.setGravity(false);
flint.setFullBlock(false);
flint.setBlockSoundType(<soundtype:stone>);
flint.setPassable(true);
flint.setBlockLayer("CUTOUT");
flint.setTranslucent(true);
flint.setDropHandler(function(drops, world, position, state,fortune) {
	drops.clear();
    drops.add(<item:minecraft:flint> as IItemStack);
    return;
});
flint.register();

var stick = VanillaFactory.createBlock("stick", <blockmaterial:cake>);
stick.setAxisAlignedBB(AxisAlignedBB.create(0.250,0,0.250,0.750,0.0625,0.750));
stick.setBlockHardness(0.1);
stick.setToolLevel(0);
stick.setGravity(false);
stick.setFullBlock(false);
stick.setBlockSoundType(<soundtype:wood>);
stick.setPassable(true);
stick.setBlockLayer("CUTOUT");
stick.setTranslucent(true);
stick.setDropHandler(function(drops, world, position, state,fortune) {
	drops.clear();
    drops.add(<item:minecraft:stick> as IItemStack);
    return;
});
stick.register();