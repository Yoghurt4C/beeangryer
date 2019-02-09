#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;


var mutandis = VanillaFactory.createItem("mutandis");
	mutandis.register();

var eggshells = VanillaFactory.createItem("eggshells");
	eggshells.register();

var firedeggshells = VanillaFactory.createItem("firedeggshells");
	firedeggshells.register();

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
soggylime.setGravity(true);
soggylime.setBlockSoundType(<soundtype:Ground>);
soggylime.onRandomTick=function(world, blockPos, blockState){
	var limetick=world.getRandom().nextInt(5);
	if (limetick/4==1){
	world.setBlockState(<block:quark:limestone>,blockPos);}};
soggylime.register();