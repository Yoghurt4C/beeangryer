var ingotCopper=<ore:ingotCopper>;
var ingotTin=<ore:ingotTin>;
var ingotBronze=<ore:ingotBronze>;
var glassOrange=<ore:blockGlassOrange>;

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