-----------------------------------------
-- Spell: Dream Flower
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_SLEEP_II;
    local resist = applyResistance(caster, target, spell, params);
    local duration = 120 * resist;

    if (resist > 0.5) then
        if (target:addStatusEffect(params.effect,1,0,duration)) then
            spell:setMsg(236); -- Landed it.
        else
            spell:setMsg(75); -- Already slept
        end
    else
        spell:setMsg(85); -- Resisted
    end;

    return params.effect;
end;
