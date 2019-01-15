#priority 951
#modloaded techreborn

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

function removeFromAll(item as IItemStack, liquid as ILiquidStack) {
	var hasItem = item as bool;
	var hasLiquid = liquid as bool;

	if (!hasItem) {
		return null;
	}

	mods.techreborn.alloySmelter.removeRecipe(item);
	mods.techreborn.blastFurnace.removeRecipe(item);
	mods.techreborn.centrifuge.removeRecipe(item);
	mods.techreborn.grinder.removeRecipe(item);
	mods.techreborn.compressor.removeRecipe(item);
}