#priority 750
import crafttweaker.item.IIngredient;
/*
	METAL_TYPE: {
		block: ITEM_STACK,
		comb: ITEM_STACK,
		dust: ITEM_STACK,
		gear: ITEM_STACK,
		ingot: ITEM_STACK,
		liquid: <liquid:lava>,
		nugget: ITEM_STACK,
		plate: ITEM_STACK,
		rod: ITEM_STACK},
*/
global metalItems as IIngredient[string][string] = {
	aluminum: {
		block: <immersiveengineering:storage:1>,
		comb: <extrabees:honey_comb:49>,
		dust: <immersiveengineering:metal:10>,
		gear: <thermalfoundation:material:260>,
		ingot: <immersiveengineering:metal:1>,
		liquid: <liquid:aluminum>,
		nugget: <immersiveengineering:metal:21>,
		plate: <thermalfoundation:material:324>,
		rod: <immersiveengineering:material:3>},
	aluminumbrass: {
		block: <tconstruct:metal:5>,
		comb: <gendustry:honey_comb:118>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:5>,
		liquid: <liquid:alubrass>,
		nugget: <tconstruct:nuggets:5>,
		plate: null,
		rod: null},
	alumite: {
		block: <plustic:alumiteblock>,
		comb: <gendustry:honey_comb:119>,
		dust: null,
		gear: null,
		ingot: <plustic:alumiteingot>,
		liquid: <liquid:alumite>,
		nugget: <plustic:alumitenugget>,
		plate: null,
		rod: null},
	ardite: {
		block: <tconstruct:metal:1>,
		comb: <gendustry:honey_comb:120>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:1>,
		liquid: <liquid:ardite>,
		nugget: <tconstruct:nuggets:1>,
		plate: null,
		rod: null},
	brass: {
		block: <techreborn:storage:5>,
		comb: <gendustry:honey_comb:102>,
		dust: <techreborn:dust:6>,
		gear: null,
		ingot: <techreborn:ingot:1>,
		liquid: <liquid:brass>,
		nugget: <techreborn:nuggets:1>,
		plate: <techreborn:plates:17>,
		rod: null},
	bronze: {
		block: <thermalfoundation:storage_alloy:3>,
		comb: <gendustry:honey_comb:101>,
		dust: null,
		gear: <thermalfoundation:material:291>,
		ingot: <forestry:ingot_bronze>,
		liquid: <liquid:bronze>,
		nugget: <thermalfoundation:material:227>,
		plate: <thermalfoundation:material:355>,
		rod: null},
	chrome: {
		block: <techreborn:storage:3>,
		comb: <gendustry:honey_comb:103>,
		dust: <techreborn:dust:10>,
		gear: null,
		ingot: <techreborn:ingot:3>,
		nugget: <techreborn:nuggets:3>,
		plate: <techreborn:plates:19>,
		rod: null},
	cobalt: {
		block: <tconstruct:metal>,
		comb: <gendustry:honey_comb:121>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots>,
		liquid: <liquid:cobalt>,
		nugget: <tconstruct:nuggets>,
		plate: null,
		rod: null},
	constantan: {
		block: <immersiveengineering:storage:6>,
		comb: <gendustry:honey_comb:109>,
		dust: <immersiveengineering:metal:15>,
		gear: <thermalfoundation:material:292>,
		ingot: <immersiveengineering:metal:6>,
		liquid: <liquid:constantan>,
		nugget: <immersiveengineering:metal:26>,
		plate: <thermalfoundation:material:356>,
		rod: null},
	copper: {
		block: <immersiveengineering:storage>,
		comb: <extrabees:honey_comb:17>,
		dust: <immersiveengineering:metal:9>,
		gear: <thermalfoundation:material:256>,
		ingot: <immersiveengineering:metal>,
		liquid: <liquid:copper>,
		nugget: <immersiveengineering:metal:20>,
		plate: <thermalfoundation:material:320>,
		rod: null},
	electrum: {
		block: <immersiveengineering:storage:7>,
		comb: <gendustry:honey_comb:104>,
		dust:  <thermalfoundation:material:97>,
		gear: <thermalfoundation:material:289>,
		ingot: <immersiveengineering:metal:7>,
		liquid: <liquid:electrum>,
		nugget: <immersiveengineering:metal:27>,
		plate: <thermalfoundation:material:353>,
		rod: null},
	elementium: {
		block: <botania:storage:2>,
		comb: <gendustry:honey_comb:115>,
		dust: null,
		gear: null,
		ingot: <botania:manaresource:7>,
		liquid: <liquid:elementium>,
		nugget: <botania:manaresource:19>,
		plate: null,
		rod: null},
	enderium: {
		block: <thermalfoundation:storage_alloy:7>,
		comb: <gendustry:honey_comb:112>,
		dust: <thermalfoundation:material:103>,
		gear: <thermalfoundation:material:295>,
		ingot: <thermalfoundation:material:167>,
		liquid: <liquid:enderium>,
		nugget: <thermalfoundation:material:231>,
		plate: <thermalfoundation:material:359>,
		rod: null},
	gold: {
		block: <minecraft:gold_block>,
		comb: <extrabees:honey_comb:16>,
		dust: <immersiveengineering:metal:19>,
		gear: <thermalfoundation:material:25>,
		ingot: <minecraft:gold_ingot>,
		liquid: <liquid:gold>,
		nugget: <minecraft:gold_nugget>,
		plate: <thermalfoundation:material:33>,
		rod: null},
	invar: {
		block: <thermalfoundation:storage_alloy:2>,
		comb: <gendustry:honey_comb:105>,
		dust: <thermalfoundation:material:98>,
		gear: <thermalfoundation:material:290>,
		ingot: <thermalfoundation:material:162>,
		liquid: <liquid:invar>,
		nugget: <thermalfoundation:material:226>,
		plate: <thermalfoundation:material:354>,
		rod: null},
	iridium: {
		block: <thermalfoundation:storage:7>,
		comb: <gendustry:honey_comb:106>,
		dust: <thermalfoundation:material:71>,
		gear: <thermalfoundation:material:263>,
		ingot: <thermalfoundation:material:135>,
		liquid: <liquid:iridium>,
		nugget: <thermalfoundation:material:199>,
		plate: <thermalfoundation:material:327>,
		rod: null},
	iron: {
		block: <minecraft:iron_block>,
		comb: <extrabees:honey_comb:15>,
		dust: <immersiveengineering:metal:18>,
		gear: <thermalfoundation:material:24>,
		ingot: <minecraft:iron_ingot>,
		liquid: <liquid:iron>,
		nugget: <minecraft:iron_nugget>,
		plate: <thermalfoundation:material:32>,
		rod: <immersiveengineering:material:1>},
	knightslime: {
		block: <tconstruct:metal:3>,
		comb: <gendustry:honey_comb:122>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:3>,
		liquid: <liquid:knightslime>,
		nugget: <tconstruct:nuggets:3>,
		plate: null,
		rod: null},
	lead: {
		block: <immersiveengineering:storage:2>,
		comb: <extrabees:honey_comb:37>,
		dust: <thermalfoundation:material:67>,
		gear: <thermalfoundation:material:259>,
		ingot: <thermalfoundation:material:131>,
		liquid: <liquid:lead>,
		nugget: <thermalfoundation:material:195>,
		plate: <thermalfoundation:material:323>,
		rod: null},
	lumium: {
		block: <thermalfoundation:storage_alloy:6>,
		comb: <gendustry:honey_comb:111>,
		dust: <thermalfoundation:material:102>,
		gear: <thermalfoundation:material:294>,
		ingot: <thermalfoundation:material:166>,
		liquid: <liquid:lumium>,
		nugget: <thermalfoundation:material:230>,
		plate: <thermalfoundation:material:358>,
		rod: null},
	manasteel: {
		block: <botania:storage:0>,
		comb: <gendustry:honey_comb:113>,
		dust: null,
		gear: null,
		ingot: <botania:manaresource:0>,
		liquid: <liquid:manasteel>,
		nugget: <botania:manaresource:17>,
		plate: null,
		rod: null},
	manyullyn: {
		block: <tconstruct:metal:2>,
		comb: <gendustry:honey_comb:123>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:2>,
		liquid: <liquid:manyullyn>,
		nugget: <tconstruct:nuggets:2>,
		plate: null,
		rod: null},
	mithril: {
		block: <thermalfoundation:storage:8>,
		comb: <gendustry:honey_comb:124>,
		dust: <thermalfoundation:material:72>,
		gear: <thermalfoundation:material:264>,
		ingot: <thermalfoundation:material:136>,
		liquid: null,
		nugget: <thermalfoundation:material:200>,
		plate: <thermalfoundation:material:328>,
		rod: null},
	nickel: {
		block: <immersiveengineering:storage:4>,
		comb: <extrabees:honey_comb:73>,
		dust: <thermalfoundation:material:69>,
		gear: <thermalfoundation:material:261>,
		ingot: <thermalfoundation:material:133>,
		liquid: <liquid:nickel>,
		nugget: <thermalfoundation:material:197>,
		plate: <thermalfoundation:material:325>,
		rod: null},
	platinum: {
		block: <thermalfoundation:storage:6>,
		comb: <extrabees:honey_comb:45>,
		dust: <thermalfoundation:material:70>,
		gear: <thermalfoundation:material:262>,
		ingot: <thermalfoundation:material:134>,
		liquid: <liquid:platinum>,
		nugget: <thermalfoundation:material:198>,
		plate: <thermalfoundation:material:326>,
		rod: null},
	pigiron: {
		block: <tconstruct:metal:4>,
		comb: <gendustry:honey_comb:125>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:4>,
		liquid: <liquid:pigiron>,
		nugget: <tconstruct:nuggets:4>,
		plate: null,
		rod: null},
	signalum: {
		block: <thermalfoundation:storage_alloy:5>,
		comb: <gendustry:honey_comb:110>,
		dust: <thermalfoundation:material:101>,
		gear: <thermalfoundation:material:293>,
		ingot: <thermalfoundation:material:165>,
		liquid: <liquid:signalum>,
		nugget: <thermalfoundation:material:229>,
		plate: <thermalfoundation:material:357>,
		rod: null},
	silver: {
		block: <immersiveengineering:storage:3>,
		comb: <extrabees:honey_comb:19>,
		dust: <thermalfoundation:material:66>,
		gear: <thermalfoundation:material:258>,
		ingot: <thermalfoundation:material:130>,
		liquid: <liquid:silver>,
		nugget: <thermalfoundation:material:194>,
		plate: <thermalfoundation:material:322>,
		rod: null},
	steel: {
		block: <immersiveengineering:storage:8>,
		comb: <gendustry:honey_comb:107>,
		dust: <thermalfoundation:material:96>,
		gear: <thermalfoundation:material:288>,
		ingot: <thermalfoundation:material:160>,
		liquid: <liquid:steel>,
		nugget: <thermalfoundation:material:224>,
		plate: <thermalfoundation:material:352>,
		rod: <immersiveengineering:material:2>},
	terrasteel: {
		block: <botania:storage:1>,
		comb: <gendustry:honey_comb:114>,
		dust: null,
		gear: null,
		ingot: <botania:manaresource:4>,
		liquid: <liquid:terrasteel>,
		nugget: <botania:manaresource:18>,
		plate: null,
		rod: null},
	tin: {
		block: <thermalfoundation:storage:1>,
		comb: <extrabees:honey_comb:18>,
		dust: <thermalfoundation:material:65>,
		gear: <thermalfoundation:material:257>,
		ingot: <thermalfoundation:material:129>,
		liquid: <liquid:tin>,
		nugget: <thermalfoundation:material:193>,
		plate: <thermalfoundation:material:321>,
		rod: null},
	titanium: {
		block: <techreborn:storage:2>,
		comb: <extrabees:honey_comb:41>,
		dust: <techreborn:dust:54>,
		gear: null,
		ingot: <techreborn:ingot:14>,
		liquid: null,
		nugget: <techreborn:nuggets:14>,
		plate: <techreborn:plates:30>,
		rod: null},
	tungsten: {
		block: <techreborn:storage:10>,
		comb: <extrabees:honey_comb:42>,
		dust: <techreborn:dust:55>,
		gear: null,
		ingot: <techreborn:ingot:15>,
		liquid: null,
		nugget: <techreborn:nuggets:15>,
		plate: <techreborn:plates:31>,
		rod: null},
	tungstensteel: {
		block: <techreborn:storage2>,
		comb: <gendustry:honey_comb:108>,
		dust: null,
		gear: null,
		ingot: <techreborn:ingot:17>,
		liquid: null,
		nugget: <techreborn:nuggets:17>,
		plate: <techreborn:plates:32>,
		rod: null},
	uranium: {
		block: <immersiveengineering:storage:5>,
		comb: <gendustry:honey_comb:126>,
		dust: <immersiveengineering:metal:14>,
		gear: null,
		ingot: <immersiveengineering:metal:5>,
		liquid: <liquid:uranium>,
		nugget: <immersiveengineering:metal:25>,
		plate: <immersiveengineering:metal:35>,
		rod: null},
	zinc: {
		block: <techreborn:storage:8>,
		comb: <extrabees:honey_comb:40>,
		dust: <techreborn:dust:59>,
		gear: null,
		ingot: <techreborn:ingot:18>,
		liquid: <liquid:zinc>,
		nugget: <techreborn:nuggets:18>,
		plate: <techreborn:plates:33>,
		rod: null}
};