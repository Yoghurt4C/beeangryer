<ceramics:faucet>.addTooltip("Drains liquids from Melters and other things");
recipes.addShapeless(<ceramics:unfired_clay:4>*2,[<minecraft:clay_ball>,<minecraft:clay_ball>,<ore:dyeWhite>]);

recipes.replaceAllOccurences(<minecraft:vine>,<ore:vine>, <*>.only(function(item) {
    return !isNull(item) & !<gendustry:apiary.upgrade:18>.matches(item);
}));
mods.tconstruct.Casting.addTableRecipe(
<tconstruct:slime_vine_blue>,
<minecraft:vine>,
<liquid:blueslime>,
250, 
true,
20);
recipes.addShapeless(<tconstruct:slime_vine_blue_mid>,[<tconstruct:slime_vine_blue>]);
recipes.addShapeless(<tconstruct:slime_vine_blue_end>,[<tconstruct:slime_vine_blue_mid>]);
mods.tconstruct.Casting.addTableRecipe(
<tconstruct:slime_vine_purple>,
<minecraft:vine>,
<liquid:purpleslime>,
250, 
true,
20);
recipes.addShapeless(<tconstruct:slime_vine_purple_mid>,[<tconstruct:slime_vine_purple>]);
recipes.addShapeless(<tconstruct:slime_vine_purple_end>,[<tconstruct:slime_vine_purple_mid>]);

mods.tconstruct.Casting.addTableRecipe(
<forestry:honey_drop>,
null,
<liquid:for.honey>,
100, 
false,
20);
mods.tconstruct.Casting.addBasinRecipe(
<minecraft:stained_glass:1>,
<minecraft:glass>,
<liquid:for.honey>,
100, 
true,
20);
mods.tconstruct.Casting.addBasinRecipe(
<tconstruct:clear_stained_glass:1>,
<tconstruct:clear_glass>,
<liquid:for.honey>,
100, 
true,
20);

mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:chicken>, <liquid:liquidchicken>*750);
mods.tconstruct.Melting.addEntityMelting(<entity:chickens:chickenschicken>, <liquid:liquidchicken>*750);
for comb in <ore:beeComb>.items {
    // melt combs to honey
    mods.tconstruct.Melting.addRecipe(
	<liquid:for.honey> * 50,
	comb, 
	300);
    // dry combs to wax
    mods.tconstruct.Drying.addRecipe(<forestry:beeswax>,comb, 2000);
}
	
mods.tconstruct.Alloy.addRecipe(<liquid:chickenstock>*225,
 [<liquid:liquidchicken>*250,<liquid:salt>*72]);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:salt_block>,
 null,
 <liquid:salt>,
 1296, false, 30);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>,
 <contenttweaker:salt_cube>,
 <liquid:gold>,
 288, true, 10);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>,
 <contenttweaker:salt_cube>,
 <liquid:brass>,
 144, true, 10);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>,
 <contenttweaker:salt_cube>,
 <liquid:alubrass>,
 144, true, 10);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:salt_cube>,
 <tconstruct:cast_custom:2>,
 <liquid:salt>,
 144, false, 10);