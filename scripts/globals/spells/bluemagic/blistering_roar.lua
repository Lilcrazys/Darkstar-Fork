-----------------------------------------
-- Spell: Blistering Roar
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    if caster:hasStatusEffect(EFFECT_UNBRIDLED_LEARNING) then
        return 0;
    else
        return MSGBASIC_STATUS_PREVENTS;
    end
end;

function onSpellCast(caster,target,spell)
    -- local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT) - target:getStat(MOD_INT),BLUE_SKILL,1.0);
    local dINT = caster:getStat(MOD_INT) - target:getStat(MOD_INT);
    local resist = applyResistanceEffect(caster,spell,target,dINT,SKILL_BLU,1.0,EFFECT_TERROR)

    if (resist > 0.25) then
        target:addStatusEffect(EFFECT_TERROR,1,0,10);
    end

    return EFFECT_TERROR;
end;