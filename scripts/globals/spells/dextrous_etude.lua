--------------------------------------
-- 	Spell: Dextrous Etude
-- 	Boosts targets DEX stat
--------------------------------------
 
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
    local enchanceSkill = caster:getSkillLevel(40); -- Singing Skill
    local power = 0;
    local duration = 120;

    if(enchanceSkill <180)then
        power = 3
    elseif(enchanceSkill >=181 and enchanceSkill <=235)then
    	power = 4
    elseif(enchanceSkill >=236 and enchanceSkill <=288)then
    	power = 5
    elseif(enchanceSkill >=289 and enchanceSkill <=342)then
    	power = 6
    elseif(enchanceSkill >=343 and enchanceSkill <=396)then
    	power = 7
    elseif(enchanceSkill >=397 and enchanceSkill <=449)then
    	power = 8
    elseif(enchanceSkill >=450)then
    	power = 9
    else
    	power = 10
    end

 	duration = duration + (duration * (caster:getMod(MOD_SONG_DURATION)/100));
 	duration = duration + (duration * ((caster:getMod(MOD_ALL_SONGS) * 10)/100));
	duration = duration + (duration * ((caster:getMod(MOD_ETUDE) * 10)/100));
	
	power = power + target:getMod(MOD_ETUDE) + target:getMod(MOD_ALL_SONGS);
	
    if(target:hasStatusEffect(EFFECT_DEX_DOWN) == true) then
        target:delStatusEffect(EFFECT_DEX_DOWN);
    else
        target:addStatusEffect(EFFECT_DEX_BOOST,power,0,duration);
    end
end;
