<ceramics:faucet>.addTooltip("Drains liquids from Melters and other things");
recipes.addShapeless(<ceramics:unfired_clay:4>*2,[<minecraft:clay_ball>,<minecraft:clay_ball>,<ore:dyeWhite>]);

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

for comb in <ore:beeComb>.items {
    // melt combs to honey
    mods.tconstruct.Melting.addRecipe(
	<liquid:for.honey> * 50,
	comb, 
	300);
    // dry combs to wax
    mods.tconstruct.Drying.addRecipe(<forestry:beeswax>,comb, 6000);
}

