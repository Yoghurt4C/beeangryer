mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_injector"}),
"Read the Bee Angry-er Guidebook for more information on this multiblock.");
mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:bee_brick"}),
"Read the Bee Angry-er Guidebook for more information on this multiblock.");
mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mystical_bee_brick"}),
"Read the Bee Angry-er Guidebook for more information on this multiblock.");

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