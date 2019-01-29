#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

var mutandis = VanillaFactory.createItem("mutandis");
			mutandis.maxStackSize = 64;
			mutandis.creativeTab = <creativetab:misc>;
mutandis.register();

var eggshells = VanillaFactory.createItem("eggshells");
			eggshells.maxStackSize = 64;
			eggshells.creativeTab = <creativetab:misc>;
eggshells.register();

var firedeggshells = VanillaFactory.createItem("firedeggshells");
			firedeggshells.maxStackSize = 64;
			firedeggshells.creativeTab = <creativetab:misc>;
firedeggshells.register();

var stonedust = VanillaFactory.createItem("stonedust");
			stonedust.maxStackSize = 64;
			stonedust.creativeTab = <creativetab:misc>;
stonedust.register();

var soggylime = VanillaFactory.createBlock("soggylime", <blockmaterial:clay>);
soggylime.setToolClass("shovel");
soggylime.setBlockHardness(2.0);
soggylime.setToolLevel(0);
soggylime.setGravity(true);
soggylime.setBlockSoundType(<soundtype:Ground>);
soggylime.register();