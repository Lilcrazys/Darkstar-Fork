-----------------------------------------
-- Spell: Adloquium
-- Gradually restores target party member's
-- TP. 10 TP per tic for 600 TP total.
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local tp = 10;
    local duration = 180;

    target:addStatusEffect(EFFECT_REGAIN, tp, 0, duration);

    return EFFECT_REGAIN;
end;
