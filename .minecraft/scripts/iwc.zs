import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
var condiment = <ore:rusticFlora>;

//FluidToFluid.transform(ILiquidStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);
FluidToFluid.transform(<liquid:chickenstock>,
 <liquid:liquidchicken>,
 [<contenttweaker:salt_cube>*2,<minecraft:blaze_powder>*2,
 condiment,condiment],true);
FluidToFluid.transform(<liquid:etchingacid>,
 <liquid:chickenstock>,
 [<minecraft:spider_eye>*2,<minecraft:rotten_flesh>*2,<minecraft:gunpowder>*2,<hatchery:plastic>*2],true);

//FireCrafting.addRecipe(IItemStack output, IIngredient inputItem, @Optional int ticks);
FireCrafting.addRecipe(<minecraft:stone>,
 <minecraft:cobblestone>*4,
 1200);
FireCrafting.addRecipe(<forestry:ash>*4,
 <ore:logWood>*6,
 200);

FireCrafting.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glasschicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:sandchicken", Gain: 1, Strength: 1})*4,
 200);
 <roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glasschicken", Gain: 1, Strength: 1})
	.addTooltip(format.gray("Obtained by forcibly warming up"));
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glasschicken", Gain: 1, Strength: 1})
	.addTooltip(format.gray("a bunch of Sand Chickens."));
FireCrafting.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1})*4,
 200);
  <roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1})
	.addTooltip(format.blue("Obtained by forcibly warming up"));
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1})
	.addTooltip(format.blue("a bunch of Snowball Chickens."));
 
//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, IIngredient inputItem, @Optional boolean consume);
//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, [IIngredient inputItems], @Optional boolean consume);
//mob chickens
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:stringchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:logchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blackchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}),
	<hatchery:feather_fiber>*4],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rottenchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:bonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1}),
	<minecraft:chicken>*4],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:gunpowderchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:coalchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:sulfurchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltpeterchicken", Gain: 1, Strength: 1}),
	<minecraft:leaves:*>*6|<minecraft:leaves2:*>*6],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:bonechicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:whitechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:calcitechicken", Gain: 1, Strength: 1}),
	<immersiveengineering:material:25>*3],
	true);
//others
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:coalchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<ore:blockCharcoal>*3,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:flintchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blackchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:graychicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:flintchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:calcitechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:coalchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:goldchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:pigironchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rottenchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blackchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:pyritechicken", Gain: 1, Strength: 1})*5,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:cinnabarchicken", Gain: 1, Strength: 1})*3],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glowstonechicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:apatitechicken", Gain: 1, Strength: 1})*5,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:goldchicken", Gain: 1, Strength: 1})*3,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1})*1,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1})*1,],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lavachicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blazechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:magmaslimechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:goldchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:orangechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:leatherchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rottenchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:brownchicken", Gain: 1, Strength: 1}),
	<ore:plateFabric>*2],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:soulsandchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:sandchicken", Gain: 1, Strength: 1})*4,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltpeterchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:coalchicken", Gain: 1, Strength: 1})*1,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:brownchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:netherwartchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:soulsandchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:bloodslimechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rottenchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:diamondchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<ore:blockCoal>*8,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:flintchicken", Gain: 1, Strength: 1})*8,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:obsidianchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:emeraldchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:diamondchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:peridotchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:smartchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:enderchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:emeraldchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:fluixchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1}),
	<contenttweaker:yarn_ender>*6],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ghastchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:blazechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:soulsandchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:bonechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pshardchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:lapischicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pcrystalchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:emeraldchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:saltchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glowstonechicken", Gain: 1, Strength: 1})],
	true);	
//ctt
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tinchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:flintchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:logchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:limechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:whitechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:copperchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:claychicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:orangechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:brownchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:nickelchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:flintchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:whitechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:aluminiumchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tinchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:cyanchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:leadchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:venomchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:cinnabarchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:bluechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:silverchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:goldchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:zincchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:platinumchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:silverchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:nickelchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:cyanchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:bluechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:uraniumchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:enderchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:leadchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:limechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:zincchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:flintchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tinchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:silverdyechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:enderiumchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tinchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:silverchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:platinumchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:enderchicken", Gain: 1, Strength: 1})*4],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:lumiumchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tinchicken", Gain: 1, Strength: 1})*3,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:silverchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glowstonechicken", Gain: 1, Strength: 1})*4,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:signalumchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:copperchicken", Gain: 1, Strength: 1})*4,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:silverchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1})*3,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:orangechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:arditechicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:obsidianchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:pyritechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glowstonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lavachicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:cobaltchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:nickelchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:pyritechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:platinumchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:pigironchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:bloodslimechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:claychicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pinkchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:knightslimechicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:purpleslimechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:flintchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:magentachicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:alumitechicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:aluminiumchicken", Gain: 1, Strength: 1})*5,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:obsidianchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pinkchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:menrilchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:logchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pcrystalchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1}),
	<ore:listAllberry>*6],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:certuschicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:pcrystalchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:apatitechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:lightbluechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:fluixchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:certuschicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:purplechicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:calcprocessorchicken", Gain: 1, Strength: 1}), 
	<liquid:etchingacid>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:certuschicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:fluixchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:logicprocessorchicken", Gain: 1, Strength: 1}), 
	<liquid:etchingacid>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:goldchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:fluixchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:engiprocessorchicken", Gain: 1, Strength: 1}), 
	<liquid:etchingacid>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:diamondchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:fluixchicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:reinforcedmetalchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:diamondchicken", Gain: 1, Strength: 1})*5,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:ironchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:obsidianchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:lapischicken", Gain: 1, Strength: 1})],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:galgadorianchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:iridiumchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:brasschicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:alumitechicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:enderchicken", Gain: 1, Strength: 1})*2],
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:enhancedgalgadorianchicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:galgadorianchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:reinforcedmetalchicken", Gain: 1, Strength: 1})*2,
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:bloodslimechicken", Gain: 1, Strength: 1})*2,
	<stevescarts:modulecomponents:45>*4],
	true);
//odd one
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1}), 
	<liquid:lava>, 
	[<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1})*2], 
	true);
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1})
	.addTooltip(format.red("Obtained by bathing a pair of"));
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1})
	.addTooltip(format.red("Silicon Chickens in lava."));
//cows lmao
var stockCow=<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}})|<fluidcows:cow_displayer>.withTag({fluid: "milk"});
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "milk"}), 
	<liquid:milk>,[
	<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}})],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "iron"}), 
	<liquid:chocolatemilk>,[
	<minecraft:flint>*16,
	<ore:dustCalcite>*16,
	<ore:coal>*2,
	stockCow],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "gold"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "pigiron"}),
	<minecraft:rotten_flesh>*16,
	<ore:dyeYellow>*16,
	<ore:dyeBlack>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "tin"}), 
	<liquid:chocolatemilk>,[
	<minecraft:flint>*16,
	<ore:logWood>*16,
	<ore:dyeLime>*16,
	stockCow],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "copper"}), 
	<liquid:chocolatemilk>,[
	<minecraft:clay_ball>*16,
	<minecraft:snowball>*16,
	<ore:dyeOrange>*16,
	stockCow],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "nickel"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
	<minecraft:flint>*16,
	<ore:dyeGreen>*16,
	<ore:dyeWhite>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "aluminum"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
	<fluidcows:cow_displayer>.withTag({fluid: "tin"}),
	<ore:dyeLightBlue>*16,
	<ore:dyeCyan>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "lead"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
	<minecraft:spider_eye>*16,
	<ore:dustCinnabar>*16,
	<ore:dyeBlue>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "silver"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "gold"}),
	<fluidcows:cow_displayer>.withTag({fluid: "zinc"}),
	<ore:dyeLightGray>*16,
	<ore:dyeLightBlue>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "platinum"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "silver"}),
	<fluidcows:cow_displayer>.withTag({fluid: "nickel"}),
	<ore:dyeCyan>*16,
	<ore:dyeBlue>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "uranium"}), 
	<liquid:chocolatemilk>,[
	<ore:dustRedstone>*16,
	<minecraft:ender_pearl>*16,
	<fluidcows:cow_displayer>.withTag({fluid: "lead"}),
	<ore:dyeLime>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "zinc"}), 
	<liquid:chocolatemilk>,[
	<minecraft:flint>*16,
	<minecraft:snowball>*16,
	<fluidcows:cow_displayer>.withTag({fluid: "tin"}),
	<ore:dyeLightGray>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "enderium"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "tin"})*2,
	<fluidcows:cow_displayer>.withTag({fluid: "silver"}),
	<fluidcows:cow_displayer>.withTag({fluid: "platinum"}),
	<minecraft:ender_pearl>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "lumium"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "tin"})*3,
	<fluidcows:cow_displayer>.withTag({fluid: "silver"}),
	<minecraft:glowstone_dust>*16,
	<ore:dyeYellow>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "signalum"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "copper"})*4,
	<fluidcows:cow_displayer>.withTag({fluid: "silver"})*2,
	<minecraft:redstone>*16,
	<ore:dyeOrange>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "ardite"}), 
	<liquid:chocolatemilk>,[
	<minecraft:obsidian>*16,
	<ore:dustPyrite>*16,
	<minecraft:glowstone_dust>*16,
	stockCow],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "cobalt"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "nickel"}),
	<ore:dustPyrite>*16,
	<minecraft:redstone>*16,
	<fluidcows:cow_displayer>.withTag({fluid: "platinum"})],
	true);
/*FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "pigiron"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
	<tconstruct:edible:3>*16,
	<minecraft:clay_ball>*16,
	<ore:dyePink>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "knightslime"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
	<tconstruct:edible:2>*16,
	<minecraft:flint>*16,
	<ore:dyeMagenta>*16],
	true);*/
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "alumite"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "aluminum"}),
	<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
	<minecraft:obsidian>*16,
	<ore:dyePink>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "reinforced_metal"}), 
	<liquid:chocolatemilk>,[
	<minecraft:diamond_block>*2,
	<fluidcows:cow_displayer>.withTag({fluid: "iron"}),
	<minecraft:obsidian>*16,
	<minecraft:dye:4>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "galgadorian"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "iridium"}),
	<fluidcows:cow_displayer>.withTag({fluid: "brass"}),
	<fluidcows:cow_displayer>.withTag({fluid: "alumite"}),
	<minecraft:ender_pearl>*16],
	true);
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "enhanced_galgadorian"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "galgadorian"}),
	<fluidcows:cow_displayer>.withTag({fluid: "reinforced_metal"}),
	<tconstruct:edible:3>*16,
	<stevescarts:modulecomponents:45>*4],
	true);
/*FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "steel"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "iron"})*2,
	<ore:blockCoal>*3],
	true);*/
FluidToItem.transform(<fluidcows:cow_displayer>.withTag({fluid: "iridium"}), 
	<liquid:chocolatemilk>,[
	<fluidcows:cow_displayer>.withTag({fluid: "enderium"}),
	<ore:rodBlizz>*16],
	true);
	
FluidToItem.transform(<minecraft:egg>, 
	<liquid:etchingacid>, 
	[<contenttweaker:golden_egg>], 
	false);

FluidToItem.transform(<capsule:capsule:5>.withTag({color: 14599456, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the great egg", author: "a stray eggshell", display: {color: 7301209, Lore:["Facing North"]}, label: "The Great Egg"}), 
	<liquid:dissolvedeggshells>, 
	[<quark:limestone>*288,
	<quark:thatch>*31,
	<modularmachinery:blockcontroller>], 
	true);
	mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 14599456, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the great egg", author: "a stray eggshell", display: {color: 7301209, Lore:["Facing North"]}, label: "The Great Egg"}));
FluidToItem.transform(<capsule:capsule:5>.withTag({color: 14599456, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the greater egg", author: "The Great Egg", display: {color: 11776951, Lore:["Facing North"]}, label: "The Greater Egg"}), 
	<liquid:dissolvedeggshells>, 
	[<minecraft:stone:3>*288,
	<quark:thatch>*31,
	<modularmachinery:blockcontroller>], 
	true);
	mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 14599456, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the greater egg", author: "The Great Egg", display: {color: 11776951, Lore:["Facing North"]}, label: "The Greater Egg"}));
FluidToItem.transform(<capsule:capsule:5>.withTag({color: 14599456, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the greatest egg", author: "The Greater Egg", display: {color: 14211035, Lore:["Facing North"]}, label: "The Greatest Egg"}), 
	<liquid:dissolvedeggshells>, 
	[<quark:marble>*288,
	<quark:thatch>*31,
	<modularmachinery:blockcontroller>], 
	true);
	mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 14599456, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the greatest egg", author: "The Greater Egg", display: {color: 14211035, Lore:["Facing North"]}, label: "The Greatest Egg"}));
FluidToItem.transform(<capsule:capsule:5>.withTag({color: 11633073, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the tenebrous egg", author: "§kdoot", display: {color: 1446175, Lore:["Facing North"]}, label: "The Tenebrous Egg"}), 
	<liquid:ender>, 
	[<minecraft:obsidian>*288,
	<minecraft:purpur_block>*31,
	<modularmachinery:blockcontroller>,
	<contenttweaker:yarn_ender>*6], 
	true);
	mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 11633073, size: 13, isReward: 1 as byte, oneUse: 1 as byte, structureName: "minecraft:config/capsule/rewards/the tenebrous egg", author: "§kdoot", display: {color: 1446175, Lore:["Facing North"]}, label: "The Tenebrous Egg"}));
//eggshells
FireCrafting.addRecipe(<contenttweaker:firedeggshells>,<contenttweaker:eggshells>,200);