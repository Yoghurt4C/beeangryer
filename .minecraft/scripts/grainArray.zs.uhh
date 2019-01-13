import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
val grainArray=[
<extrabees:misc:6>,//iron
<extrabees:misc:7>,//gold
<extrabees:misc:10>,//copper
<extrabees:misc:11>,//tin
<extrabees:misc:8>,//silver
<extrabees:misc:13>,//lead
<extrabees:misc:12>,//nickel
<extrabees:misc:9>//platinum
]as IItemStack[];
val nuggetArray=[
<minecraft:iron_nugget>,
<minecraft:gold_nugget>,
<thermalfoundation:material:192>,
<thermalfoundation:material:193>,
<thermalfoundation:material:194>,
<thermalfoundation:material:195>,
<thermalfoundation:material:197>,
<thermalfoundation:material:198>
]as IItemStack[];
for i, item in nuggetArray{recipes.addShapeless(item,[grainArray[i],grainArray[i],grainArray[i],grainArray[i]]);}