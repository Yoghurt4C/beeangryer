<ceramics:faucet>.addTooltip("Drains liquids from Melters and other things");
recipes.addShapeless("unfired_porcelain",<ceramics:unfired_clay:4>*2,[<minecraft:clay_ball>,<minecraft:clay_ball>,<ore:dyeWhite>]);

recipes.addShapeless("mossy_stone_bricks",<minecraft:stonebrick:1>,[
<ore:bricksStone>,<ore:vine>]);
recipes.addShapeless("mossy_cobblestone",<minecraft:mossy_cobblestone>,[
<ore:cobblestone>,<ore:vine>]);
recipes.addShaped("vineball",<botania:vineball>,[
[<ore:vine>,<ore:vine>,<ore:vine>],
[<ore:vine>,<ore:vine>,<ore:vine>],
[<ore:vine>,<ore:vine>,<ore:vine>]]);

recipes.addShaped("flint_chisel",<tcomplement:chisel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 393, HarvestLevel: 1, Attack: 2.9 as float}, chiseldata: {}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 393, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["aoe", "tool", "weapon"]}, TinkerData: {Materials: ["wood", "flint"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}], Traits: ["ecological", "crude2"]}),[
[null,<minecraft:flint>],
[<minecraft:stick>,null]]);
var chisel=<chisel:chisel_iron>.anyDamage().transformDamage(1)|<chisel:chisel_diamond>.anyDamage().transformDamage(1)|<chisel:chisel_hitech>.anyDamage().transformDamage(1)|<tcomplement:chisel>.anyDamage().transformDamage(1)|<tcomplement:chisel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 393, HarvestLevel: 1, Attack: 2.9 as float}, chiseldata: {}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 393, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["aoe", "tool", "weapon"]}, TinkerData: {Materials: ["wood", "flint"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}], Traits: ["ecological", "crude2"]}).anyDamage().transformDamage(1);

recipes.addShaped("pick_head_flint",<tconstruct:pick_head>.withTag({Material: "flint"}),[
[<minecraft:flint>,<minecraft:flint>],
[chisel,<minecraft:flint>]]);
recipes.addShaped("tool_binding_wood",<tconstruct:binding>.withTag({Material: "wood"}),[
[<minecraft:stick>,null],
[chisel,<minecraft:stick>]]);
recipes.addShaped("pickaxe_flint",<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 190, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}], Traits: ["ecological", "crude2"]}),[
[null,null,<tconstruct:pick_head>.withTag({Material: "flint"})],
[null,<tconstruct:binding>.withTag({Material: "wood"}),null],
[<minecraft:stick>,null,null]]);

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

var cow = <fluidcows:cow_displayer>.withTag({fluid: "milk"});
mods.tconstruct.Casting.addBasinRecipe(
	<fluidcows:cow_displayer>.withTag({fluid: "steel"}),
	cow,
	<liquid:steel>,
	3600, 
	true,
	200);
mods.tconstruct.Casting.addBasinRecipe(
	<fluidcows:cow_displayer>.withTag({fluid: "pigiron"}),
	cow,
	<liquid:pigiron>,
	3600, 
	true,
	200);
mods.tconstruct.Casting.addBasinRecipe(
	<fluidcows:cow_displayer>.withTag({fluid: "knightslime"}),
	cow,
	<liquid:knightslime>,
	3600, 
	true,
	200);


mods.tconstruct.Casting.removeTableRecipe(<tconstruct:materials:0>);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:materials:0>,
 <tcomplement:materials:1>,
 <liquid:stone>,
 54, true, 40);
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared:0>);
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared:1>);
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared_glass:0>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:seared:0>,
 <tcomplement:scorched_block:0>,
 <liquid:stone>,
72, true, 40);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:seared:1>,
 <tcomplement:scorched_block:1>,
 <liquid:stone>,
72, true, 40);

game.setLocalization("modifier.tasty.name","§6Succulent");
game.setLocalization("modifier.tasty.desc","§oSeductive Scent§r\nSmells so good.. You'd rather eat your tool than starve.");