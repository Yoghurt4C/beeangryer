#priority 2000
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

function squareNum(number as int, timesToSquare as int) as int {
	var returnNumber = number;

	for i in 0 to timesToSquare {
		returnNumber = returnNumber * 2;
	}

	return returnNumber;
}
//Add item to oreDict if it does not exist already
function ensureOreDict(itemOreDict as IOreDictEntry, item as IItemStack) {
	if (!(itemOreDict in item)) {
		itemOreDict.add(item);
	}
}