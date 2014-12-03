-----------------------------------------
--	ID: 15753
--	Item: Dream Boots +1
--	Enchantment: Sneak
--	Durration: 3 Mins 20 Secs
-----------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------
function onItemCheck(target)
	return 0;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	local duration = 200;
	duration = duration + (duration * target:getMod(MOD_SNEAK_DUR));
	if (not target:hasStatusEffect(EFFECT_SNEAK)) then
		target:addStatusEffect(EFFECT_SNEAK,1,10,duration);
	end
end;
