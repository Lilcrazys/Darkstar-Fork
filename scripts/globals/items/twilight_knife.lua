-----------------------------------------
-- ID: 19132
-- Item: twilight knife
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local TYPE = math.random(1,3);
    local dmg = math.random(5,25);
    local params = {};
    params.bonusmab = 0;
    params.includemab = false;
    dmg = addBonusesAbility(player, ELE_DARK, target, dmg, params);
    dmg = dmg * applyResistanceAddEffect(player,target,ELE_DARK,0);
    dmg = adjustForTarget(target,dmg,ELE_DARK);
    dmg = finalMagicNonSpellAdjustments(player,target,ELE_DARK,dmg);

    if (TYPE == 1) then
        player:addHP(dmg);
        return SUBEFFECT_HP_DRAIN, msgBasic.ADD_EFFECT_HP_DRAIN, dmg;
    elseif (TYPE == 2) then
        player:addMP(dmg);
        return SUBEFFECT_MP_DRAIN, msgBasic.ADD_EFFECT_MP_DRAIN, dmg;
    elseif (TYPE == 3) then
        player:addTP(dmg);
        return SUBEFFECT_TP_DRAIN, msgBasic.ADD_EFFECT_TP_DRAIN, dmg;
    end
end;
