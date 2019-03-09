#priority 950

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

//In order of priority
static defaultPreferredMods as string[] = [
	"minecraft",
	"immersiveengineering",
	"forestry",
	"thermalfoundation",
	"appliedenergistics2",
	"techreborn"
];

function unifyWithPreferredItem(oreDictEntry as IOreDictEntry, preferredItem as IItemStack, liquid as ILiquidStack) {
	var hasLiquid = liquid as bool;

	for item in oreDictEntry.items {
		if (!item.matches(preferredItem)) {
			if (!loadedMods.contains("jei")) {
				recipes.remove(item);
			}

			furnace.remove(item);
			furnace.setFuel(item, 0); //Setting the burnTime to 0 will stop the input from being a fuel item

			/*
				Check supported mods and call script if loaded

				TODO: Currently if a mod is not loaded, the script wont be loaded, so this script will error. See if theres a way around that.
			*/
			if (loadedMods.contains("appliedenergistics2")) {scripts.unification.supported_mods.appliedenergistics2.removeFromAll(item, liquid);}
			if (loadedMods.contains("immersiveengineering")) {scripts.unification.supported_mods.immersiveengineering.removeFromAll(item, liquid);}
			if (loadedMods.contains("jei")) {scripts.unification.supported_mods.jei.removeFromAll(item, liquid);}
			if (loadedMods.contains("tconstruct")) {scripts.unification.supported_mods.ticon.removeFromAll(item, liquid);}
			if (loadedMods.contains("techreborn")){scripts.unification.supported_mods.techreborn.removeFromAll(item, liquid);}

			//Remove from Ore Dict
			oreDictEntry.remove(item);
		}
	}

	scripts.utils.ensureOreDict(oreDictEntry, preferredItem);
}

/*
	Figure out which item is preferred

	The array should be in order of priority, so if its found, return immediately
	as this will be the most preferred option
*/
function getPreferredItem(oreDictEntry as IOreDictEntry, preferredMods as string[]) as IItemStack {
	for modName in preferredMods {
		for item in oreDictEntry.items {
			if (item.definition.owner == modName) {
				return item;
			}
		}
	}
	return null;
}

function unifyWithPreferredMods(oreDictEntry as IOreDictEntry, preferredModsParam as string[], liquid as ILiquidStack) {
	//Set to defaultPreferredMods if the param preferredModsParam is null
	var preferredMods as string[] = isNull(preferredModsParam) ?
		scripts.unification.base.defaultPreferredMods : preferredModsParam;

	var preferredItem as IItemStack = scripts.unification.base.getPreferredItem(oreDictEntry, preferredMods);

	//If there is still no item found, take the first availble
	if (!(preferredItem as bool)) {
		preferredItem = oreDictEntry.firstItem;
	}

	//Call unifyWithPreferred
	scripts.unification.base.unifyWithPreferredItem(oreDictEntry, preferredItem, liquid);
}
