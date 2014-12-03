--------------------------------------
-- 	Spell: Logical Etude
-- 	Boosts targets MND stat
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
    local duration = 120;
    local power = 0;

    if(enchanceSkill <416)then
        power = 12
    elseif(enchanceSkill >=417 and enchanceSkill <=445)then
    	power = 13
    elseif(enchanceSkill >=446 and enchanceSkill <=474)then
    	power = 14
    elseif(enchanceSkill >=475)then
    	power = 15
    else
    	power = 15
    end

 	duration = duration + (duration * (caster:getMod(MOD_SONG_DURATION)/100));
 	duration = duration + (duration * ((caster:getMod(MOD_ALL_SONGS) * 10)/100));
	duration = duration + (duration * ((caster:getMod(MOD_ETUDE) * 10)/100));
	
	power = power + target:getMod(MOD_ETUDE) + target:getMod(MOD_ALL_SONGS);
	
    if(target:hasStatusEffect(EFFECT_MND_DOWN) == true) then
        target:delStatusEffect(EFFECT_MND_DOWN);
    else
        target:addStatusEffect(EFFECT_MND_BOOST,power,0,duration);
    end
end;
