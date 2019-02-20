import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToItem;

//FireCrafting.addRecipe(IItemStack output, IIngredient inputItem, @Optional int ticks);
FireCrafting.addRecipe(<minecraft:stone>,
 <minecraft:cobblestone>*4,
 600);
FireCrafting.addRecipe(<forestry:ash>*4,
 <ore:logWood>*6,
 200);

FireCrafting.addRecipe(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glasschicken", Gain: 1, Strength: 1}),
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:sandchicken", Gain: 1, Strength: 1}),
 200);
 <roost:chicken>.withTag({Growth: 1, Chicken: "chickens:glasschicken", Gain: 1, Strength: 1})
	.addTooltip(format.red("Obtained by forcibly warming up a Sand Chicken."));

//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, IIngredient inputItem, @Optional boolean consume);
//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, [IIngredient inputItems], @Optional boolean consume);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1}), 
	<liquid:lava>, 
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1}), 
	true);
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:quartzchicken", Gain: 1, Strength: 1})
	.addTooltip(format.red("Obtained by bathing a Silicon Chicken in lava"));
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:magmachicken", Gain: 1, Strength: 1}), 
	<liquid:lava>, 
	<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:slimechicken", Gain: 1, Strength: 1}), 
	true);
FluidToItem.transform(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redstonechicken", Gain: 1, Strength: 1}), 
	<liquid:chickenstock>,[
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:siliconchicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rubychicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:pyritechicken", Gain: 1, Strength: 1}),
	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:cinnabarchicken", Gain: 1, Strength: 1})],
	true);

<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:magmachicken", Gain: 1, Strength: 1})
	.addTooltip(format.red("Obtained by bathing a Slime Chicken in lava"));
	
	
	
//eggshells
FireCrafting.addRecipe(<contenttweaker:firedeggshells>,<contenttweaker:eggshells>,200);