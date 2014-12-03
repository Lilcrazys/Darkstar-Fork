-----------------------------------------
-- Spell: 
--  
-----------------------------------------

require("scripts/globals/pets");
require("scripts/globals/summon");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	
end;

function onSpellCast(caster,target,spell)
	caster:spawnPet(73);	
end;
	