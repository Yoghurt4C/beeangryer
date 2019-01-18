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
<ore:nuggetIron>.add(<extrabees:misc:6>);
<ore:nuggetGold>.add(<extrabees:misc:7>);
<ore:nuggetSilver>.add(<extrabees:misc:8>);
<ore:nuggetPlatinum>.add(<extrabees:misc:9>);
<ore:nuggetCopper>.add(<extrabees:misc:10>);
<ore:nuggetTin>.add(<extrabees:misc:11>);
<ore:nuggetNickel>.add(<extrabees:misc:12>);
<ore:nuggetLead>.add(<extrabees:misc:13>);
<ore:nuggetZinc>.add(<extrabees:misc:14>);
<ore:nuggetTitanium>.add(<extrabees:misc:15>);
<ore:nuggetTungsten>.add(<extrabees:misc:16>);
<ore:pulpWood>.add(<thermalfoundation:material:800>);
<ore:dustWood>.add(<forestry:wood_pulp>);
<ore:dustWood>.add(<techreborn:dust:46>);
