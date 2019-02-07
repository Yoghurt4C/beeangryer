var plastic=<hatchery:plastic>;
var casing=<modularmachinery:blockcasing>;
var casing2=<modularmachinery:blockcasing:4>;
var chest=<ore:chestWood>;
var glass=<ore:blockGlass>;
var obsidian=<ore:obsidian>;

mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_injector"}),
"Read the Bee Angry-er Guidebook for more information on this multiblock.");
mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:bee_brick"}),
"Read the Bee Angry-er Guidebook for more information on this multiblock.");
mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mystical_bee_brick"}),
"Read the Bee Angry-er Guidebook for more information on this multiblock.");

game.setLocalization("tile.modularmachinery.blockinputbus.small.name","Small Item Input Bus");
game.setLocalization("tile.modularmachinery.blockinputbus.reinforced.name","Reinforced Item Input Bus");
game.setLocalization("tile.modularmachinery.blockinputbus.huge.name","Huge Item Input Bus");
game.setLocalization("tile.modularmachinery.blockinputbus.ludicrous.name","Ludicrous Item Input Bus");
game.setLocalization("tile.modularmachinery.blockoutputbus.small.name","Small Item Input Bus");
game.setLocalization("tile.modularmachinery.blockoutputbus.reinforced.name","Reinforced Item Input Bus");
game.setLocalization("tile.modularmachinery.blockoutputbus.huge.name","Huge Item Input Bus");
game.setLocalization("tile.modularmachinery.blockoutputbus.ludicrous.name","Ludicrous Item Input Bus");

recipes.addShaped("mm_blockcasing",<modularmachinery:blockcasing>*3,[
[plastic,plastic,plastic],
[plastic,<hatchery:circuit_board>,plastic],
[plastic,plastic,plastic]]);
recipes.addShaped("mm_controller",<modularmachinery:blockcontroller>,[
[casing],
[<techreborn:part:24>]]);
//md
//mods.forestry.Carpenter.addRecipe(<modularmachinery:itemmodularium>*5, [
//[<ore:ingotSignalum>,ingotBronze,<ore:ingotSignalum>],
//[ingotBronze,<minecraft:redstone>,ingotBronze],
//[<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:redstone>]],
//40, 
//<liquid:for.honey> * 200);
mods.forestry.Carpenter.addRecipe(<modulardiversity:blockmanainputhatch>, [
[null,<botania:manadetector>,null],
[null,casing,null],
[null,<botania:pool>,null]],
120, 
<liquid:for.honey> * 1000);
mods.forestry.Carpenter.addRecipe(<modulardiversity:blockbiomedetector>, [
[null,<forestry:habitat_locator>,null],
[null,casing,null],
[null,null,null]],
120, 
<liquid:for.honey> * 500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockcasing:4>*4, [
[obsidian,casing,obsidian],
[casing,null,casing],
[obsidian,casing,obsidian]],
60, 
<liquid:for.honey> * 500);

//inputbus
recipes.addShaped("mm_inputbus_lv",<modularmachinery:blockinputbus:1>,[
[chest],
[casing]]);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockinputbus:3>, [
[null,chest,null],
[null,casing2,null],
[null,null,null]],
120, 
<liquid:for.honey> * 500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockinputbus:5>, [
[null,<techreborn:digital_chest>,null],
[null,casing2,null],
[null,null,null]],
120, 
<liquid:for.honey> * 500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockinputbus:6>, [
[null,<techreborn:quantum_chest>,null],
[null,casing2,null],
[null,null,null]],
120, 
<liquid:for.honey> * 500);
//outputbus
recipes.addShaped("mm_outputbus_lv",<modularmachinery:blockoutputbus:1>,[
[casing],
[chest]]);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockoutputbus:3>, [
[null,casing2,null],
[null,chest,null],
[null,null,null]],
120, 
<liquid:for.honey> * 500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockoutputbus:5>, [
[null,casing2,null],
[null,<techreborn:digital_chest>,null],
[null,null,null]],
120, 
<liquid:for.honey> * 500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockoutputbus:6>, [
[null,casing2,null],
[null,<techreborn:quantum_chest>,null],
[null,null,null]],
120, 
<liquid:for.honey> * 500);
//inputhatch
recipes.addShaped("mm_inputhatch_ulv",<modularmachinery:blockfluidinputhatch>,[
[glass],
[casing]]);
recipes.addShaped("mm_inputhatch_lv",<modularmachinery:blockfluidinputhatch:2>,[
[<thermalexpansion:reservoir>],
[casing]]);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidinputhatch:3>,[
[null,<thermalexpansion:reservoir:1>,null],
[null,casing2,null]],
120,
<liquid:for.honey>*500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidinputhatch:5>,[
[null,<thermalexpansion:reservoir:2>,null],
[null,casing2,null]],
120,
<liquid:for.honey>*500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidinputhatch:6>,[
[null,<thermalexpansion:reservoir:3>,null],
[null,casing2,null]],
120,
<liquid:for.honey>*500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidinputhatch:7>,[
[null,<thermalexpansion:reservoir:4>,null],
[null,casing2,null]],
120,
<liquid:for.honey>*500);
//outputhatch
recipes.addShaped("mm_outputhatch_ulv",<modularmachinery:blockfluidoutputhatch>,[
[casing],
[glass]]);
recipes.addShaped("mm_outputhatch_lv",<modularmachinery:blockfluidoutputhatch:2>,[
[casing],
[<thermalexpansion:reservoir>]]);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidoutputhatch:3>,[
[null,casing2,null],
[null,<thermalexpansion:reservoir:1>,null]],
120,
<liquid:for.honey>*500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidoutputhatch:5>,[
[null,casing2,null],
[null,<thermalexpansion:reservoir:2>,null]],
120,
<liquid:for.honey>*500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidoutputhatch:6>,[
[null,casing2,null],
[null,<thermalexpansion:reservoir:3>,null]],
120,
<liquid:for.honey>*500);
mods.forestry.Carpenter.addRecipe(<modularmachinery:blockfluidoutputhatch:7>,[
[null,casing2,null],
[null,<thermalexpansion:reservoir:4>,null]],
120,
<liquid:for.honey>*500);

recipes.addShaped("mana_injector_blueprint",<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_injector"}),[
[<minecraft:glass>],
[<ore:livingrock>,<botania:manaresource:1>],
[null,<ore:livingrock>,<ore:livingwood>]]);
recipes.addShaped("bee_brick_blueprint",<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:bee_brick"}),[
[<minecraft:glass>],
[<ore:stickWood>,<minecraft:brick>],
[null,<ore:stickWood>,<ore:plankWood>]]);
recipes.addShaped("mystical_bee_brick_blueprint",<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mystical_bee_brick"}),[
[<minecraft:glass>,<botania:petal:*>],
[<ore:stickWood>,<minecraft:brick>],
[null,<ore:stickWood>,<ore:plankWood>]]);