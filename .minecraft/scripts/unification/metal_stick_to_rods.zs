#priority 1050

import crafttweaker.oredict.IOreDictEntry;

/*
	Make metal ore:stickX ore:rodX, because... why must some mods be different?
*/

var metalStickPairs as IOreDictEntry[][] = [
	[<ore:stickAluminum>, <ore:rodAluminum>],
	[<ore:stickCopper>, <ore:rodCopper>],
	[<ore:stickIridium>, <ore:stickIridium>],
	[<ore:stickIron>, <ore:rodIron>],
	[<ore:stickSteel>, <ore:rodSteel>],
	[<ore:stickTitanium>, <ore:rodTitanium>],
	[<ore:stickTitaniumAluminide>, <ore:rodTitaniumAluminide>],
	[<ore:stickTitaniumIridium>, <ore:rodTitaniumIridium>],
];

for pair in metalStickPairs {
	for item in pair[0].items {
		pair[1].add(item);
	}
}
<ore:blockElvenElementium>.add(<botania:storage:2>);
<ore:blockManasteel>.add(<botania:storage:0>);
<ore:blockTerrasteel>.add(<botania:storage:1>);
<ore:pulpWood>.add(<thermalfoundation:material:800>);
<ore:dustWood>.add(<forestry:wood_pulp>);
<ore:dustWood>.add(<techreborn:dust:46>);
<ore:dustWood>.mirror(<ore:pulpWood>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);
<ore:stickTreatedWood>.add(<forestry:oak_stick>);
<ore:blockEnhancedGalgadorian>.add(<stevescarts:blockmetalstorage:2>);
<ore:ingotEnhancedGalgadorian>.add(<stevescarts:modulecomponents:49>);
<ore:blockGalgadorian>.add(<stevescarts:blockmetalstorage:1>);
<ore:ingotGalgadorian>.add(<stevescarts:modulecomponents:47>);
<ore:blockReinforcedMetal>.add(<stevescarts:blockmetalstorage:0>);
<ore:ingotReinforcedMetal>.add(<stevescarts:modulecomponents:22>);
<ore:gearElementium>.remove(<contenttweaker:material_part:37>);
<ore:plateElementium>.remove(<contenttweaker:material_part:38>);
<ore:gearElvenElementium>.add(<contenttweaker:material_part:37>);
<ore:plateElvenElementium>.add(<contenttweaker:material_part:38>);
<ore:gearPigIron>.remove(<contenttweaker:material_part:45>);
<ore:platePigIron>.remove(<contenttweaker:material_part:46>);
<ore:gearPigiron>.add(<contenttweaker:material_part:45>);
<ore:platePigiron>.add(<contenttweaker:material_part:46>);
<ore:gearAluminumBrass>.remove(<contenttweaker:material_part:27>);
<ore:plateAluminumBrass>.remove(<contenttweaker:material_part:28>);
<ore:gearAlubrass>.add(<contenttweaker:material_part:27>);
<ore:plateAlubrass>.add(<contenttweaker:material_part:28>);
<ore:yarn>.add(<contenttweaker:yarn>);
<ore:yarn>.add(<contenttweaker:yarn_silk>);
<ore:yarn>.add(<contenttweaker:yarn_feather>);
<ore:yarn>.add(<contenttweaker:yarn_hemp>);
<ore:yarn>.add(<contenttweaker:yarn_golden>);
<ore:yarn>.add(<contenttweaker:yarn_ender>);
<ore:yarn>.add(<contenttweaker:yarn_invisibilia>);
<ore:plateFabric>.add(<contenttweaker:fabric>);
<ore:plateFabric>.add(<forestry:crafting_material:3>);
<ore:plateFabric>.add(<hatchery:fiber_pad>);
<ore:plateFabric>.add(<immersiveengineering:material:5>);
<ore:plateFabric>.add(<tconstruct:materials:15>);
<ore:platePulsatingMesh>.add(<forestry:crafting_material:1>);
<ore:fabricHemp>.remove(<immersiveengineering:material:5>);