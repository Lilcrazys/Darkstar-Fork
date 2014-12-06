---------------------------------------------------------------------------------------------------
-- func: monstrosity
-- auth: Omni
-- desc: changes Monstrosity costume
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player, id)
    id = math.random(0,84);
	           
	if (id == 0) then
    	id = 30;
    elseif (id == 1) then
         	id = 31;
    elseif (id == 2) then
         	id = 264;
    elseif (id == 3) then
         	id = 265;
    elseif (id == 4) then
         	id = 266;
	elseif (id == 5) then
         	id = 268;
    elseif (id == 6) then
         	id = 269;
	elseif (id == 7) then
         	id = 270;
	elseif (id == 8) then
         	id = 272;
	elseif (id == 9) then
         	id = 273;
	elseif (id == 10) then
         	id = 276;
	elseif (id == 11) then
         	id = 277;
	elseif (id == 12) then
         	id = 284;
	elseif (id == 13) then
         	id = 285;
	elseif (id == 14) then
         	id = 286;
	elseif (id == 15) then
         	id = 287;
	elseif (id == 16) then
         	id = 288;
	elseif (id == 17) then
         	id = 289;
	elseif (id == 18) then
         	id = 310;
	elseif (id == 19) then
         	id = 312;
	elseif (id == 20) then
         	id = 313;
	elseif (id == 21) then
         	id = 316;
	elseif (id == 22) then
         	id = 317;
	elseif (id == 23) then
         	id = 319;
	elseif (id == 24) then
         	id = 336;
	elseif (id == 25) then
         	id = 340;
	elseif (id == 26) then
         	id = 341;
	elseif (id == 27) then
         	id = 344;
	elseif (id == 28) then
         	id = 345;
	elseif (id == 29) then
         	id = 352;
	elseif (id == 30) then
         	id = 353;
	elseif (id == 31) then
         	id = 356;
	elseif (id == 32) then
         	id = 357;
	elseif (id == 33) then
         	id = 360;
	elseif (id == 34) then
         	id = 358;
	elseif (id == 35) then
         	id = 364;
	elseif (id == 36) then
         	id = 365;
	elseif (id == 37) then
         	id = 367;
	elseif (id == 38) then
         	id = 372;
	elseif (id == 39) then
         	id = 373;
	elseif (id == 40) then
         	id = 376;
	elseif (id == 41) then
         	id = 377;
	elseif (id == 42) then
         	id = 378;
	elseif (id == 43) then
         	id = 379;
	elseif (id == 44) then
         	id = 380;
	elseif (id == 45) then
         	id = 381;
	elseif (id == 46) then
         	id = 382;
	elseif (id == 47) then
         	id = 384;
	elseif (id == 48) then
         	id = 385;
	elseif (id == 49) then
         	id = 386;
	elseif (id == 50) then
         	id = 388;
	elseif (id == 51) then
         	id = 389;
	elseif (id == 52) then
         	id = 390;
	elseif (id == 53) then
         	id = 392;
	elseif (id == 54) then
         	id = 393;
	elseif (id == 55) then
         	id = 396;
	elseif (id == 56) then
         	id = 397;
	elseif (id == 57) then
         	id = 403;
	elseif (id == 58) then
         	id = 402;
	elseif (id == 59) then
         	id = 401;
	elseif (id == 60) then
         	id = 404;
	elseif (id == 61) then
         	id = 406;
	elseif (id == 62) then
         	id = 408;
	elseif (id == 63) then
         	id = 409;
	elseif (id == 64) then
         	id = 411;
	elseif (id == 65) then
         	id = 416;
	elseif (id == 66) then
         	id = 417;
	elseif (id == 67) then
         	id = 418;
	elseif (id == 68) then
         	id = 419;
	elseif (id == 69) then
         	id = 444;
	elseif (id == 70) then
         	id = 445;
	elseif (id == 71) then
         	id = 446;
	elseif (id == 72) then
         	id = 447;
	elseif (id == 73) then
         	id = 448;
	elseif (id == 74) then
         	id = 449;
	elseif (id == 75) then
         	id = 1349;
	elseif (id == 76) then
         	id = 1350;
	elseif (id == 77) then
         	id = 1365;
	elseif (id == 78) then
         	id = 1366;
	elseif (id == 79) then
         	id = 2019;
	elseif (id == 80) then
         	id = 2021;
	elseif (id == 81) then
         	id = 2022;
	elseif (id == 82) then
         	id = 2370;
	elseif (id == 83) then
         	id = 2372;
	elseif (id == 84) then
         	id = 1812;		
	end         
    player:costume2(id);
end