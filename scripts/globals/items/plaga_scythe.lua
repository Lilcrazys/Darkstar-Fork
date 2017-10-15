-----------------------------------------
-- ID: 18961
-- Item: Plaga Scythe
-- Additional Effect: Dark Damage
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local MESSAGE = msgBasic.ADD_EFFECT_DMG;
    local dmg = math.random(3,10);
    local params = {};
    params.bonusmab = 0;
    params.includemab = false;
    dmg = addBonusesAbility(player, ELE_DARK, target, dmg, params);
    dmg = dmg * applyResistanceAddEffect(player,target,ELE_DARK,0);
    dmg = adjustForTarget(target,dmg,ELE_DARK);
    dmg = finalMagicNonSpellAdjustments(player,target,ELE_DARK,dmg);

    return SUBEFFECT_DARK_DAMAGE,MESSAGE,dmg;
end;
