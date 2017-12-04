-----------------------------------------
-- Spell: Myoshui: Ichi
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    target:delStatusEffect(EFFECT_SUBTLE_BLOW_PLUS);
    -- The power is unknown.
    target:addStatusEffect(EFFECT_SUBTLE_BLOW_PLUS,EFFECT_SUBTLE_BLOW_PLUS,10,0,180);
    spell:setMsg(msgBasic.MAGIC_GAIN_EFFECT);

    return EFFECT_SUBTLE_BLOW_PLUS;
end;