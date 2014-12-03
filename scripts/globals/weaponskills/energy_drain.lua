------------------------
--    Energy Drain    --
------------------------
package.loaded["scripts/globals/abyssea"] = nil;	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/abyssea");
require("scripts/globals/weaponskills");		
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	
	
	local RedTrigger = player:getVar("RedTrigger");
	if (RedTrigger == 22) then
		WeaknessTriggerRed(player, target, wsID);
	else
		if (math.random(4) == 1) then
			TriggerHintRED(player, target, wsID);
		end
	end
	
	local MP = target:getMP();
	local TP = player:getTP();
	local DrainMP = MP / TP;
	player:addMP(DrainMP);
	return 1, 0, false, DrainMP;
end
