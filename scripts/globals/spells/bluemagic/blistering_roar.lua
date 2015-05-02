-----------------------------------------
-- Spell: Blistering Roar
-----------------------------------------
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT) - target:getStat(MOD_INT),BLUE_SKILL,1.0);

    if(resist < 0.3) then
        local typeEffect = EFFECT_TERROR;
        target:delStatusEffect(typeEffect);
        target:addStatusEffect(typeEffect,25,0,10);
    end

    return typeEffect;
end;