#priority 1050
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
//techreborn is a late bloomer, too
val forceTROreDict ={
<ore:dustBrass>:<techreborn:dust:6>,
<ore:ingotBrass>:<techreborn:ingot:1>,
<ore:nuggetBrass>:<techreborn:nuggets:1>,
<ore:plateBrass>:<techreborn:plates:17>,
<ore:dustChrome>:<techreborn:dust:10>,
<ore:ingotChrome>:<techreborn:ingot:3>,
<ore:nuggetChrome>:<techreborn:nuggets:3>,
<ore:plateChrome>:<techreborn:plates:19>,
<ore:dustPlatinum>:<techreborn:dust:38>,
<ore:ingotPlatinum>:<techreborn:ingot:10>,
<ore:nuggetPlatinum>:<techreborn:nuggets:10>,
<ore:platePlatinum>:<techreborn:plates:26>,
<ore:dustTitanium>:<techreborn:dust:54>,
<ore:ingotTitanium>:<techreborn:ingot:14>,
<ore:nuggetTitanium>:<techreborn:nuggets:14>,
<ore:plateTitanium>:<techreborn:plates:30>,
<ore:dustTungsten>:<techreborn:dust:54>,
<ore:ingotTungsten>:<techreborn:ingot:15>,
<ore:nuggetTungsten>:<techreborn:nuggets:15>,
<ore:plateTungsten>:<techreborn:plates:31>,
<ore:ingotTungstensteel>:<techreborn:ingot:17>,
<ore:nuggetTungstensteel>:<techreborn:nuggets:17>,
<ore:plateTungstensteel>:<techreborn:plates:32>,
<ore:dustZinc>:<techreborn:dust:59>,
<ore:ingotZinc>:<techreborn:ingot:18>,
<ore:nuggetZinc>:<techreborn:nuggets:18>,
<ore:plateZinc>:<techreborn:plates:33>,
<ore:ingotRefinedIron>:<techreborn:ingot:19>,
<ore:nuggetRefinedIron>:<techreborn:nuggets:19>,
<ore:plateRefinedIron>:<techreborn:plates:34>,
<ore:plateAdvancedAlloy>:<techreborn:plates:35>,
<ore:plateMagnalium>:<techreborn:plates:36>,
<ore:plateIridiumAlloy>:<techreborn:plates:37>
} as IItemStack[IOreDictEntry];
for entry, item in forceTROreDict{entry.add(item);}

