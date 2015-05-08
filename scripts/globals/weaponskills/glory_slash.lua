-----------------------------------
-- Glory Slash
-- Sword weapon skill
-- Skill Level: NA
-- Only avaliable during Campaign Battle while weilding Lex Talionis.
-- Delivers and area attack that deals triple damage. Damage varies with TP. Additional effect Stun.
-- Will stack with Sneak Attack.
-- Aligned with the Flame Gorget & Light Gorget.
-- Aligned with the Flame Belt & Light Belt.
-- Element: Light
-- Modifiers: STR:30%
-- 100%TP    200%TP    300%TP
-- 3.00      3.50      4.00
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID)

	local params = {};
	params.ftp100 = 4.5; params.ftp200 = 6; params.ftp300 = 7.5;
	params.str_wsc = 0.32; params.dex_wsc = 0.0; params.vit_wsc = 0.32; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
	params.ele = ELE_LIGHT;
	params.skill = SKILL_SWD;
	params.includemab = true;

	local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, params);
	damage = damage * WEAPON_SKILL_POWER

	if damage > 0 and (target:hasStatusEffect(EFFECT_STUN) == false) then
    target:addStatusEffect(EFFECT_FLASH, 200, 0, 15);
	end

	return tpHits, extraHits, criticalHit, damage;

end;

