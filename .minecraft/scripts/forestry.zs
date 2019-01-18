import mods.forestry.Carpenter;

var ingotCopper=<ore:ingotCopper>;
var ingotTin=<ore:ingotTin>;
var ingotBronze=<ore:ingotBronze>;
var glassOrange=<ore:blockGlassOrange>;
var plateIron=<ore:plateIron>;
var gearIron=<ore:gearIron>;
var modularium=<modularmachinery:itemmodularium>;

var grafter=<forestry:grafter>.anyDamage().transformDamage(1);
var grafterProven=<forestry:grafter_proven>.anyDamage().transformDamage(1);

//forestry
recipes.addShaped(<forestry:sturdy_machine>,[
[ingotBronze,ingotBronze,ingotBronze],
[ingotBronze,<forestry:beeswax>,ingotBronze],
[ingotBronze,ingotBronze,ingotBronze]]);
recipes.addShaped(<forestry:carpenter>,[
[ingotBronze,glassOrange,ingotBronze],
[ingotBronze,<forestry:sturdy_machine>,ingotBronze],
[ingotBronze,glassOrange,ingotBronze]]);
recipes.addShaped(<forestry:squeezer>,[
[ingotTin,glassOrange,ingotTin],
[ingotTin,<forestry:sturdy_machine>,ingotTin],
[ingotTin,glassOrange,ingotTin]]);
recipes.addShaped(<forestry:centrifuge>,[
[ingotCopper,glassOrange,ingotCopper],
[ingotCopper,<forestry:sturdy_machine>,ingotCopper],
[ingotCopper,glassOrange,ingotCopper]]);
recipes.addShaped(<forestry:fabricator>,[
[<ore:ingotGold>,glassOrange,<ore:ingotGold>],
[glassOrange,<forestry:sturdy_machine>,glassOrange],
[<ore:ingotGold>,<ore:chestWood>,<ore:ingotGold>]]);
recipes.addShaped(<genetics:misc>,[
[gearIron,plateIron,gearIron],
[plateIron,<forestry:sturdy_machine>,plateIron],
[gearIron,plateIron,gearIron]]);
recipes.addShaped(<forestry:grafter_proven>,[
[null,null,<ore:ingotIridium>],
[null,<ore:stickWood>,null],
[<ore:stickWood>,null,null]]);

mods.forestry.Carpenter.addRecipe(<modularmachinery:itemmodularium>*5, [
[<ore:ingotSignalum>,ingotBronze,<ore:ingotSignalum>],
[ingotBronze,<minecraft:redstone>,ingotBronze],
[<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:redstone>]],
40, 
<liquid:for.honey> * 200);
mods.forestry.Carpenter.addRecipe(<modulardiversity:blockmanainputhatch>, [
[modularium,<botania:manadetector>,modularium],
[modularium,<botania:manaresource:1>,modularium],
[modularium,<botania:pool>,modularium]],
120, 
<liquid:for.honey> * 1000);
mods.forestry.Carpenter.addRecipe(<forestry:habitat_former>, [
[glassOrange,<minecraft:redstone>,glassOrange],
[<forestry:thermionic_tubes:3>,<forestry:sturdy_machine>,<forestry:thermionic_tubes:3>],
[<ore:gearGold>,<forestry:chipsets>,<ore:gearGold>]],
120, 
<liquid:for.honey> * 1000);