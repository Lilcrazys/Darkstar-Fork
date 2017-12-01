--------------------------------------
-- Spell: Osmosis
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    -- Hey, lets not do math if its immune anyway..
    if (target:isUndead()) then
        return 0;
    end

    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_NONE;
    local resist = applyResistance(caster, target, spell, params);
    local magicSkill = caster:getSkillLevel(BLUE_SKILL) + caster:getMod(MOD_BLUE);
    local dmg = magicSkill*0.77;

    dmg = dmg * resist;
    dmg = addBonuses(caster, spell, target, dmg);
    dmg = adjustForTarget(target, dmg, spell:getElement());
    dmg = BlueFinalAdjustments(caster,target,spell,dmg);
    dmg = utils.clamp(dmg, 0, target:getHP()); -- Don't do negative dmg, don't do more than mobs HP..

    if (resist > 0.0625) then
        params.effect = target:dispelStatusEffect();
        --[[
        if (params.effect ~= EFFECT_NONE) then
            caster:addStatusEffect(params.effect,getPower,getTick,GetDuration,GetSubPower,getTier)
        end
        ]]
    end

    caster:addHP(dmg);

    return dmg;
end;
