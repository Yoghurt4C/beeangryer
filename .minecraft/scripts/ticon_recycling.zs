#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

//never speak of or otherwise mention this file ever again
static trashGarbageRecycling as IIngredient[string][string]={
	aluminum:{
		liquid:<liquid:aluminum>,
		ore:<immersiveengineering:ore:1>,
		sheetmetal:<immersiveengineering:sheetmetal:1>,
		legs:<immersiveengineering:faraday_suit_legs>,
		head:<immersiveengineering:faraday_suit_head>,
		chest:<immersiveengineering:faraday_suit_chest>,
		boots:<immersiveengineering:faraday_suit_feet>,
		shears:<thermalfoundation:tool.shears_aluminum>,
		dust:<techreborn:smalldust:1>
	},
	ardite:{
		liquid:<liquid:ardite>,
		ore:<tconstruct:ore:1>
	},
	brass:{
		liquid:<liquid:brass>,
		bars:<cathedral:dwemer_bars_normal>,
		dust:<techreborn:smalldust:6>
	},
	bronze:{
		liquid:<liquid:bronze>,
		wrench:<forestry:wrench>,
		boots:<techreborn:bronzeboots>,
		legs:<techreborn:bronzeleggings>,
		chest:<techreborn:bronzechestplate>,
		head:<techreborn:bronzehelmet>,
		wrench2:<techreborn:wrench>,
		shears:<thermalfoundation:tool.shears_bronze>,
		chain:<cathedral:cathedral_chain_various:4>
	},
	cobalt:{
		liquid:<liquid:cobalt>,
		ore:<tconstruct:ore>
	},
	constantan:{
		liquid:<liquid:constantan>,
		shears:<thermalfoundation:tool.shears_constantan>,
		sheetmetal:<immersiveengineering:sheetmetal:6>
	},
	copper:{
		liquid:<liquid:copper>,
		ore:<immersiveengineering:ore>,
		cable:<techreborn:cable>,
		dust:<techreborn:smalldust:14>,
		shears:<thermalfoundation:tool.shears_copper>,
		chain:<cathedral:cathedral_chain_various:3>,
		sheetmetal:<immersiveengineering:sheetmetal>
	},
	electrum:{
		liquid:<liquid:electrum>,
		dust:<techreborn:smalldust:17>,
		shears:<thermalfoundation:tool.shears_electrum>,
		sheetmetal:<immersiveengineering:sheetmetal:7>
	},
	enderium:{
		liquid:<liquid:enderium>,
		chain:<cathedral:cathedral_chain_various:6>
	},
	gold:{
		liquid:<liquid:gold>,
		horsearmor:<minecraft:golden_horse_armor>,
		ore:<minecraft:gold_ore>,
		pressureplate:<minecraft:light_weighted_pressure_plate>,
		legs:<minecraft:golden_leggings>,
		head:<minecraft:golden_helmet>,
		chest:<minecraft:golden_chestplate>,
		boots:<minecraft:golden_boots>,
		sheetmetal:<immersiveengineering:sheetmetal:10>,
		chain:<cathedral:cathedral_chain_various:1>,
		shears:<thermalfoundation:tool.shears_gold>,
		dust:<techreborn:smalldust:24>,
		cable:<techreborn:cable:2>,
		key:<charset:key>,
		keyring:<charset:keyring>,
		key2:<realfilingcabinet:key>
	},
	invar:{
		liquid:<liquid:invar>,
		dust:<techreborn:smalldust>,
		shears:<thermalfoundation:tool.shears_invar>
	},
	iridium:{
		liquid:<liquid:iridium>,
		ore:<thermalfoundation:ore:7>
	},
	iron:{
		liquid:<liquid:iron>,
		horsearmor:<minecraft:iron_horse_armor>,
		ore:<minecraft:iron_ore>,
		furnace:<techreborn:iron_furnace>,
		dust:<techreborn:smalldust:27>,
		chain:<cathedral:cathedral_chain_various>,
		misc:<stevescarts:modulecomponents:11>,
		misc1:<stevescarts:cartmodule:42>,
		misc2:<stevescarts:cartmodule:13>,
		miisc3:<immersiveengineering:metal_device1:6>,
		sheetmetal:<immersiveengineering:sheetmetal:9>,
		anvil:<minecraft:anvil>,
		bucket:<minecraft:bucket>,
		cauldron:<minecraft:cauldron>,
		pressureplate:<minecraft:heavy_weighted_pressure_plate>,
		bars:<minecraft:iron_bars>,
		boots:<minecraft:iron_boots>,
		chest:<minecraft:iron_chestplate>,
		head:<minecraft:iron_helmet>,
		legs:<minecraft:iron_leggings>,
		door:<minecraft:iron_door>,
		trapdoor:<minecraft:iron_trapdoor>,
		minecart:<minecraft:minecart>,
		shears:<minecraft:shears>,
		rod:<quark:iron_rod>,
		ladder:<quark:iron_ladder>,
		plate:<quark:iron_plate>
	},
	knightslime:{
		liquid:<liquid:knightslime>,
		boots:<tcomplement:knightslime_boots>,
		chest:<tcomplement:knightslime_chestplate>,
		head:<tcomplement:knightslime_helmet>,
		legs:<tcomplement:knightslime_leggings>
	},
	lead:{
		liquid:<liquid:lead>,
		ore:<immersiveengineering:ore:2>,
		dust:<techreborn:smalldust:29>,
		shears:<thermalfoundation:tool.shears_lead>,
		sheetmetal:<immersiveengineering:sheetmetal:2>
	},
	manyullyn:{
		liquid:<liquid:manyullyn>,
		boots:<tcomplement:manyullyn_boots>,
		legs:<tcomplement:manyullyn_leggings>,
		chest:<tcomplement:manyullyn_chestplate>,
		head:<tcomplement:manyullyn_helmet>
	},
	nickel:{
		liquid:<liquid:nickel>,
		ore:<immersiveengineering:ore:4>,
		dust:<techreborn:smalldust:34>,
		shears:<thermalfoundation:tool.shears_nickel>,
		sheetmetal:<immersiveengineering:sheetmetal:4>
	},
	platinum:{
		liquid:<liquid:platinum>,
		ore:<thermalfoundation:ore:6>,
		dust:<techreborn:smalldust:38>,
		shears:<thermalfoundation:tool.shears_platinum>
	},
	silver:{
		liquid:<liquid:silver>,
		ore:<immersiveengineering:ore:3>,
		dust:<techreborn:smalldust:47>,
		shears:<thermalfoundation:tool.shears_silver>,
		chain:<cathedral:cathedral_chain_various:5>,
		sheetmetal:<immersiveengineering:sheetmetal:3>
	},
	steel:{
		liquid:<liquid:steel>,
		dust:<techreborn:smalldust:51>,
		shears:<thermalfoundation:tool.shears_steel>,
		misc:<immersivepetroleum:upgrades:1>,
		misc1:<immersivepetroleum:upgrades>,
		misc2:<immersiveengineering:material:16>,
		sheetmetal:<immersiveengineering:sheetmetal:8>
	},
	tin:{
		liquid:<liquid:tin>,
		ore:<thermalfoundation:ore:1>,
		misc:<forestry:can>,
		cable:<techreborn:cable:1>,
		dust:<techreborn:smalldust:53>,
		shears:<thermalfoundation:tool.shears_tin>
	},
	uranium:{
		liquid:<liquid:uranium>,
		ore:<immersiveengineering:ore:5>,
		sheetmetal:<immersiveengineering:sheetmetal:5>
	},
	zinc:{
		liquid:<liquid:zinc>,
		dust:<techreborn:smalldust:59>
	}
};
function getPreferredMetalItem(metalName as string, metalPartName as string) as IItemStack {
	return trashGarbageRecycling[metalName][metalPartName] as bool ? trashGarbageRecycling[metalName][metalPartName].items[0] : null;
}
function getMetalLiquid(metalName as string) as ILiquidStack {
	return trashGarbageRecycling[metalName].liquid as bool ? trashGarbageRecycling[metalName].liquid.liquids[0] : null;
}

function handlePreferredMetalItem(metalName as string, metalPartName as string, preferredMetalItem as IItemStack, metalLiquid as ILiquidStack) {
	var hasLiquid = metalLiquid as bool;
	mods.tconstruct.Melting.removeRecipe(metalLiquid, preferredMetalItem);
	mods.tcomplement.Overrides.removeRecipe(metalLiquid, preferredMetalItem);
	mods.tcomplement.Blacklist.addRecipe(metalLiquid, preferredMetalItem);
}	
	for metalName, metal in trashGarbageRecycling {
	var metalLiquid = getMetalLiquid(metalName as string);
	var hasLiquid = metalLiquid as bool;
	
	for partName, part in metal {
		if (part as bool&partName!="liquid") {
			var preferredMetalItem = getPreferredMetalItem(metalName, partName);

			if (preferredMetalItem as bool) {
					handlePreferredMetalItem(metalName, partName, preferredMetalItem, metalLiquid);
				}
			}
		}
	}