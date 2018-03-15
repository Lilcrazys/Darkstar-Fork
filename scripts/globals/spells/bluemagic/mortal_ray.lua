-----------------------------------------
-- Spell: Mortal Ray
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
    params.effect = EFFECT_DOOM;
    local resist = applyResistance(caster, target, spell, params);

    if (target:isNM()) then -- Immune, cannot Doom NMs
        spell:setMsg(msgBasic.MAGIC_NO_EFFECT);
    elseif (resist < 1) then -- Resisted
        spell:setMsg(msgBasic.MAGIC_RESIST);
    else
        if (target:addStatusEffect(params.effect,10, 3, 30)) then
            spell:setMsg(msgBasic.MAGIC_ENFEEB);
        else
            spell:setMsg(msgBasic.MAGIC_NO_EFFECT); -- Already inflicted
        end
    end

    return params.effect;
end;
