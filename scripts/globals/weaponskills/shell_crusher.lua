-----------------------------------	
-- Shell Crusher	
-- Staff weapon skill	
-- Skill Level: 175	
-- Lowers target's defense. Duration of effect varies with TP.	
-- If unresisted, lowers target defense by 25%.	
-- Will stack with Sneak Attack.	
-- Aligned with the Breeze Gorget.	
-- Aligned with the Breeze Belt.	
-- Element: None	
-- Modifiers: STR:35%	
-- 100%TP    200%TP    300%TP	
-- 1.00      1.00      1.00	
-----------------------------------	
package.loaded["scripts/globals/abyssea"] = nil;	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/abyssea");
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	

	local BlueTrigger = player:getVar("BlueTrigger");
	if (BlueTrigger == 181) then
		WeaknessTriggerBlue(player, target, wsID);
	else
		if (math.random(4) == 1) then
			TriggerHintBLUE(player, target, wsID);
		end
	end
	local params = {};
	params.numHits = 1;
	params.ftp100 = 1; params.ftp200 = 1; params.ftp300 = 1;
	params.str_wsc = 0.35; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
	params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
	params.canCrit = false;
	params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
	params.atkmulti = 1;
	local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);

	if damage > 0 then
		local tp = player:getTP();
		local duration = (tp/100 * 60) + 120;
		if(target:hasStatusEffect(EFFECT_DEFENSE_DOWN) == false) then
			target:addStatusEffect(EFFECT_DEFENSE_DOWN, 25, 0, duration);
		end
	end	
	
	return tpHits, extraHits, criticalHit, damage;
	
end	
