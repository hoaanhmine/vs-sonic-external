function onCreate() 
	 makeLuaSprite('funsky','exe/majin/blue/sonicFUNsky', -300, 0);
	 setScrollFactor('funsky', 0.8, 0.8);
	 addLuaSprite('funsky');
   
	 makeLuaSprite('backbush','exe/majin/blue/Bush2', -300, 150);
	 setScrollFactor('backbush', 1, 1);
	 addLuaSprite('backbush');
   
	 makeAnimatedLuaSprite('backbop','exe/majin/blue/Majin Boppers Back', 0, -250);
	 setScrollFactor('backbop', 0.9, 1);
	 addAnimationByPrefix('backbop', 'bopback', 'MajinBop2 instance', 26, false);
	 objectPlayAnimation('backbop', 'bopback', false);
   
	 addLuaSprite('backbop');	
	 makeLuaSprite('frontbush','exe/majin/blue/Bush 1', -150, 350);
	 setScrollFactor('frontbush', 1, 1);
	 addLuaSprite('frontbush');	
   
	 makeAnimatedLuaSprite('frontbop','exe/majin/blue/Majin Boppers Front', -350, -300);
	 setScrollFactor('frontbop', 0.9, 1);
	 addAnimationByPrefix('frontbop', 'bopfront', 'MajinBop1 instance', 26, false);
	 objectPlayAnimation('frontbop', 'bopfront', false);
	
	 addLuaSprite('frontbop');
	 makeLuaSprite('funfloor','exe/majin/blue/floor BG', -400, 550);
	 setScrollFactor('funfloor', 1, 1);
	 addLuaSprite('funfloor');
	 setProperty('funfloor.alpha',1);

	 makeAnimatedLuaSprite('fg1','exe/majin/blue/majin FG1', 1200, 750);
	 setScrollFactor('fg1', 0.9, 1);
	 addAnimationByPrefix('fg1', 'bop1', 'majin front bopper', 26, false);
	 objectPlayAnimation('fg1', 'bop1', false);
	 setObjectOrder('fg1',10);
	 addLuaSprite('fg1');
	 setProperty('fg1.alpha',1);

	 makeAnimatedLuaSprite('fg2','exe/majin/blue/majin FG2', -400, 750);
	 setScrollFactor('fg2', 0.9, 1);
	 addAnimationByPrefix('fg2', 'bop2', 'majin front bopper2', 28, false);
	 objectPlayAnimation('fg2', 'bop2', false);	
	 setObjectOrder('fg2',11);
	 addLuaSprite('fg2');
	 setProperty('fg2.alpha',1);

	 makeAnimatedLuaSprite('sky','exe/Endless Forest JP/sky',-300,-400)
	 addAnimationByPrefix('sky','fire','sky',24,false)
	 scaleObject('sky', 1.3, 1.3);
	 objectPlayAnimation('sky','sky instance',false)
	 addLuaSprite('sky',false)
	 setProperty('sky.alpha',0);

	 makeAnimatedLuaSprite('crossbop2','exe/Endless Forest JP/bopperbackpast1',-375, -100);
	 addAnimationByPrefix('crossbop2','fire','backbopper',24,false);
	 objectPlayAnimation('crossbop2','backbopper',false);
	 scaleObject('crossbop2', 0.9, 0.9);
	 addLuaSprite('crossbop2' ,false);
	 setProperty('crossbop2.alpha',0);

	 makeAnimatedLuaSprite('crossbop3','exe/Endless Forest JP/bopperbackpast2',1360, -230);
	 addAnimationByPrefix('crossbop3','fire','backbopper',24,false);
	 objectPlayAnimation('crossbop3','backbopper',false);
	 scaleObject('crossbop3', 0.75, 0.75);
	 addLuaSprite('crossbop3' ,false);
	 setProperty('crossbop3.alpha',0);

	 makeLuaSprite('Back','exe/Endless Forest JP/pillers-back',-200,-300)
	 addLuaSprite('Back' ,false);
	 setProperty('Back.alpha',0);
	
	 makeAnimatedLuaSprite('Trees','exe/Endless Forest JP/trees_back',0,-400)
	 addAnimationByPrefix('Trees','fire','trees mazin back instance',24,false)
	 objectPlayAnimation('Trees','trees mazin back instance',false)

	 makeLuaSprite('Bushes','exe/Endless Forest JP/bushes',-400,100)
	 addLuaSprite('Bushes',false)
	 setProperty('Bushes.alpha',0);
 
	 makeLuaSprite('theGround','exe/Endless Forest JP/floor',-300,450)
	 addLuaSprite('theGround',false) 
	 setProperty('theGround.alpha',0);
	 scaleObject('theGround', 1.5, 1.3);
 
	 makeAnimatedLuaSprite('Majin','exe/Endless Forest JP/trees_front',0,-300)
	 addAnimationByPrefix('Majin','fire','trees mazins front instance',24,false)
	 objectPlayAnimation('Majin','trees mazins front instance',false)
	 setProperty('Majin.alpha',0);

	 makeAnimatedLuaSprite('crossbop1','exe/Endless Forest JP/trees_front_1',0, -300);
	 addAnimationByPrefix('crossbop1','fire','treesfront',24,false);
	 objectPlayAnimation('crossbop1','treesfront',false);
	 addLuaSprite('crossbop1' ,false);
	 setProperty('crossbop1.alpha',0);
	
	 makeLuaSprite('fun', 'exe/majin/funScreen', -1110, -680);
	 scaleObject('fun', 3.5, 3.5);
	 setProperty('fun.alpha',0);
	 setProperty('fun.antialiasing',false);

	 makeLuaSprite('cd', 'exe/majin/cd', -550, 500);
	 scaleObject('cd', 4, 4);
	 setProperty('cd.alpha',0);	

	 makeAnimatedLuaSprite('fem majin', 'exe/majin/majin hottie', 50, -95);
	 addAnimationByPrefix('fem majin','hottie','Fem Majin idle',23,false);
	 scaleObject('fem majin', 1.5, 1.5);
	 setProperty('fem majin.alpha',0);	

	 makeAnimatedLuaSprite('majin 3', 'exe/majin/Majin sign', 530, -550);
	 addAnimationByPrefix('majin 3','hottie','dance',23,false);
	 scaleObject('majin 3', 0.5, 0.5);
	 setProperty('majin 3.alpha',0);

	 makeAnimatedLuaSprite('majin 4', 'exe/majin/Majin Twins', 1190, -350);
	 addAnimationByPrefix('majin 4','hottie','Twins dance',23,false);
	 scaleObject('majin 4', 0.5, 0.5);
	 setProperty('majin 4.alpha',0);

	 makeAnimatedLuaSprite('majin 5', 'exe/majin/Sunglasses Majin', -690, -350);
	 addAnimationByPrefix('majin 5','hottie','sunglass dance',23,false);
	 scaleObject('majin 5', 0.5, 0.5);
	 setProperty('majin 5.alpha',0);

	 makeAnimatedLuaSprite('majin 2', 'exe/majin/Majin front', 290, -350);
	 addAnimationByPrefix('majin 2','hottie','dance',23,false);
	 scaleObject('majin 2', 0.5, 0.5);
	 setProperty('majin 2.alpha',0);

	
	 addLuaSprite('fun', false);
	 addLuaSprite('cd', false);
	 addLuaSprite('fem majin', false);
	 addLuaSprite('majin 3', false);
	 addLuaSprite('majin 4', false);
	 addLuaSprite('majin 5', false);
	 addLuaSprite('majin 2', false);
	
end