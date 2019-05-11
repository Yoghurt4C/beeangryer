#priority 100

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

function isItemToKeep(item as IItemStack) as bool {
	//return false; //Comment this out if there are mods we want kept

	var modsToKeep as string[] = [
	"uniquecrops"
	];

	var itemOwner as string = item.definition.owner;
	for modName in modsToKeep {
		if (itemOwner == modName) {
			return true;
		}
	}
	//return false;
}

function getPreferredMetalItem(metalName as string, metalPartName as string) as IItemStack {
	return metalItems[metalName][metalPartName] as bool ? metalItems[metalName][metalPartName].items[0] : null;
}
function getMetalLiquid(metalName as string) as ILiquidStack {
	return metalItems[metalName].liquid as bool ? metalItems[metalName].liquid.liquids[0] : null;
}

function handlePreferredMetalItem(metalName as string, metalPartName as string, metal as IOreDictEntry[string], preferredMetalItem as IItemStack, metalLiquid as ILiquidStack) {
	var hasLiquid = metalLiquid as bool;
	
	
	if (metalPartName=="nugget"|metalPartName=="ingot"|metalPartName=="block"|metalPartName=="gear"){
	recipes.remove(preferredMetalItem);}
	var grafter=<forestry:grafter>.anyDamage().transformDamage(1);
	var grafterProven=<forestry:grafter_proven>.anyDamage().transformDamage(1);

	if (metalPartName=="gear" & metalItems[metalName].nugget as bool & metalItems[metalName].plate as bool){
		recipes.addShaped("gear_"+metalName, preferredMetalItem,[
		[metalItems[metalName].nugget.items[0],metalItems[metalName].plate.items[0],metalItems[metalName].nugget.items[0]],
		[metalItems[metalName].plate.items[0],grafter|grafterProven,metalItems[metalName].plate.items[0]],
		[metalItems[metalName].nugget.items[0],metalItems[metalName].plate.items[0],metalItems[metalName].nugget.items[0]]]);
	}
	//ticon
	if (hasLiquid) {
		var fluidAmount as int = 0;

		if (metalPartName == "ingot" | metalPartName == "plate") {
			fluidAmount = 144;
		} else if (metalPartName == "rod") {
			fluidAmount = 72;
		} else if (metalPartName == "block") {
			fluidAmount = 1296;
		} else if (metalPartName == "gear") {
			fluidAmount = 576;
		} else if (metalPartName == "nugget") {
			fluidAmount = 16;
		}
		
		mods.tconstruct.Melting.removeRecipe(metalLiquid * 1, preferredMetalItem);
		if (fluidAmount != 0 & metalPartName=="block") {
			mods.tconstruct.Melting.addRecipe(metalLiquid * fluidAmount, preferredMetalItem);
		}

		//tconstruct.Casting
		if (metalPartName == "block") {
			var consumeCast = false;

			mods.tconstruct.Casting.removeBasinRecipe(preferredMetalItem);
			mods.tconstruct.Casting.addBasinRecipe(preferredMetalItem, null, metalLiquid, fluidAmount, consumeCast);
		} else {
			var tinkersCast as IItemStack = null;
			var consumeCast = false;

			if (metalPartName == "ingot") {
				tinkersCast = <tconstruct:cast_custom>;
			} else if (metalPartName == "gear") {
				tinkersCast = <tconstruct:cast_custom:4>;
			} else if (metalPartName == "plate") {
				tinkersCast = <tconstruct:cast_custom:3>;
			} else if (metalPartName == "nugget") {
				tinkersCast = <tconstruct:cast_custom:1>;
			}

			if (tinkersCast as bool) {
				mods.tconstruct.Casting.removeTableRecipe(preferredMetalItem);
				//mods.tconstruct.Casting.addTableRecipe(preferredMetalItem, tinkersCast, metalLiquid, fluidAmount, consumeCast);
			}
		}
	}
		//ie
	var immersivePressMold as IItemStack = null;
	var immersivePressInputCount = 1;
	var immersivePressOutputCount = 1;
	var immersivePressEnergy = 2400;

	if (metalPartName == "plate") {
		immersivePressMold = <immersiveengineering:mold>;
	} else if (metalPartName == "gear") {
		immersivePressMold = <immersiveengineering:mold:1>;
		immersivePressInputCount = 4;
	} else if (metalPartName == "rod") {
		immersivePressOutputCount = 2;
		immersivePressMold = <immersiveengineering:mold:2>;
	}

	//If immersive mold isnt null, remove/create recipes
	if (immersivePressMold as bool) {
		mods.immersiveengineering.MetalPress.removeRecipe(preferredMetalItem);
		mods.immersiveengineering.MetalPress.addRecipe(
			preferredMetalItem * immersivePressOutputCount, //Output
			metalItems[metalName].ingot.items[0], //Input
			immersivePressMold, //Mold
			immersivePressEnergy, //Energy
			immersivePressInputCount //Input Count
		);

		//Plates can do the same as ingots
		if (metalPartName != "plate" & metalItems[metalName].plate as bool) {
			mods.immersiveengineering.MetalPress.addRecipe(
				preferredMetalItem * immersivePressOutputCount, //Output
				metalItems[metalName].plate.items[0], //Input
				immersivePressMold, //Mold
				immersivePressEnergy, //Energy
				immersivePressInputCount //Input Count
			);}
		//blocks because why not
		if (metalPartName != "gear" & metalPartName != "rod" & metalItems[metalName].block as bool) {
			mods.immersiveengineering.MetalPress.addRecipe(
				preferredMetalItem * 9, //Output
				metalItems[metalName].block.items[0], //Input
				immersivePressMold, //Mold
				21600, //Energy
				immersivePressInputCount //Input Count
			);}
	}

	if (metalName == "copper" | metalName == "electrum" | metalName == "aluminum" | metalName == "steel") {
		if (metalPartName == "plate") {
			var wires as IItemStack[string] = {
				aluminum: <immersiveengineering:material:22>,
				copper: <immersiveengineering:material:20>,
				electrum: <immersiveengineering:material:21>,
				steel: <immersiveengineering:material:23>
			};

			mods.immersiveengineering.MetalPress.addRecipe(
				wires[metalName] * 2, //Output
				preferredMetalItem, //Input
				<immersiveengineering:mold:4>, //Mold
				immersivePressEnergy, //Energy
				1 //Input Count
			);
		}
	}

	//smelting ingots (in order) are Al, Brass, Cr (omit?), Cu, Electrum, Au, Fe, Pt, Ti (omit?), W (omit?), Zi, Mithril, Constantan, Signalum, Lumium, Enderium, Uranium, HOP
	if (metalPartName == "ingot"|metalPartName=="nugget") {
		mods.immersiveengineering.ArcFurnace.removeRecipe(preferredMetalItem);
	}
		if (metalPartName == "dust") {
		//Arc Furnace
		var defaultArcEnergyPerTick as int = 512;
		var defaultArcTickTime as int = 100;
		var arcGivesSlag as bool = false;
		mods.immersiveengineering.ArcFurnace.addRecipe(
			metalItems[metalName].ingot.items[0],
			metal[metalPartName],
			arcGivesSlag ? <ore:itemSlag>.firstItem : null,
			defaultArcTickTime,
			defaultArcEnergyPerTick
		);}
		
	//te press
	if (metalPartName=="plate"){
	mods.thermalexpansion.Compactor.addStorageRecipe(
	preferredMetalItem * 1, //Output
	metalItems[metalName].ingot.items[0], //Input
	2400);
	if (metalItems[metalName].block as bool) {
	mods.thermalexpansion.Compactor.addStorageRecipe(
	preferredMetalItem * 9, //Output
	metalItems[metalName].block.items[0], //Input
	21600);}}
	
	//te magma crucible
	if (metalName!="aluminumbrass"&metalName!="alumite"&metalName!="brass"&metalName!="chrome"&metalName!="elementium"&metalName!="enhancedgalgadorian"&metalName!="galgadorian"&metalName!="knightslime"&metalName!="manasteel"&metalName!="mithril"&metalName!="pigiron"&metalName!="reinforcedmetal"&metalName!="terrasteel"&metalName!="titanium"&metalName!="tungsten"&metalName!="tungstensteel"&metalName!="uranium"&metalName!="zinc"&metalPartName!="rod"&metalPartName!="gear"){
	mods.thermalexpansion.Crucible.removeRecipe(preferredMetalItem);}
	//mods.thermalexpansion.Crucible.addRecipe(ILiquidStack output, IItemStack input, int energy);
	if (metalPartName=="block" & hasLiquid){
	mods.thermalexpansion.Crucible.addRecipe(
	 metalLiquid*1296, 
	preferredMetalItem, 
	10800);}
	
	//tr com*press*or, doesn't want to work with some te metals
	if (metalPartName=="plate"){
	mods.techreborn.compressor.addRecipe(
	preferredMetalItem*1, 
	metalItems[metalName].ingot.items[0], 
	120,
	20).setUseOreDict(false);
	if (metalItems[metalName].block as bool){
	mods.techreborn.compressor.addRecipe(
	preferredMetalItem*9, 
	metalItems[metalName].block.items[0], 
	1080,
	20).setUseOreDict(false);}}
	
	//grains
	if (metalPartName=="dust"){
	recipes.removeByRecipeName("extrabees:" + metalName + "_dust_dust");
	}
	//combs!
	if (metalPartName=="nugget"&metalItems[metalName].comb as bool){
	mods.forestry.Centrifuge.removeRecipe(metalItems[metalName].comb.items[0]);
		if (metalName=="iron"|metalName=="gold"|metalName=="silver"|metalName=="platinum"|metalName=="copper"|metalName=="tin"|metalName=="nickel"|metalName=="lead"|metalName=="zinc"|metalName=="titanium"|metalName=="tungsten"|metalName=="aluminum"){
	mods.thermalexpansion.Centrifuge.removeRecipe(metalItems[metalName].comb.items[0]);}
		if (metalName=="aluminum"){
		mods.forestry.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<techreborn:smalldust:5>%50,preferredMetalItem%100],metalItems[metalName].comb.items[0],10);
		mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,<techreborn:smalldust:5>%50,preferredMetalItem%100],metalItems[metalName].comb.items[0],null,2000);
		} else {
		mods.forestry.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,preferredMetalItem%100],metalItems[metalName].comb.items[0],10);
		mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax>%50,<forestry:honey_drop>%25,preferredMetalItem%100],metalItems[metalName].comb.items[0],null,2000);
	}}
	//bad thermalfoundation recipes
	if (metalItems[metalName].bow as bool & metalPartName=="ingot"){
		recipes.removeByRecipeName("thermalfoundation:tool.bow_"+metalName);
		recipes.removeByRecipeName("thermalfoundation:tool.fishing_rod_"+metalName);
		
		recipes.addShaped(metalName+"_bow",metalItems[metalName].bow.items[0],[
		[null,preferredMetalItem,<ore:yarn>],
		[<ore:stickWood>|<ore:stickTreatedWood>,null,<ore:yarn>],
		[null,preferredMetalItem,<ore:yarn>]]);
		recipes.addShaped(metalName+"_fishing_rod",metalItems[metalName].fishing_rod.items[0],[
		[null,null,preferredMetalItem],
		[null,preferredMetalItem,<ore:yarn>],
		[<ore:stickWood>|<ore:stickTreatedWood>,null,<ore:yarn>]]);
		if(metalName!="iron"&metalName!="gold"){
			recipes.removeByRecipeName("thermalfoundation:horse_armor_"+metalName);
			recipes.addShaped(metalName+"_horse_armor",itemUtils.getItem("thermalfoundation:horse_armor_"+metalName),[
			[metalItems[metalName].plate.items[0],null,metalItems[metalName].plate.items[0]],
			[<ore:yarn>,<ore:plateFabric>,<ore:yarn>],
			[preferredMetalItem,null,preferredMetalItem]]);
		}
	}
	//ae
	if (metalPartName=="dust" & metalItems[metalName].dust as bool){
		mods.appliedenergistics2.Grinder.addRecipe(preferredMetalItem,metalItems[metalName].ingot.items[0],4);
	}
	
} //don't touch this
	
	for metalName, metal in metals {
	var metalLiquid = getMetalLiquid(metalName as string);
	var hasLiquid = metalLiquid as bool;

	for partName, part in metal {
		if (part as bool & partName != "ore") {
			var preferredMetalItem = getPreferredMetalItem(metalName, partName);

			scripts.unification.base.unifyWithPreferredItem(part, preferredMetalItem, metalLiquid);

			if (preferredMetalItem as bool) {
					handlePreferredMetalItem(metalName, partName, metal, preferredMetalItem, metalLiquid);
				}
			}
		}
	}