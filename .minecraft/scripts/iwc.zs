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
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:sandchicken", Gain: 1, Strength: 1}),
 200);
 <roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glasschicken", Gain: 1, Strength: 1})
	.addTooltip(format.red("Obtained by forcibly warming up a Sand Chicken."));
FireCrafting.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:coalchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:logchicken", Gain: 1, Strength: 1})*4,
 200);
FireCrafting.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:snowballchicken", Gain: 1, Strength: 1})*4,
 200);
 
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
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rubychicken", Gain: 1, Strength: 1}),
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
	<hatchery:fiber_pad>*2],
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
	<uniquecrops:generic:5>*16],
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
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:enderchicken", Gain: 1, Strength: 1})],
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
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:tinchicken", Gain: 1, Strength: 1})*2,
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
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1})*2, 
	true);
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1})
	.addTooltip(format.red("Obtained by bathing a Silicon Chicken in lava"));

FluidToItem.transform(<minecraft:egg>, 
	<liquid:etchingacid>, 
	<contenttweaker:golden_egg>, 
	false);
//eggshells
FireCrafting.addRecipe(<contenttweaker:firedeggshells>,<contenttweaker:eggshells>,200);