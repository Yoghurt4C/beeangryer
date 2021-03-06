import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

<deepmoblearning:extraction_chamber>.addTooltip(format.red(format.bold("Dysfunctional!")));
<deepmoblearning:extraction_chamber>.addTooltip(format.aqua(format.italic("Also part of a multiblock.")));
mods.jei.JEI.addDescription(<deepmoblearning:extraction_chamber>,"Doesn't do anything on its own, but used as part of the Improved™ Loot Fabricator multiblock.");

var TEDust=<thermalfoundation:material:1025>|<thermalfoundation:material:1026>|<thermalfoundation:material:1027>;

val dataModelArray as IItemStack[IIngredient]={
	<minecraft:bone>:<deepmoblearning:data_model_skeleton>,
	<minecraft:gunpowder>:<deepmoblearning:data_model_creeper>,
	<minecraft:rotten_flesh>:<deepmoblearning:data_model_zombie>,
	<minecraft:spider_eye>:<deepmoblearning:data_model_spider>,
	<minecraft:slime_ball>:<deepmoblearning:data_model_slime>,
	<minecraft:glass_bottle>:<deepmoblearning:data_model_witch>,
	<minecraft:prismarine_shard>:<deepmoblearning:data_model_guardian>,
	<tconstruct:edible:1>:<deepmoblearning:data_model_tinker_slime>,
	<thermalfoundation:material:1025>|<thermalfoundation:material:1026>|<thermalfoundation:material:1027>:<deepmoblearning:data_model_thermal_elemental>,
	<minecraft:ghast_tear>:<deepmoblearning:data_model_ghast>,
	<minecraft:blaze_rod>:<deepmoblearning:data_model_blaze>,
	<minecraft:skull:1>:<deepmoblearning:data_model_wither_skeleton>,
	<minecraft:nether_star>:<deepmoblearning:data_model_wither>,
	<minecraft:ender_eye>:<deepmoblearning:data_model_enderman>,
	<minecraft:end_rod>:<deepmoblearning:data_model_shulker>,
	<minecraft:dragon_egg>:<deepmoblearning:data_model_dragon>
};

for item, datamodel in dataModelArray{
	recipes.remove(datamodel);
	recipes.addShaped(datamodel.definition.id.split(":")[1],datamodel.withTag({tier: 1}),[
	[null,item,null],
	[item,<deepmoblearning:data_model_blank>,item],
	[null,item,null]]);
}