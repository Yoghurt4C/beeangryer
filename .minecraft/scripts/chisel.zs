import mods.chisel.Carving;
import crafttweaker.item.IItemStack;

var chiselPairs as string[IItemStack] = {
	<chisel:blockaluminum> : "blockAluminum",
	<chisel:blockbronze> : "blockBronze",
	<chisel:blockcobalt> : "blockCobalt",
	<chisel:blockcopper> : "blockCopper",
	<chisel:blockelectrum> : "blockElectrum",
	<chisel:gold> : "blockGold",
	<chisel:blockinvar>:"blockInvar",
	<chisel:iron> : "blockIron",
	<chisel:blocklead> : "blockLead",
	<chisel:blocknickel> : "blockNickel",
	<chisel:blockplatinum> : "blockPlatinum",
	<chisel:blocksilver> : "blockSilver",
	<chisel:blocksteel> : "blockSteel",
	<chisel:blocktin> : "blockTin",
	<chisel:blockuranium> : "blockUranium"};

var chiselPairMeta as int[IItemStack] = {
	<chisel:blockaluminum> : 7,
	<chisel:blockbronze> : 7,
	<chisel:blockcobalt> : 7,
	<chisel:blockcopper> : 7,
	<chisel:blockelectrum> : 7,
	<chisel:gold> : 15,
	<chisel:blockinvar> : 7,
	<chisel:iron> : 15,
	<chisel:blocklead> : 7,
	<chisel:blocknickel> : 7,
	<chisel:blockplatinum> : 7,
	<chisel:blocksilver> : 7,
	<chisel:blocksteel> : 7,
	<chisel:blocktin> : 7,
	<chisel:blockuranium> : 7};

for chiselBlock, variation in chiselPairs {
	mods.chisel.Carving.removeGroup(variation);
	mods.chisel.Carving.addGroup(variation);
	var meta = chiselPairMeta[chiselBlock];
	for i in 0 to meta {
		var chiselBlockItem = chiselBlock.definition.makeStack(i);
		Carving.addVariation(variation,chiselBlockItem);}}
var originBlocks as string[IItemStack] = {
	<immersiveengineering:storage:1> : "blockAluminum",
	<thermalfoundation:storage_alloy:3> : "blockBronze",
	<tconstruct:metal> : "blockCobalt",
	<immersiveengineering:storage> : "blockCopper",
	<immersiveengineering:storage:7> : "blockElectrum",
	<minecraft:gold_block> : "blockGold",
	<thermalfoundation:storage_alloy:2>:"blockInvar",
	<minecraft:iron_block> : "blockIron",
	<immersiveengineering:storage:2> : "blockLead",
	<immersiveengineering:storage:4>: "blockNickel",
	<thermalfoundation:storage:6> : "blockPlatinum",
	<immersiveengineering:storage:3> : "blockSilver",
	<immersiveengineering:storage:8> : "blockSteel",
	<thermalfoundation:storage:1> : "blockTin",
	<immersiveengineering:storage:5> : "blockUranium"};
for originBlock, variation in originBlocks{
	Carving.addVariation(variation,originBlock);}
//clear glass because why not	
Carving.addVariation("glass", <tconstruct:clear_glass>);
Carving.addVariation("glassdyedwhite", <tconstruct:clear_stained_glass>);
Carving.addVariation("glassdyedorange", <tconstruct:clear_stained_glass:1>);
Carving.addVariation("glassdyedmagenta", <tconstruct:clear_stained_glass:2>);
Carving.addVariation("glassdyedlightblue", <tconstruct:clear_stained_glass:3>);
Carving.addVariation("glassdyedyellow", <tconstruct:clear_stained_glass:4>);
Carving.addVariation("glassdyedlime", <tconstruct:clear_stained_glass:5>);
Carving.addVariation("glassdyedpink", <tconstruct:clear_stained_glass:6>);
Carving.addVariation("glassdyedgray", <tconstruct:clear_stained_glass:7>);
Carving.addVariation("glassdyedlightgray", <tconstruct:clear_stained_glass:8>);
Carving.addVariation("glassdyedcyan", <tconstruct:clear_stained_glass:9>);
Carving.addVariation("glassdyedpurple", <tconstruct:clear_stained_glass:10>);
Carving.addVariation("glassdyedblue", <tconstruct:clear_stained_glass:11>);
Carving.addVariation("glassdyedbrown", <tconstruct:clear_stained_glass:12>);
Carving.addVariation("glassdyedgreen", <tconstruct:clear_stained_glass:13>);
Carving.addVariation("glassdyedred", <tconstruct:clear_stained_glass:14>);
Carving.addVariation("glassdyedblack", <tconstruct:clear_stained_glass:15>);