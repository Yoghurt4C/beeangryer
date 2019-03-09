import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

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
	<minecraft:shulker_shell>:<deepmoblearning:data_model_shulker>,
	<minecraft:dragon_egg>:<deepmoblearning:data_model_dragon>
};

for item, datamodel in dataModelArray{
	recipes.remove(datamodel);
	recipes.addShapeless(datamodel.withTag({tier: 1}),[<deepmoblearning:data_model_blank>,item]);
}