#loader contenttweaker
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.tconstruct.MaterialBuilder;

val attackHoney = mods.contenttweaker.tconstruct.TraitBuilder.create("honey_absorption");
attackHoney.color = 0xFFA12B;
attackHoney.maxLevel = 3;
attackHoney.countPerLevel = 1;
attackHoney.localizedName = "Steadfast";
attackHoney.localizedDescription = "Being agressive provides you with additional resilience! And, your target gets honeyed up!";
attackHoney.onHit = function(trait, tool, attacker, target, damage, isCritical) {
	if (target as bool){
      attacker.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(100,0));
      target.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(40,2));
    }
};
attackHoney.register();

val honey = mods.contenttweaker.tconstruct.MaterialBuilder.create("honey");
honey.color=0xFFA12B;
honey.craftable=false;
honey.castable=true;
honey.liquid=<liquid:for.honey>;
honey.localizedName="Honeyed";
honey.representativeItem=<item:forestry:bee_combs:0>;
honey.addHeadMaterialStats(250,4.24f,3.8f,1);
honey.addHandleMaterialStats(1.4f,-50);
honey.addExtraMaterialStats(-50);
honey.addBowMaterialStats(0.71f,1.3f,3.0f);
honey.addBowStringMaterialStats(1.5f);
honey.addArrowShaftMaterialStats(1.5f,20);
honey.addFletchingMaterialStats(1.25f,0.95f);
honey.addProjectileMaterialStats();
honey.itemLocalizer = function(thisMaterial, itemName){return "Honeyed " + itemName;};
honey.addMaterialTrait(<ticontrait:honey_absorption>,null);
honey.addMaterialTrait("tasty",null);
honey.register();

/*
myMat.addHeadMaterialStats(int durability, float miningSpeed, float attackDamage, int harvestLevel);
myMat.removeHeadMaterialStats();


myMat.addHandleMaterialStats(float modifier, int durability);
myMat.removeHandleMaterialStats();


myMat.addExtraMaterialStats(int extraDurability);
myMat.removeExtraMaterialStats();


myMat.addBowMaterialStats(float drawSpeed, float range, float bonusDamage);
myMat.removeBowMaterialStats();


myMat.addBowStringMaterialStats(float modifier);
myMat.removeBowStringMaterialStats();


myMat.addArrowShaftMaterialStats(float modifier, int bonusAmmo);
myMat.removeArrowShaftMaterialStats();


myMat.addFletchingMaterialStats(float accuracy, float modifier);
myMat.removeFletchingMaterialStats();


myMat.addProjectileMaterialStats();
myMat.removeProjectileMaterialStats();*/