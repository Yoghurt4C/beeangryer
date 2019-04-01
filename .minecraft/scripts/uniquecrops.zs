import mods.uniquecrops.SeedCrafting;
import mods.jei.JEI;

recipes.addShaped("slippers",<uniquecrops:slippers>,[
[<uniquecrops:generic:14>,<uniquecrops:generic:14>]]);

JEI.hide(<uniquecrops:seedimperia>);
JEI.hide(<uniquecrops:seedindustria>);
JEI.hide(<uniquecrops:seeddonutsteel>);
//SeedCrafting.addRecipe(IItemStack output, 
//IIngredient center, 
//IIngredient corner, 
//IIngredient edge);
//SeedCrafting.removeRecipe(IItemStack output);
SeedCrafting.addRecipe(<minecraft:ender_pearl>*3, 
 <minecraft:snowball>, 
 <forestry:crafting_material:1>, 
 <forestry:crafting_material:1>);
SeedCrafting.addRecipe(<uniquecrops:seedprecision>, 
 <minecraft:quartz>, 
 <uniquecrops:seedcollis>, 
 <uniquecrops:seedinvisibilia>);
SeedCrafting.removeRecipe(<uniquecrops:seedprecision>);
SeedCrafting.addRecipe(<uniquecrops:seedenderlily>, 
 <minecraft:quartz>, 
 <uniquecrops:seedprecision>, 
 <uniquecrops:seeddirigible>);
SeedCrafting.removeRecipe(<uniquecrops:seedenderlily>);
SeedCrafting.removeRecipe(<uniquecrops:seedimperia>);
SeedCrafting.removeRecipe(<uniquecrops:seedindustria>);
SeedCrafting.removeRecipe(<uniquecrops:seeddonutsteel>);

JEI.addDescription(<uniquecrops:generic:0>,"This book is in-game documentation about the crops added by the mod. Implanted into the Beeangry-er Guidebook, so you don't really *need* to craft it... Unless you're trying to grow a Feroxia crop.");
JEI.addDescription(<uniquecrops:generic:1>,"Dropped from Scientia/Knowledge crops. When applied to any tool in an anvil, they will reduce their repair cost by 5 levels. Also used as a crafting ingredient to make Upgrade Books.");
JEI.addDescription(<uniquecrops:generic:3>,"Dropped from Mary Jane crops. They can be used to craft a few torches, or a Lava Lily, or be used as furnace fuel, giving the equivalent of a block of coal as burn time.");
JEI.addDescription(<uniquecrops:generic:4>,"Dropped from Merlinia crops. Used as crafting ingredient for Hourglass of Nostalgia, and brewing ingredient for Reversing Potions.");
JEI.addDescription(<uniquecrops:generic:5>,"Dropped from Enderlily crops. Used to craft quite a lot of things.");
JEI.addDescription(<uniquecrops:generic:6>,"Dropped from Goldenrods/Collis crops. Used to craft Golden Bread.");
JEI.addDescription(<uniquecrops:generic:7>,"Dropped from Precision crops. Used to craft Precision Gems.");
JEI.addDescription(<uniquecrops:generic:8>,"Crafted from Precision Nuggets, they are used to craft the Precision tools and swords.");
JEI.addDescription(<uniquecrops:generic:9>,"Dropped from Feroxia crops. Used to craft 16 different things, as allowed by dyes.");
JEI.addDescription(<uniquecrops:generic:10>,"Used to make Merlinia crops grow properly. Also can reverse crop growth on a few other crops as well.");
JEI.addDescription(<uniquecrops:generic:11>,"Dropped from Invisibilia crops. Can be woven into Balls of Invisibilia Yarn.");
JEI.addDescription(<uniquecrops:generic:12>,"Crafted by using a Loom while holding at least six Balls of Invisibilia Yarn in your hand. The feathers are used to craft Upgrade Books, or the Comfy Poncho.");
JEI.addDescription(<uniquecrops:generic:14>,"Dropped from Cinderbella crops. Can be combined into a pair of Glass Slippers.");
JEI.addDescription(<uniquecrops:generic:15>,"Dropped from Weeping Bells. Used as an ingredient in crafting of the Weeping Eye.");
JEI.addDescription(<uniquecrops:generic:16>,"A throwable item that temporarily applies the glowing potion effect to all mobs near to where it landed.");
JEI.addDescription(<uniquecrops:generic:17>,"Dropped from Millennium crops. Can be used to craft either the Totem of Sneaky Mobs or the Egg Upgrade. Necessary in obtaining the Acceleration Wand.");
JEI.addDescription(<uniquecrops:generic:18>,["This book can be combined with other tools and gear in an anvil to refine them, all the way up to +10. At +9, there is a 50/50 chance that the refinement will fail when refining it to +10, destroying the item. Refining upgradeable tools/gears to +10 will grant them extra abilities.","Current items that can be upgraded: All precision tools, Comfy Poncho, 3D Glasses."]);
JEI.addDescription(<uniquecrops:generic:19>,"Crafted from a Millennium Eye, you can rightclick a adult chicken with it to give them a ''egg upgrade'', consuming the item. Chickens upgraded this way will lay eggs much faster. Killing a upgraded chicken will drop the Egg Upgrade.");
JEI.addDescription(<uniquecrops:generic:20>,"Crafted from some Millennium eyes, by just having this badge in your inventory, it will make some vanilla mobs easier. Creepers will take longer to explode, skeletons will shoot at the same speed no matter the distance, and zombies will not summon other zombies when damaged.");
JEI.addDescription(<uniquecrops:generic:21>,"I simply have no idea what this does. There are also no way to obtain this, no how. Nope. Nothing.");
JEI.addDescription(<uniquecrops:generic:22>,"''Dropped'' from Abstract crops. Used to craft either Diet Pills or more Abstract seeds.");
JEI.addDescription(<uniquecrops:generic:23>,"Dropped from EULA crops. Used to craft EULA books.");
JEI.addDescription(<uniquecrops:generic:24>,"A heavy book full of legal mumbo-jumbo. Can also double as a throwable item which, if it hits another player, will force-open the GUI full of legal stuff on them.");
JEI.addDescription(<uniquecrops:generic:26>,"Dropped from Pixelsius crops. Used to craft Pixel Glasses.");
JEI.addDescription(<uniquecrops:generic:27>,"Replacement for Lapis Lazuli. Dropped by Dyeius crops while it is blue.");
JEI.addDescription(<uniquecrops:generic:28>,"Craftable from Endertwine and Invisibilia twine. This consumable item will teleport the player to the highest available block at their location. Good for caves and dungeons. Almost useless on a skyblock.");
JEI.addDescription(<uniquecrops:vampiric_ointment>,"A drop from the Succo crops. Rightclicking any non-player and non-boss mob with it will bind them to it. The bound item can then be added to a goblet, so that any damage you take (as long as both the mob and the goblet are loaded into the world), the damage will be redirected to that mob. The goblet will empty itself when the mob dies, or the block is broken.");
JEI.addDescription(<uniquecrops:genericfood.largeplum>,"Craftable from drops obtained from Dirigible Plums. Consuming one will give the player the Levitation potion effect for two seconds, or enough time to consume the next Large Plum to continue levitating higher until the player runs out of food, plummeting to their deaths.");
JEI.addDescription(<uniquecrops:genericfood.teriyaki>,"Supposedly, there is a way to obtain these delicious meals...");
JEI.addDescription(<uniquecrops:genericfood.heart>,"Seems like this heart can only be obtained by sacrificing oneself for... something.");
JEI.addDescription(<uniquecrops:genericfood.goldenbread>,"Consuming this bread restores about the same saturation and hunger as regular bread, but also applies the Luck effect for a bit.");
JEI.addDescription(<uniquecrops:genericfood.dietpills>,"Saturation is overrated.");
JEI.addDescription(<uniquecrops:genericfood.waffle>,"Dropped from Wafflonia crops. Fairly sure this is a part of anyone's balanced breakfast diet.");
JEI.addDescription(<uniquecrops:3dglasses>,"Craftable headgear, necessary for interactions with Invisibilia crops. Gains Night Vision in low light when upgraded +10.");
JEI.addDescription(<uniquecrops:poncho>,"Poncho that doesn't have much in the way of durability or protection, but is light enough to allow one to fall at the same speed as chickens, and therefore glide. Most mobs ignore the wearer when upgraded +10.");
JEI.addDescription(<uniquecrops:slippers>,"Wearing these grants immunity to damage sitting on top of cactus, and the effects of the Devil's Snare. Aside from that, not much use is seen in them. Hey, that reminds me of that Cinder-something in that didney movie!");
JEI.addDescription(<uniquecrops:pixelglasses>,"By wearing these, you can toggle into the pixels shader vision and back to normal. 'V' is the default toggle keybind.");
JEI.addDescription(<uniquecrops:endersnooker>,"Craftable from ender twine and pearls, this is a tool you can use to swap positions between yourself and another mob you're looking at, or pick up Dark Blocks.");
JEI.addDescription(<uniquecrops:handmirror>,"By keeping one in your offhand, you will be able to automatically deflect the guardian's lasers back at them. Not useful on a skyblock.");
JEI.addDescription(<uniquecrops:batstaff>,"A nuisance removal tool that removes any bats in a large radius around you. This has the effect of not making them drop anything on removal, so this is only very useful if you believe bats do not drop anything useful. Not useful on a skyblock.");
JEI.addDescription([<uniquecrops:cactusboots>,<uniquecrops:cactuslegs>,<uniquecrops:cactusplate>,<uniquecrops:cactushelm>],"A full armor set made by crafting cactus with iron armor. When hit by entities while wearing the full set, it will deal the same amount of damage to them that they dealt, in the form of cactus damage.");
JEI.addDescription(<uniquecrops:thunderpantz>,"A pair of thundering pants. If one shuffles around on carpet while wearing them, they will slowly build up static electricity that will discharge if they get hit by melee damage.");
JEI.addDescription([<uniquecrops:oldbrick>,<uniquecrops:oldcobble>,<uniquecrops:oldcobblemoss>,<uniquecrops:oldgrass>,<uniquecrops:oldgravel>],"The ancient blocks are variants of existing vanilla blocks, but with the old texture overlaid on them. They are obtained by transforming the appropriate blocks into their ancient variants, with the help of the Hourglass of Nostalgia.");
JEI.addDescription(<uniquecrops:hourglass>,"If this block is left on the ground as an item (they don't despawn) or placed and powered with a redstone signal, they will then slowly transform the blocks around them to their ancient block variants.");
JEI.addDescription(<uniquecrops:totemhead>,"When placed, it will then randomly grant invisibility to all mobs near to the totem. Once the potion effect is applied, it will keep applying the effect as long as the mobs are near the totem.");
JEI.addDescription(<uniquecrops:lavalily>,"Placeable on lava instead of water, these lava lilies are a good way to burn one's items if it falls onto it, and the player as well if they happen to not be wearing any footgear.");
JEI.addDescription(<uniquecrops:icelily>,"Placeable on water like normal lily pads, any items dropped on top of one of them will never despawn.");
JEI.addDescription(<uniquecrops:darkblock>,"Wither-proof blocks that are also used as a crafting ingredient for Emblems. They are otherwise unbreakable once placed, the only way to pick them up again is to shift-click one with an Ender Snooker.");
JEI.addDescription(<uniquecrops:abstractbarrel>,"Abstract barrels are simply chests with 100 slots to store items in. However, the caveat is you only see 4 slots to store items in at any time, and those 4 slots are randomized to any slot within its storage. So the item you stored in it may not appear again the next time you open up the storage GUI, but it is still in there. Breaking an abstract barrel will make it drop all of its contents, and hoppers/other things do a marvelous job of getting past the weird gimmick of it's GUI.");
JEI.addDescription(<uniquecrops:mirror>,"A curious mirror. One that shows the world and everything in it, except the player. Perhaps this mirror can be used to reveal the true appearance of a certain vampiric crop?");
JEI.addDescription(<uniquecrops:goblet>,"Every dabbling vampire needs a goblet to drink their blood from, and this goblet is no different. Either clicking or throwing a (tagged) Vampiric Ointment at the cup will fill it up with blood.");
JEI.addDescription(<uniquecrops:genericfood.reversepotion>,"Brewed using Time Dust as one of the ingredients. When ingested, they will replace any active potion effects on one with their opposites, EG: Night Vision becomes Blindness, Speed becomes Slowness, Strength becomes Weakness, and vice-versa. Also has a splashable potion variant.");

SeedCrafting.addRecipe(<minecraft:stone:3>*16, 
 <minecraft:quartz>, 
<ore:dyeWhite>, 
<ore:cobblestone>);
SeedCrafting.addRecipe(<minecraft:stone:1>*16, 
<minecraft:quartz>, 
 <ore:dyeRed>, 
<ore:stoneDiorite>);
SeedCrafting.addRecipe(<minecraft:stone:5>*16, 
<minecraft:quartz>, 
 <ore:dyeGray>, 
<ore:stoneGranite>);
SeedCrafting.addRecipe(<quark:basalt>*32, 
<chickens:liquid_egg:1>, 
 <quark:biotite>, 
<ore:stone>);
SeedCrafting.addRecipe(<quark:crystal:0>*4,
<minecraft:quartz>,
 <minecraft:prismarine_crystals>,
<ore:blockGlassWhite>);