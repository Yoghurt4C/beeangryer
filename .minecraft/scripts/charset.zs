import mods.charset.Cauldron;

var stone=<ore:stone>;
recipes.addShaped("stonecauldron",<minecraft:cauldron>.withTag({display:{Name:"Stone Cauldron",Lore:["Can be filled using","§9Bowls of Water"]}}),[
[stone,null,stone],
[stone,null,stone],
[<quark:stone_wall>,<minecraft:stone_slab>,<quark:stone_wall>]]);
var stickReuse=<minecraft:stick>.reuse()|<ore:stickTreatedWood>.reuse();

recipes.addShaped("string_to_yarn",<contenttweaker:yarn>*2,[
[null,<ore:string>,null],
[<ore:string>,stickReuse,<ore:string>],
[null,<ore:string>,null]]);
recipes.addShapeless("yarn_to_wool",<minecraft:wool:0>,[
<ore:yarn>,<ore:yarn>,<ore:yarn>,<ore:yarn>]);
recipes.addShapeless("wool_to_yarn",<contenttweaker:yarn>*3,[<ore:blockWool>]);
recipes.addShaped("silk_to_yarn",<contenttweaker:yarn_silk>*2,[
[null,<forestry:crafting_material:2>,null],
[<forestry:crafting_material:2>,stickReuse,<forestry:crafting_material:2>],
[null,<forestry:crafting_material:2>,null]]);
recipes.addShapeless("woven_silk_to_yarn",<contenttweaker:yarn_silk>*5,[<forestry:crafting_material:3>]);
recipes.addShaped("fiber_to_yarn",<contenttweaker:yarn_feather>*2,[
[null,<hatchery:feather_fiber>,null],
[<hatchery:feather_fiber>,stickReuse,<hatchery:feather_fiber>],
[null,<hatchery:feather_fiber>,null]]);
recipes.addShapeless("pad_to_yarn",<contenttweaker:yarn_feather>*5,[<hatchery:fiber_pad>]);
recipes.addShaped("hemp_to_yarn",<contenttweaker:yarn_hemp>*2,[
[null,<immersiveengineering:material:4>,null],
[<immersiveengineering:material:4>,stickReuse,<immersiveengineering:material:4>],
[null,<immersiveengineering:material:4>,null]]);
recipes.addShapeless("hemp_fabric_to_yarn",<contenttweaker:yarn_hemp>*5,[<immersiveengineering:material:5>]);
recipes.addShaped("collis_to_yarn",<contenttweaker:yarn_golden>*1,[
[null,<uniquecrops:generic:6>,null],
[<uniquecrops:generic:6>,stickReuse,<uniquecrops:generic:6>],
[null,<uniquecrops:generic:6>,null]]);
recipes.addShaped("enderlily_to_yarn",<contenttweaker:yarn_ender>*2,[
[null,<uniquecrops:generic:5>,null],
[<uniquecrops:generic:5>,stickReuse,<uniquecrops:generic:5>],
[null,<uniquecrops:generic:5>,null]]);
recipes.addShaped("invisibilia_to_yarn",<contenttweaker:yarn_invisibilia>*2,[
[null,<uniquecrops:generic:11>,null],
[<uniquecrops:generic:11>,stickReuse,<uniquecrops:generic:11>],
[null,<uniquecrops:generic:11>,null]]);
mods.jei.JEI.addDescription(<contenttweaker:yarn>,"Can be woven from String and separated from Wool. Six of these can be crafted into a Swatch of Fabric by using a Loom.");
mods.jei.JEI.addDescription(<contenttweaker:fabric>,"Crafted by using a Loom while holding at least six Balls of Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_silk>,"Can be woven from Silk Wisp and separated from Woven Silk. Six of these can be crafted into a Woven Silk by using a Loom.");
mods.jei.JEI.addDescription(<forestry:crafting_material:3>,"Crafted by using a Loom while holding at least six Balls of Silk Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_feather>,"Can be woven from Feather Fibers and separated from Fiber Pads. Six of these can be crafted into a Fiber Pad by using a Loom.");
game.setLocalization("jei.item.hatchery.fiber_pad","Crafted by using a Loom while holding at least six Balls of Fiber Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_hemp>,"Can be woven from Hemp Fiber and separated from Hemp Fabric. Six of these can be crafted into a Swatch of Hemp Fabric by using a Loom.");
mods.jei.JEI.addDescription(<immersiveengineering:material:5>,"Crafted by using a Loom while holding at least six Balls of Hemp Yarn in your hand.");
game.setLocalization("item.immersiveengineering.material.hemp_fabric.name","Roll of Hemp Fabric");
mods.jei.JEI.addDescription(<contenttweaker:yarn_golden>,"Can be woven from Golden Rods. Six of these can be crafted into a Silky Cloth by using a Loom.");
mods.jei.JEI.addDescription(<tconstruct:materials:15>,"Crafted by using a Loom while holding at least six Balls of Golden ''Yarn'' in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_ender>,"Can be woven from Enderlily Twines. Six of these can be crafted into a Pulsating Mesh by using a Loom.");
mods.jei.JEI.addDescription(<forestry:crafting_material:1>,"Crafted by using a Loom while holding at least six Balls of Enderlily Yarn in your hand.");
mods.jei.JEI.addDescription(<contenttweaker:yarn_invisibilia>,"Can be woven from Invisibilia Twines. Six of these can be crafted into an Invisibilia Feather by using a Loom.");
recipes.addShaped("loom",<contenttweaker:loom>,[
[<ore:stickWood>,<ore:yarn>,<ore:stickWood>],
[<ore:stickWood>,<ore:yarn>,<ore:stickWood>],
[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]]);
mods.jei.JEI.addDescription(<contenttweaker:loom>,"Used to weave various fibers into fabric. Try using some Yarn on it!");

recipes.replaceAllOccurences(<forestry:crafting_material:3>,<ore:plateFabric>, <*>.only(function(item) {
    return !isNull(item) & !<forestry:alveary.sieve>.matches(item)& !<contenttweaker:yarn_silk>.matches(item);
}));
recipes.replaceAllOccurences(<immersiveengineering:material:5>,<ore:plateFabric>, <*>.only(function(item) {
    return !isNull(item) & !<contenttweaker:yarn_hemp>.matches(item);
}));
recipes.replaceAllOccurences(<minecraft:wool:*>,<ore:plateFabric>|<ore:blockWool>, <*>.only(function(item) {
    return !isNull(item) & !<minecraft:carpet:*>.matches(item) & !<minecraft:wool:*>.matches(item) & !<quark:quilted_wool:*>.matches(item) & !<chisel:cloud>.matches(item) & !<minecraft:torch>.matches(item) & !<contenttweaker:yarn>.matches(item);
}));
recipes.replaceAllOccurences(<minecraft:string>,<ore:yarn>, <*>.only(function(item) {
    return !isNull(item) & !<realfilingcabinet:upgrade:4>.matches(item) & !<realfilingcabinet:emptyfolder:2>.matches(item) & !<immersiveengineering:tool:0>.matches(item) & !<tconstruct:materials:15>.matches(item) & !<botania:felpumpkin>.matches(item) & !<minecraft:wool:0>.matches(item) & !<contenttweaker:yarn>.matches(item);
}));
recipes.replaceAllOccurences(<uniquecrops:generic:5>,<contenttweaker:yarn_ender>, <*>.only(function(item) {
    return !isNull(item) & !<realfilingcabinet:upgrade:4>.matches(item);
}));
recipes.replaceAllOccurences(<uniquecrops:generic:11>,<contenttweaker:yarn_invisibilia>);

//mods.charset.Cauldron.addItemRecipe(inputstack, fluid*int, outputstack);
//black chicken
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [15 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blackchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blackchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//red
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [14 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//green
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [13 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//brown
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [12 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:brownchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:brownchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//blue
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [11 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:bluechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:bluechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//purple
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [10 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:purplechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:purplechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//cyan
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [9 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:cyanchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:cyanchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//lightgray
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [8 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//gray
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [7 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:graychicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:graychicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//pink
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [6 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pinkchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pinkchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//lime
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [5 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:limechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:limechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//yellow
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [4 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//lightblue
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [3 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//magenta
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [2 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:magentachicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:magentachicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//orange
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [1 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:orangechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:orangechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));
//white
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Chicken: "minecraft:chicken"}), 
<liquid:dyed_water>.withTag({dyes: [0 as byte]})*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:whitechicken", Gain: 1, Strength: 1}));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:whitechicken", Gain: 1, Strength: 1}).addTooltip(format.gray("Dyed in a Cauldron."));

//"boiling" recipes
//mods.charset.Cauldron.addItemFluidRecipe(inputstack, inputfluidstack*int, outputstack,  outputfluidstack*int);
Cauldron.addItemFluidRecipe(
<minecraft:sapling>, 
<liquid:water>*1000, 
null,  
<liquid:saplingslumgullion>*1000);

Cauldron.addItemFluidRecipe(
<botania:manaresource:6>, 
<liquid:saplingslumgullion>*1000, 
null,  
<liquid:excitedsaplingslumgullion>*1000);

Cauldron.addItemFluidRecipe(
<techreborn:dust:8>, 
<liquid:excitedsaplingslumgullion>*1000, 
null,  
<liquid:enrichedexcitedsaplingslumgullion>*1000);

Cauldron.addItemRecipe(
<minecraft:egg>, 
<liquid:enrichedexcitedsaplingslumgullion>*1000, 
<contenttweaker:mutandis>*16);

<contenttweaker:mutandis>.addTooltip(format.gray(format.italic("Hold SHIFT for a recipe...")));
<contenttweaker:mutandis>.addShiftTooltip(format.green("1. Put an "+format.underline("Oak Sapling")+" into"));
<contenttweaker:mutandis>.addShiftTooltip(format.green("    a "+format.gray(format.underline("Cauldron"))+" with "+format.blue(format.underline("Water."))));
<contenttweaker:mutandis>.addShiftTooltip(format.green("2. Add a "+format.red(format.underline("Redstone Root"))+" in."));
<contenttweaker:mutandis>.addShiftTooltip(format.green("3. Add some "+format.yellow(format.underline("Calcite"))+"."));
<contenttweaker:mutandis>.addShiftTooltip(format.green("4. Finally, top with an "+format.gold(format.underline("Egg"))+"."));

Cauldron.addItemFluidRecipe(
<contenttweaker:firedeggshells>, 
<liquid:water>*1000, 
null,  
<liquid:dissolvedeggshells>*1000);
mods.jei.JEI.addDescription(<liquid:dissolvedeggshells>,["Obtained by dissolving Fired Egg Shells in a Water-filled Cauldron. Look at the Soggy Lime tooltip or description to see the entire process."]);
Cauldron.addItemFluidRecipe(
<contenttweaker:salt_cube>*1, 
<liquid:liquidchicken>*1000, 
null,  
<liquid:chickenstock>*750);
mods.jei.JEI.addDescription(<liquid:chickenstock>,["Prepared by putting a Salt Cube into a full Cauldron of Liquid Poultry. Very bland, inefficient, and requires various tools to manage. Can be made in a variety of other, more industrialized ways."]);

Cauldron.addItemRecipe(
<techreborn:smalldust:12>, 
<liquid:dissolvedeggshells>*125, 
<contenttweaker:soggylime>);
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "minecraft:chicken", Gain: 1, Strength: 1}), 
<liquid:dissolvedeggshells>*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:calcitechicken", Gain: 1, Strength: 1}));
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "minecraft:chicken", Gain: 1, Strength: 1}), 
<liquid:for.honey>*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:honeychicken", Gain: 1, Strength: 1}));

Cauldron.addItemFluidRecipe(
<hatchery:manure_block>, 
<liquid:water>*1000, 
null,  
<liquid:liquid_fertilizer>*1000);
Cauldron.addItemRecipe(
<roost:chicken>.withTag({Growth: 1, Chicken: "minecraft:chicken", Gain: 1, Strength: 1}), 
<liquid:for.honey>*1000, 
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:manurechicken", Gain: 1, Strength: 1}));

furnace.addRecipe(<charset:shard>,<ore:sand>,0.1);

mods.jei.JEI.addDescription(<contenttweaker:soggylime>,[
"Necessary for progression, and somewhat of a pain to obtain. See Guidebook for an in-depth breakdown, or look at the tooltip."]);
<contenttweaker:soggylime>.addTooltip(format.gray(format.italic("Hold SHIFT for a recipe...")));
<contenttweaker:soggylime>.addShiftTooltip(format.green("1. Pan sand for "+format.gold(format.underline("Egg Shells"+"."))));
<contenttweaker:soggylime>.addShiftTooltip(format.green("2. Make them spend some time in "+format.red("heat")+"."));
<contenttweaker:soggylime>.addShiftTooltip(format.green("3. Put the "+format.gray(format.underline("Fired Egg Shells"))+" into "));
<contenttweaker:soggylime>.addShiftTooltip(format.green("     a "+format.blue(format.underline("Water"))+"-filled "+format.gray("Crucible"+".")));
<contenttweaker:soggylime>.addShiftTooltip(format.green("4. Mix in a "+format.aqua(format.underline("Small Pile of Clay Dust"))+"."));
<contenttweaker:soggylime>.addShiftTooltip(format.green("5. Put the mixture somewhere it can "+format.yellow("dry up"+".")));
<contenttweaker:soggylime>.addShiftTooltip("");
<contenttweaker:soggylime>.addShiftTooltip(format.green("There are recipes that allow you"));
<contenttweaker:soggylime>.addShiftTooltip(format.green("to "+format.italic("skip")+" some of these steps!"));