import mods.uniquecrops.SeedCrafting;

<ore:ingotIron>.add(<uniquecrops:ediblemetal.ironingot>);
<ore:ingotGold>.add(<uniquecrops:ediblemetal.goldingot>);

recipes.addShaped("slippers",<uniquecrops:slippers>,[
[<uniquecrops:generic:14>,<uniquecrops:generic:14>]]);

//SeedCrafting.addRecipe(IItemStack output, 
//IIngredient center, 
//IIngredient corner, 
//IIngredient edge);
//SeedCrafting.removeRecipe(IItemStack output);
SeedCrafting.addRecipe(<minecraft:ender_pearl>, 
 <minecraft:snowball>, 
 <uniquecrops:generic:5>, 
 <uniquecrops:generic:5>);
SeedCrafting.addRecipe(<uniquecrops:seedprecision>, 
 <minecraft:quartz>, 
 <uniquecrops:seedcollis>, 
 <uniquecrops:seedinvisibilia>);
SeedCrafting.removeRecipe(<uniquecrops:seedprecision>);
SeedCrafting.addRecipe(<uniquecrops:seedenderlily>, 
 <minecraft:quartz>, 
 <uniquecrops:seedprecision>, 
 <uniquecrops:seeddirigible>);
SeedCrafting.removeRecipe(<uniquecrops:seedenderlily>);

SeedCrafting.addRecipe(<minecraft:stone:3>*16, 
 <minecraft:quartz>, 
<ore:dyeWhite>, 
<ore:cobblestone>);
SeedCrafting.addRecipe(<minecraft:stone:1>*16, 
<minecraft:quartz>, 
 <ore:dyeRed>, 
<ore:stoneDiorite>);
SeedCrafting.addRecipe(<minecraft:stone:5>*16, 
<minecraft:quartz>, 
 <ore:dyeGray>, 
<ore:stoneGranite>);
SeedCrafting.addRecipe(<quark:basalt>*32, 
<chickens:liquid_egg:1>, 
 <quark:biotite>, 
<ore:stone>);
SeedCrafting.addRecipe(<quark:crystal:0>*4,
<minecraft:quartz>,
 <minecraft:prismarine_crystals>,
<ore:blockGlassWhite>);