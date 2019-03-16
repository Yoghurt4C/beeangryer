import mods.charset.Cauldron;

var stone=<ore:stone>;
recipes.addShaped("stonecauldron",<minecraft:cauldron>.withTag({display:{Name:"Stone Cauldron",Lore:["Can be filled using","§9Bowls of Water"]}}),[
[stone,null,stone],
[stone,null,stone],
[<quark:stone_wall>,<minecraft:stone_slab>,<quark:stone_wall>]]);

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
<techreborn:dust:12>, 
<liquid:dissolvedeggshells>*250, 
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
<contenttweaker:soggylime>.addShiftTooltip(format.green("4. Mix in some "+format.aqua(format.underline("Clay Dust"))+"."));
<contenttweaker:soggylime>.addShiftTooltip(format.green("5. Put the mixture somewhere it can "+format.yellow("dry up"+".")));
<contenttweaker:soggylime>.addShiftTooltip("");
<contenttweaker:soggylime>.addShiftTooltip(format.green("There are recipes that allow you"));
<contenttweaker:soggylime>.addShiftTooltip(format.green("to "+format.italic("skip")+" some of these steps!"));