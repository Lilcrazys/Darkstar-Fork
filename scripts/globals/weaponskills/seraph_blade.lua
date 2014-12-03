-----------------------------------	
-- Seraph Blade	
-- Sword weapon skill	
-- Skill Level: 125	
-- Deals light elemental damage to enemy. Damage varies with TP.	
-- Ignores shadows.	
-- Aligned with the Soil Gorget.	
-- Aligned with the Soil Belt.	
-- Element: Light	
-- Modifiers: STR:30% ; MND:30%	
-- 100%TP    200%TP    300%TP	
-- 1.00      2.50      3.00	
-----------------------------------	
package.loaded["scripts/globals/abyssea"] = nil;	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/abyssea");
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	

	local RedTrigger = player:getVar("RedTrigger");
	if (RedTrigger == 37) then
		WeaknessTriggerRed(player, target, wsID);
	else
		if (math.random(4) == 1) then
			TriggerHintRED(player, target, wsID);
		end
	end
	local params = {};
	params.numHits = 1;
	params.ftp100 = 1; params.ftp200 = 2.5; params.ftp300 = 3;
	params.str_wsc = 0.3; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.3; params.chr_wsc = 0.0;
	params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
	params.canCrit = false;
	params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
	params.atkmulti = 1;
	local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);
	print("wsID",wsID);
	return tpHits, extraHits, criticalHit, damage;
	
		
end	
