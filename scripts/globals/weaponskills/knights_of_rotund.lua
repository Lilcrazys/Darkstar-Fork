-----------------------------------
-- Knights Of Rotund
-- Sword Weapon Skill
-- Skill Level: N/A
-- Available only when equipped with Excalipoor II
-- Aligned with the Flame Gorget & Light Gorget.
-- Aligned with the Flame Belt & Light Belt.
-- Element: None
-- Modifiers: VIT:20% ; STR:15% ; MND:10%
-- 100%TP    200%TP    300%TP
-- 2.33      2.66      2.99
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID)
    local params = {};
    params.numHits = 1;
    params.ftp100 = 2.33;
    params.ftp200 = 2.66;
    params.ftp300 = 2.99;
    params.str_wsc = 0.15;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.2;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.1;
    params.chr_wsc = 0.0;
    params.crit100 = 0.0;
    params.crit200 = 0.0;
    params.crit300 = 0.0;
    params.canCrit = false;
    params.acc100 = 0.0;
    params.acc200 = 0.0;
    params.acc300 = 0.0;
    params.atkmulti = 1;

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, tp, primary, action, taChar, params);

    damage = damage * WEAPON_SKILL_POWER

    return tpHits, extraHits, criticalHit, damage;
end;