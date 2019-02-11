import mods.uniquecrops.SeedCrafting;

<ore:ingotIron>.add(<uniquecrops:ediblemetal.ironingot>);
<ore:ingotGold>.add(<uniquecrops:ediblemetal.goldingot>);

//SeedCrafting.addRecipe(IItemStack output, 
//IIngredient center, 
//IIngredient corner, 
//IIngredient edge);
//SeedCrafting.removeRecipe(IItemStack output);

SeedCrafting.addRecipe(<uniquecrops:seedprecision>, 
 <minecraft:quartz>, 
<uniquecrops:seedcollis>, 
<uniquecrops:seedinvisibilia>);
SeedCrafting.removeRecipe(<uniquecrops:seedprecision>);

SeedCrafting.addRecipe(<minecraft:stone:3>*8, 
 <minecraft:quartz>, 
<ore:dyeWhite>, 
<ore:cobblestone>);
SeedCrafting.addRecipe(<minecraft:stone:1>*8, 
<minecraft:quartz>, 
 <ore:dyeRed>, 
<ore:stoneDiorite>);
SeedCrafting.addRecipe(<minecraft:stone:5>*8, 
<minecraft:quartz>, 
 <ore:dyeGray>, 
<ore:stoneGranite>);
SeedCrafting.addRecipe(<quark:basalt>*16, 
<chickens:liquid_egg:1>, 
 <quark:biotite>, 
<ore:stone>);