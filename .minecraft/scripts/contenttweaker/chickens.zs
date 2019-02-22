#loader contenttweaker
#modloaded chickens

import mods.contenttweaker.Chicken;
import mods.contenttweaker.ChickenFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.ResourceLocation;

val bonechicken = ChickenFactory.createChicken("bonechicken", Color.fromHex("F8FEFD"), <item:minecraft:bone>);
		bonechicken.setForegroundColor(Color.fromHex("D7DCDB"));
		bonechicken.spawnType="NONE";
		bonechicken.setParentOne(ResourceLocation.create(""));
		bonechicken.setParentTwo(ResourceLocation.create(""));
		bonechicken.register();
		
val rottenchicken = ChickenFactory.createChicken("rottenchicken", Color.fromHex("BD6037"), <item:minecraft:rotten_flesh>);
		rottenchicken.setForegroundColor(Color.fromHex("6F5C1B"));
		rottenchicken.spawnType="NONE";
		rottenchicken.setParentOne(ResourceLocation.create(""));
		rottenchicken.setParentTwo(ResourceLocation.create(""));
		rottenchicken.register();
		
val venomchicken = ChickenFactory.createChicken("venomchicken", Color.fromHex("0B3E49"), <item:minecraft:spider_eye>);
		venomchicken.setForegroundColor(Color.fromHex("950C0C"));
		venomchicken.spawnType="NONE";
		venomchicken.setParentOne(ResourceLocation.create(""));
		venomchicken.setParentTwo(ResourceLocation.create(""));
		venomchicken.register();
		
val manurechicken = ChickenFactory.createChicken("manurechicken", Color.fromHex("61540A"), <item:hatchery:chickenmanure>);
		manurechicken.setForegroundColor(Color.fromHex("B0A797"));
		manurechicken.spawnType="NONE";
		manurechicken.setParentOne(ResourceLocation.create(""));
		manurechicken.setParentTwo(ResourceLocation.create(""));
		manurechicken.register();
		
val lapischicken = ChickenFactory.createChicken("lapischicken", Color.fromHex("1F2EBA"), <item:minecraft:dye:4>);
		lapischicken.setForegroundColor(Color.fromHex("5A6FDB"));
		lapischicken.spawnType="NONE";
		lapischicken.setParentOne(ResourceLocation.create(""));
		lapischicken.setParentTwo(ResourceLocation.create(""));
		lapischicken.register();
		
val sulfurchicken = ChickenFactory.createChicken("sulfurchicken", Color.fromHex("FFE782"), <item:immersiveengineering:material:25>);
		sulfurchicken.setForegroundColor(Color.fromHex("AD9326"));
		sulfurchicken.spawnType="NONE";
		sulfurchicken.setParentOne(ResourceLocation.create("chickens:gunpowderchicken"));
		sulfurchicken.setParentTwo(ResourceLocation.create("chickens:flintchicken"));
		sulfurchicken.register();
		
val saltpeterchicken = ChickenFactory.createChicken("saltpeterchicken", Color.fromHex("DDD6D6"), <item:immersiveengineering:material:24>);
		saltpeterchicken.setForegroundColor(Color.fromHex("AC9E9D"));
		saltpeterchicken.spawnType="NONE";
		saltpeterchicken.setParentOne(ResourceLocation.create("contenttweaker:sulfurchicken"));
		saltpeterchicken.setParentTwo(ResourceLocation.create("chickens:sandchicken"));
		saltpeterchicken.register();	

val xpchicken = ChickenFactory.createChicken("xpchicken", Color.fromHex("1A6C0D"), <item:minecraft:experience_bottle>);
		xpchicken.setForegroundColor(Color.fromHex("3BF61D"));
		xpchicken.spawnType="NONE";
		xpchicken.setParentOne(ResourceLocation.create("chickens:smartchicken"));
		xpchicken.setParentTwo(ResourceLocation.create("chickens:emeraldchicken"));
		xpchicken.register();
		
val tinchicken = ChickenFactory.createChicken("tinchicken", Color.fromHex("7AB7D1"), <item:forestry:ingot_tin>);
		tinchicken.setForegroundColor(Color.fromHex("E1EEF4"));
		tinchicken.spawnType="NONE";
		tinchicken.setParentOne(ResourceLocation.create("chickens:whitechicken"));
		tinchicken.setParentTwo(ResourceLocation.create("chickens:claychicken"));
		tinchicken.register();

val copperchicken = ChickenFactory.createChicken("copperchicken", Color.fromHex("4D3124"), <item:immersiveengineering:metal>);
		copperchicken.setForegroundColor(Color.fromHex("D48C68"));
		copperchicken.spawnType="NONE";
		copperchicken.setParentOne(ResourceLocation.create("chickens:orangechicken"));
		copperchicken.setParentTwo(ResourceLocation.create("chickens:brownchicken"));
		copperchicken.register();
		
val nickelchicken = ChickenFactory.createChicken("nickelchicken", Color.fromHex("EFFFEC"), <item:thermalfoundation:material:133>);
		nickelchicken.setForegroundColor(Color.fromHex("A2B69F"));
		nickelchicken.spawnType="NONE";
		nickelchicken.setParentOne(ResourceLocation.create("chickens:whitechicken"));
		nickelchicken.setParentTwo(ResourceLocation.create("chickens:greenchicken"));
		nickelchicken.register();
		
val leadchicken = ChickenFactory.createChicken("leadchicken", Color.fromHex("777777"), <item:thermalfoundation:material:131>);
		leadchicken.setForegroundColor(Color.fromHex("383838"));
		leadchicken.spawnType="NONE";
		leadchicken.setParentOne(ResourceLocation.create("chickens:ironchicken"));
		leadchicken.setParentTwo(ResourceLocation.create("chickens:cyanchicken"));
		leadchicken.register();
		
val aluminiumchicken = ChickenFactory.createChicken("aluminiumchicken", Color.fromHex("D3DDDC"), <item:immersiveengineering:metal:1>);
		aluminiumchicken.setForegroundColor(Color.fromHex("CBD7D6"));
		aluminiumchicken.spawnType="NONE";
		aluminiumchicken.setParentOne(ResourceLocation.create("chickens:flintchicken"));
		aluminiumchicken.setParentTwo(ResourceLocation.create("chickens:ironchicken"));
		aluminiumchicken.register();		
		
val silverchicken = ChickenFactory.createChicken("silverchicken", Color.fromHex("BEBEBE"), <item:thermalfoundation:material:130>);
		silverchicken.setForegroundColor(Color.fromHex("FFFFFF"));
		silverchicken.spawnType="NONE";
		silverchicken.setParentOne(ResourceLocation.create("chickens:ironchicken"));
		silverchicken.setParentTwo(ResourceLocation.create("chickens:whitechicken"));
		silverchicken.register();
		
val platinumchicken = ChickenFactory.createChicken("platinumchicken", Color.fromHex("FFFFFF"), <item:thermalfoundation:material:134>);
		platinumchicken.setForegroundColor(Color.fromHex("8D9A96"));
		platinumchicken.spawnType="NONE";
		platinumchicken.setParentOne(ResourceLocation.create("contenttweaker:nickelchicken"));
		platinumchicken.setParentTwo(ResourceLocation.create("contenttweaker:silverchicken"));
		platinumchicken.register();
		
val uraniumchicken = ChickenFactory.createChicken("uraniumchicken", Color.fromHex("91D76D"), <item:immersiveengineering:metal:5>);
		uraniumchicken.setForegroundColor(Color.fromHex("9CE26C"));
		uraniumchicken.spawnType="NONE";
		uraniumchicken.setParentOne(ResourceLocation.create("chickens:redstonechicken"));
		uraniumchicken.setParentTwo(ResourceLocation.create("chickens:enderchicken"));
		uraniumchicken.register();
		
val zincchicken = ChickenFactory.createChicken("zincchicken", Color.fromHex("B7B7B7"), <item:techreborn:ingot:18>);
		zincchicken.setForegroundColor(Color.fromHex("868686"));
		zincchicken.spawnType="NONE";
		zincchicken.setParentOne(ResourceLocation.create("chickens:whitechicken"));
		zincchicken.setParentTwo(ResourceLocation.create("chickens:claychicken"));
		zincchicken.register();	
		
val titaniumchicken = ChickenFactory.createChicken("titaniumchicken", Color.fromHex("E2E2E2"), <item:techreborn:ingot:14>);
		titaniumchicken.setForegroundColor(Color.fromHex("5F5959"));
		titaniumchicken.spawnType="NONE";
		titaniumchicken.setParentOne(ResourceLocation.create("contenttweaker:aluminiumchicken"));
		titaniumchicken.setParentTwo(ResourceLocation.create("chickens:whitechicken"));
		titaniumchicken.register();
	
val chromechicken = ChickenFactory.createChicken("chromechicken", Color.fromHex("A0A1A3"), <item:techreborn:ingot:3>);
		chromechicken.setForegroundColor(Color.fromHex("454545"));
		chromechicken.spawnType="NONE";
		chromechicken.setParentOne(ResourceLocation.create("contenttweaker:tinchicken"));
		chromechicken.setParentTwo(ResourceLocation.create("contenttweaker:titaniumchicken"));
		chromechicken.register();
	
val bronzechicken = ChickenFactory.createChicken("bronzechicken", Color.fromHex("412C15"), <item:forestry:ingot_bronze>);
		bronzechicken.setForegroundColor(Color.fromHex("D68F44"));
		bronzechicken.spawnType="NONE";
		bronzechicken.setParentOne(ResourceLocation.create("contenttweaker:copperchicken"));
		bronzechicken.setParentTwo(ResourceLocation.create("contenttweaker:tinchicken"));
		bronzechicken.register();
	
val invarchicken = ChickenFactory.createChicken("invarchicken", Color.fromHex("989585"), <item:thermalfoundation:material:162>);
		invarchicken.setForegroundColor(Color.fromHex("D1CCB6"));
		invarchicken.spawnType="NONE";
		invarchicken.setParentOne(ResourceLocation.create("chickens:ironchicken"));
		invarchicken.setParentTwo(ResourceLocation.create("contenttweaker:nickelchicken"));
		invarchicken.register();
		
val steelchicken = ChickenFactory.createChicken("steelchicken", Color.fromHex("D3E1E3"), <item:immersiveengineering:metal:8>);
		steelchicken.setForegroundColor(Color.fromHex("8E9799"));
		steelchicken.spawnType="NONE";
		steelchicken.setParentOne(ResourceLocation.create("chickens:ironchicken"));
		steelchicken.setParentTwo(ResourceLocation.create("chickens:coalchicken"));
		steelchicken.register();

val electrumchicken = ChickenFactory.createChicken("electrumchicken", Color.fromHex("FFF2B1"), <item:immersiveengineering:metal:7>);
		electrumchicken.setForegroundColor(Color.fromHex("D4BE50"));
		electrumchicken.spawnType="NONE";
		electrumchicken.setParentOne(ResourceLocation.create("contenttweaker:silverchicken"));
		electrumchicken.setParentTwo(ResourceLocation.create("chickens:goldchicken"));
		electrumchicken.register();
		
val constantanchicken = ChickenFactory.createChicken("constantanchicken", Color.fromHex("F98669"), <item:immersiveengineering:metal:6>);
		constantanchicken.setForegroundColor(Color.fromHex("795851"));
		constantanchicken.spawnType="NONE";
		constantanchicken.setParentOne(ResourceLocation.create("contenttweaker:copperchicken"));
		constantanchicken.setParentTwo(ResourceLocation.create("contenttweaker:nickelchicken"));
		constantanchicken.register();			
		
val siliconchicken = ChickenFactory.createChicken("siliconchicken", Color.fromHex("5F706B"), <item:appliedenergistics2:material:5>);
		siliconchicken.setForegroundColor(Color.fromHex("424242"));
		siliconchicken.spawnType="NONE";
		siliconchicken.setParentOne(ResourceLocation.create("chickens:sandchicken"));
		siliconchicken.setParentTwo(ResourceLocation.create("chickens:claychicken"));
		siliconchicken.register();

val rubberchicken = ChickenFactory.createChicken("rubberchicken", Color.fromHex("895D02"), <item:techreborn:part:32>);
		rubberchicken.setForegroundColor(Color.fromHex("4E3209"));
		rubberchicken.spawnType="NONE";
		rubberchicken.setParentOne(ResourceLocation.create("chickens:logchicken"));
		rubberchicken.setParentTwo(ResourceLocation.create("chickens:orangechicken"));
		rubberchicken.register();		
		
val basalzrodchicken = ChickenFactory.createChicken("basalzrodchicken", Color.fromHex("980000"), <item:thermalfoundation:material:2052>);
		basalzrodchicken.setForegroundColor(Color.fromHex("6E6664"));
		basalzrodchicken.spawnType="NONE";
		basalzrodchicken.setParentOne(ResourceLocation.create("contenttweaker:saltpeterchicken"));
		basalzrodchicken.setParentTwo(ResourceLocation.create("chickens:blazechicken"));
		basalzrodchicken.register();	
		
val blitzrodchicken = ChickenFactory.createChicken("blitzrodchicken", Color.fromHex("ECE992"), <item:thermalfoundation:material:2050>);
		blitzrodchicken.setForegroundColor(Color.fromHex("66E5EF"));
		blitzrodchicken.spawnType="NONE";
		blitzrodchicken.setParentOne(ResourceLocation.create("contenttweaker:basalzrodchicken"));
		blitzrodchicken.setParentTwo(ResourceLocation.create("contenttweaker:sulfurchicken"));
		blitzrodchicken.register();	
		
val blizzrodchicken = ChickenFactory.createChicken("blizzrodchicken", Color.fromHex("88E0FF"), <item:thermalfoundation:material:2048>);
		blizzrodchicken.setForegroundColor(Color.fromHex("1D3B95"));
		blizzrodchicken.spawnType="NONE";
		blizzrodchicken.setParentOne(ResourceLocation.create("contenttweaker:blitzrodchicken"));
		blizzrodchicken.setParentTwo(ResourceLocation.create("chickens:snowballchicken"));
		blizzrodchicken.register();	
		
val enderiumchicken = ChickenFactory.createChicken("enderiumchicken", Color.fromHex("127575"), <item:thermalfoundation:material:167>);
		enderiumchicken.setForegroundColor(Color.fromHex("0A4849"));
		enderiumchicken.spawnType="NONE";
		enderiumchicken.setParentOne(ResourceLocation.create("contenttweaker:platinumchicken"));
		enderiumchicken.setParentTwo(ResourceLocation.create("chickens:enderchicken"));
		enderiumchicken.register();	
		
val iridiumchicken = ChickenFactory.createChicken("iridiumchicken", Color.fromHex("EDEBF1"), <item:thermalfoundation:material:135>);
		iridiumchicken.setForegroundColor(Color.fromHex("BBBCDD"));
		iridiumchicken.spawnType="NONE";
		iridiumchicken.setParentOne(ResourceLocation.create("contenttweaker:enderiumchicken"));
		iridiumchicken.setParentTwo(ResourceLocation.create("contenttweaker:blizzrodchicken"));
		iridiumchicken.register();
		
val lumiumchicken = ChickenFactory.createChicken("lumiumchicken", Color.fromHex("EEF4DF"), <item:thermalfoundation:material:166>);
		lumiumchicken.setForegroundColor(Color.fromHex("F4B134"));
		lumiumchicken.spawnType="NONE";
		lumiumchicken.setParentOne(ResourceLocation.create("contenttweaker:tinchicken"));
		lumiumchicken.setParentTwo(ResourceLocation.create("chickens:glowstonechicken"));
		lumiumchicken.register();
		
val mithrilchicken = ChickenFactory.createChicken("mithrilchicken", Color.fromHex("5A89A8"), <item:thermalfoundation:material:136>);
		mithrilchicken.setForegroundColor(Color.fromHex("A7FFFF"));
		mithrilchicken.spawnType="NONE";
		mithrilchicken.setParentOne(ResourceLocation.create("contenttweaker:iridiumchicken"));
		mithrilchicken.setParentTwo(ResourceLocation.create("chickens:goldchicken"));
		mithrilchicken.register();
		
val signalumchicken = ChickenFactory.createChicken("signalumchicken", Color.fromHex("FFA424"), <item:thermalfoundation:material:165>);
		signalumchicken.setForegroundColor(Color.fromHex("C63200"));
		signalumchicken.spawnType="NONE";
		signalumchicken.setParentOne(ResourceLocation.create("contenttweaker:copperchicken"));
		signalumchicken.setParentTwo(ResourceLocation.create("contenttweaker:silverchicken"));
		signalumchicken.register();
	
val slagchicken = ChickenFactory.createChicken("slagchicken", Color.fromHex("83715E"), <item:thermalfoundation:material:864>);
		slagchicken.setForegroundColor(Color.fromHex("443B31"));
		slagchicken.spawnType="NONE";
		slagchicken.setParentOne(ResourceLocation.create("contenttweaker:siliconchicken"));
		slagchicken.setParentTwo(ResourceLocation.create("chickens:ironchicken"));
		slagchicken.register();
		
val richslagchicken = ChickenFactory.createChicken("richslagchicken", Color.fromHex("5B3F20"), <item:thermalfoundation:material:865>);
		richslagchicken.setForegroundColor(Color.fromHex("3D2915"));
		richslagchicken.spawnType="NONE";
		richslagchicken.setParentOne(ResourceLocation.create("contenttweaker:slagchicken"));
		richslagchicken.setParentTwo(ResourceLocation.create("chickens:goldchicken"));
		richslagchicken.register();
		
val cinnabarchicken = ChickenFactory.createChicken("cinnabarchicken", Color.fromHex("E49790"), <item:techreborn:dust:11>);
		cinnabarchicken.setForegroundColor(Color.fromHex("9B3229"));
		cinnabarchicken.spawnType="NONE";
		cinnabarchicken.setParentOne(ResourceLocation.create("contenttweaker:silverchicken"));
		cinnabarchicken.setParentTwo(ResourceLocation.create("contenttweaker:richslagchicken"));
		cinnabarchicken.register();	
		
val refinedironchicken = ChickenFactory.createChicken("refinedironchicken", Color.fromHex("B6C4D3"), <item:techreborn:ingot:19>);
		refinedironchicken.setForegroundColor(Color.fromHex("B6C4D3"));
		refinedironchicken.spawnType="NONE";
		refinedironchicken.setParentOne(ResourceLocation.create("chickens:ironchicken"));
		refinedironchicken.setParentTwo(ResourceLocation.create("chickens:ironchicken"));
		refinedironchicken.register();
		
val brasschicken = ChickenFactory.createChicken("brasschicken", Color.fromHex("A99340"), <item:techreborn:ingot:1>);
		brasschicken.setForegroundColor(Color.fromHex("FFE377"));
		brasschicken.spawnType="NONE";
		brasschicken.setParentOne(ResourceLocation.create("contenttweaker:copperchicken"));
		brasschicken.setParentTwo(ResourceLocation.create("contenttweaker:zincchicken"));
		brasschicken.register();
		
val peridotchicken = ChickenFactory.createChicken("peridotchicken", Color.fromHex("6CA127"), <item:techreborn:gem:2>);
		peridotchicken.setForegroundColor(Color.fromHex("29430B"));
		peridotchicken.spawnType="NONE";
		peridotchicken.setParentOne(ResourceLocation.create("contenttweaker:siliconchicken"));
		peridotchicken.setParentTwo(ResourceLocation.create("chickens:greenchicken"));
		peridotchicken.register();
		
val rubychicken = ChickenFactory.createChicken("rubychicken", Color.fromHex("B7002E"), <item:techreborn:gem>);
		rubychicken.setForegroundColor(Color.fromHex("5A0116"));
		rubychicken.spawnType="NONE";
		rubychicken.setParentOne(ResourceLocation.create("chickens:redchicken"));
		rubychicken.setParentTwo(ResourceLocation.create("contenttweaker:aluminiumchicken"));
		rubychicken.register();
		
val sapphirechicken = ChickenFactory.createChicken("sapphirechicken", Color.fromHex("19689A"), <item:techreborn:gem:1>);
		sapphirechicken.setForegroundColor(Color.fromHex("0D4565"));
		sapphirechicken.spawnType="NONE";
		sapphirechicken.setParentOne(ResourceLocation.create("chickens:bluechicken"));
		sapphirechicken.setParentTwo(ResourceLocation.create("contenttweaker:aluminiumchicken"));
		sapphirechicken.register();
		
val redgarnetchicken = ChickenFactory.createChicken("redgarnetchicken", Color.fromHex("A45962"), <item:techreborn:gem:3>);
		redgarnetchicken.setForegroundColor(Color.fromHex("44171A"));
		redgarnetchicken.spawnType="NONE";
		redgarnetchicken.setParentOne(ResourceLocation.create("contenttweaker:sapphirechicken"));
		redgarnetchicken.setParentTwo(ResourceLocation.create("contenttweaker:rubychicken"));
		redgarnetchicken.register();
		
val yellowgarnetchicken = ChickenFactory.createChicken("yellowgarnetchicken", Color.fromHex("A5A537"), <item:techreborn:gem:4>);
		yellowgarnetchicken.setForegroundColor(Color.fromHex("414116"));
		yellowgarnetchicken.spawnType="NONE";
		yellowgarnetchicken.setParentOne(ResourceLocation.create("chickens:glasschicken"));
		yellowgarnetchicken.setParentTwo(ResourceLocation.create("chickens:glowstonechicken"));
		yellowgarnetchicken.register();
		
val tungstenchicken = ChickenFactory.createChicken("tungstenchicken", Color.fromHex("C3BD89"), <item:techreborn:ingot:15>);
		tungstenchicken.setForegroundColor(Color.fromHex("DEE6A6"));
		tungstenchicken.spawnType="NONE";
		tungstenchicken.setParentOne(ResourceLocation.create("chickens:enderchicken"));
		tungstenchicken.setParentTwo(ResourceLocation.create("contenttweaker:refinedironchicken"));
		tungstenchicken.register();
	
val tungstensteelchicken = ChickenFactory.createChicken("tungstensteelchicken", Color.fromHex("343536"), <item:techreborn:ingot:17>);
		tungstensteelchicken.setForegroundColor(Color.fromHex("696D71"));
		tungstensteelchicken.spawnType="NONE";
		tungstensteelchicken.setParentOne(ResourceLocation.create("contenttweaker:tungstenchicken"));
		tungstensteelchicken.setParentTwo(ResourceLocation.create("contenttweaker:steelchicken"));
		tungstensteelchicken.register();
		
val manasteelchicken = ChickenFactory.createChicken("manasteelchicken", Color.fromHex("69D7FF"), <item:botania:manaresource>);
		manasteelchicken.setForegroundColor(Color.fromHex("002C4B"));
		manasteelchicken.spawnType="NONE";
		manasteelchicken.setParentOne(ResourceLocation.create("chickens:ironchicken"));
		manasteelchicken.setParentTwo(ResourceLocation.create("chickens:ghastchicken"));
		manasteelchicken.register();
		
val terrasteelchicken = ChickenFactory.createChicken("terrasteelchicken", Color.fromHex("3FF123"), <item:botania:manaresource:4>);
		terrasteelchicken.setForegroundColor(Color.fromHex("F5FCF1"));
		terrasteelchicken.spawnType="NONE";
		terrasteelchicken.setParentOne(ResourceLocation.create("chickens:enderchicken"));
		terrasteelchicken.setParentTwo(ResourceLocation.create("chickens:pcrystalchicken"));
		terrasteelchicken.register();
		
val elementiumchicken = ChickenFactory.createChicken("elementiumchicken", Color.fromHex("F655F3"), <item:botania:manaresource:7>);
		elementiumchicken.setForegroundColor(Color.fromHex("B407B7"));
		elementiumchicken.spawnType="NONE";
		elementiumchicken.setParentOne(ResourceLocation.create("contenttweaker:manasteelchicken"));
		elementiumchicken.setParentTwo(ResourceLocation.create("contenttweaker:terrasteelchicken"));
		elementiumchicken.register();
		
val arditechicken = ChickenFactory.createChicken("arditechicken", Color.fromHex("DC3E00"), <item:tconstruct:ingots:1>);
		arditechicken.setForegroundColor(Color.fromHex("FFB20B"));
		arditechicken.spawnType="NONE";
		arditechicken.setParentOne(ResourceLocation.create("chickens:blazechicken"));
		arditechicken.setParentTwo(ResourceLocation.create("chickens:magmachicken"));
		arditechicken.register();
		
val cobaltchicken = ChickenFactory.createChicken("cobaltchicken", Color.fromHex("0C5ABE"), <item:tconstruct:ingots>);
		cobaltchicken.setForegroundColor(Color.fromHex("03D94F"));
		cobaltchicken.spawnType="NONE";
		cobaltchicken.setParentOne(ResourceLocation.create("chickens:netherwartchicken"));
		cobaltchicken.setParentTwo(ResourceLocation.create("chickens:ghastchicken"));
		cobaltchicken.register();
		
val manyullynchicken = ChickenFactory.createChicken("manyullynchicken", Color.fromHex("652E87"), <item:tconstruct:ingots:2>);
		manyullynchicken.setForegroundColor(Color.fromHex("BC8FE7"));
		manyullynchicken.spawnType="NONE";
		manyullynchicken.setParentOne(ResourceLocation.create("contenttweaker:arditechicken"));
		manyullynchicken.setParentTwo(ResourceLocation.create("contenttweaker:cobaltchicken"));
		manyullynchicken.register();
		
val bloodslimechicken = ChickenFactory.createChicken("bloodslimechicken", Color.fromHex("C50616"), <item:tconstruct:edible:3>);
		bloodslimechicken.setForegroundColor(Color.fromHex("EE0316"));
		bloodslimechicken.spawnType="NONE";
		bloodslimechicken.setParentOne(ResourceLocation.create("chickens:slimechicken"));
		bloodslimechicken.setParentTwo(ResourceLocation.create("chickens:redchicken"));
		bloodslimechicken.register();
		
val purpleslimechicken = ChickenFactory.createChicken("purpleslimechicken", Color.fromHex("C9AAD9"), <item:tconstruct:edible:2>);
		purpleslimechicken.setForegroundColor(Color.fromHex("7511BF"));
		purpleslimechicken.spawnType="NONE";
		purpleslimechicken.setParentOne(ResourceLocation.create("contenttweaker:bloodslimechicken"));
		purpleslimechicken.setParentTwo(ResourceLocation.create("chickens:bluechicken"));
		purpleslimechicken.register();
		
val magmaslimechicken = ChickenFactory.createChicken("magmaslimechicken", Color.fromHex("ECB55F"), <item:tconstruct:edible:4>);
		magmaslimechicken.setForegroundColor(Color.fromHex("AF7314"));
		magmaslimechicken.spawnType="NONE";
		magmaslimechicken.setParentOne(ResourceLocation.create("chickens:slimechicken"));
		magmaslimechicken.setParentTwo(ResourceLocation.create("chickens:magmachicken"));
		magmaslimechicken.register();
		
val blueslimechicken = ChickenFactory.createChicken("blueslimechicken", Color.fromHex("67B4C4"), <item:tconstruct:edible:1>);
		blueslimechicken.setForegroundColor(Color.fromHex("30717F"));
		blueslimechicken.spawnType="NONE";
		blueslimechicken.setParentOne(ResourceLocation.create("chickens:slimechicken"));
		blueslimechicken.setParentTwo(ResourceLocation.create("chickens:bluechicken"));
		blueslimechicken.register();
		
val pigironchicken = ChickenFactory.createChicken("pigironchicken", Color.fromHex("E6B8B8"), <item:tconstruct:ingots:4>);
		pigironchicken.setForegroundColor(Color.fromHex("DBA9A9"));
		pigironchicken.spawnType="NONE";
		pigironchicken.setParentOne(ResourceLocation.create("contenttweaker:bloodslimechicken"));
		pigironchicken.setParentTwo(ResourceLocation.create("chickens:ironchicken"));
		pigironchicken.register();
		
val knightslimechicken = ChickenFactory.createChicken("knightslimechicken", Color.fromHex("C17CED"), <item:tconstruct:ingots:3>);
		knightslimechicken.setForegroundColor(Color.fromHex("AD70D8"));
		knightslimechicken.spawnType="NONE";
		knightslimechicken.setParentOne(ResourceLocation.create("contenttweaker:manyullynchicken"));
		knightslimechicken.setParentTwo(ResourceLocation.create("contenttweaker:pigironchicken"));
		knightslimechicken.register();
	
val pyritechicken = ChickenFactory.createChicken("pyritechicken", Color.fromHex("E8AE91"), <item:techreborn:dust:39>);
		pyritechicken.setForegroundColor(Color.fromHex("A56742"));
		pyritechicken.spawnType="NONE";
		pyritechicken.setParentOne(ResourceLocation.create("chickens:ironchicken"));
		pyritechicken.setParentTwo(ResourceLocation.create("contenttweaker:sulfurchicken"));
		pyritechicken.register();
		
val bulletchicken = ChickenFactory.createChicken("bulletchicken", Color.fromHex("EBB651"), <item:immersiveengineering:bullet>);
		bulletchicken.setForegroundColor(Color.fromHex("5A5A5A"));
		bulletchicken.spawnType="NONE";
		bulletchicken.setParentOne(ResourceLocation.create("contenttweaker:copperchicken"));
		bulletchicken.setParentTwo(ResourceLocation.create("chickens:gunpowderchicken"));
		bulletchicken.register();
		
val honeychicken = ChickenFactory.createChicken("honeychicken", Color.fromHex("E0B60F"), <item:rustic:honeycomb>);
		honeychicken.setForegroundColor(Color.fromHex("C19D0D"));
		honeychicken.spawnType="NONE";
		honeychicken.setParentOne(ResourceLocation.create("chickens:waterchicken"));
		honeychicken.setParentTwo(ResourceLocation.create("chickens:orangechicken"));
		honeychicken.register();

val menrilchicken = ChickenFactory.createChicken("menrilchicken", Color.fromHex("46BFD9"), <item:integrateddynamics:menril_berries>);
		menrilchicken.setForegroundColor(Color.fromHex("0E3F49"));
		menrilchicken.spawnType="NONE";
		menrilchicken.setParentOne(ResourceLocation.create("chickens:waterchicken"));
		menrilchicken.setParentTwo(ResourceLocation.create("chickens:lightbluechicken"));
		menrilchicken.register();
		
val logicprocessorchicken = ChickenFactory.createChicken("logicprocessorchicken", Color.fromHex("FFDF51"), <item:appliedenergistics2:material:22>);
		logicprocessorchicken.setForegroundColor(Color.fromHex("404040"));
		logicprocessorchicken.spawnType="NONE";
		logicprocessorchicken.register();
		
val calcprocessorchicken = ChickenFactory.createChicken("calcprocessorchicken", Color.fromHex("C1DDF3"), <item:appliedenergistics2:material:23>);
		calcprocessorchicken.setForegroundColor(Color.fromHex("404040"));
		calcprocessorchicken.spawnType="NONE";
		calcprocessorchicken.register();
		
val engiprocessorchicken = ChickenFactory.createChicken("engiprocessorchicken", Color.fromHex("D1FAF3"), <item:appliedenergistics2:material:24>);
		engiprocessorchicken.setForegroundColor(Color.fromHex("404040"));
		engiprocessorchicken.spawnType="NONE";
		engiprocessorchicken.register();
		
val certuschicken = ChickenFactory.createChicken("certuschicken", Color.fromHex("DBE4F5"), <item:appliedenergistics2:material:0>);
		certuschicken.setForegroundColor(Color.fromHex("B8C6E3"));
		certuschicken.spawnType="NONE";
		certuschicken.register();
		
val fluixchicken = ChickenFactory.createChicken("fluixchicken", Color.fromHex("9C63C5"), <item:appliedenergistics2:material:7>);
		fluixchicken.setForegroundColor(Color.fromHex("25305B"));
		fluixchicken.spawnType="NONE";
		fluixchicken.register();
		
val biotitechicken = ChickenFactory.createChicken("biotitechicken", Color.fromHex("080C12"), <item:quark:biotite>);
		biotitechicken.setForegroundColor(Color.fromHex("111922"));
		biotitechicken.spawnType="NONE";
		biotitechicken.register();
		
val apatitechicken = ChickenFactory.createChicken("apatitechicken", Color.fromHex("1A89C1"), <item:forestry:apatite>);
		apatitechicken.setForegroundColor(Color.fromHex("9DE1EE"));
		apatitechicken.spawnType="NONE";
		apatitechicken.register();
		
val saltchicken = ChickenFactory.createChicken("saltchicken", Color.fromHex("EEECCE"), <item:contenttweaker:salt_cube>);
		saltchicken.setForegroundColor(Color.fromHex("CFCCAF"));
		saltchicken.spawnType="NONE";
		saltchicken.register();
		
val calcitechicken = ChickenFactory.createChicken("calcitechicken", Color.fromHex("E8E2BE"), <item:techreborn:dust:8>);
		calcitechicken.setForegroundColor(Color.fromHex("B7AD8D"));
		calcitechicken.spawnType="NONE";
		calcitechicken.register();
		
val reinforcedmetalchicken = ChickenFactory.createChicken("reinforcedmetalchicken", Color.fromHex("698DA5"), <item:stevescarts:modulecomponents:21>);
		reinforcedmetalchicken.setForegroundColor(Color.fromHex("29526D"));
		reinforcedmetalchicken.spawnType="NONE";
		reinforcedmetalchicken.register();
		
val galgadorianchicken = ChickenFactory.createChicken("galgadorianchicken", Color.fromHex("9B667E"), <item:stevescarts:modulecomponents:46>);
		galgadorianchicken.setForegroundColor(Color.fromHex("572A3D"));
		galgadorianchicken.spawnType="NONE";
		galgadorianchicken.register();
		
val enhancedgalgadorianchicken = ChickenFactory.createChicken("enhancedgalgadorianchicken", Color.fromHex("985D85"), <item:stevescarts:modulecomponents:48>);
		enhancedgalgadorianchicken.setForegroundColor(Color.fromHex("582548"));
		enhancedgalgadorianchicken.spawnType="NONE";
		enhancedgalgadorianchicken.register();
		
val goldenhen = ChickenFactory.createChicken("goldenhen", Color.fromHex("FFFF0B"), <item:contenttweaker:golden_egg>);
		goldenhen.setForegroundColor(Color.fromHex("868600"));
		goldenhen.spawnType="NONE";
		goldenhen.register();