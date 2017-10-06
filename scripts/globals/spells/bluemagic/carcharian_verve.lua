-----------------------------------------
-- Spell: Carcharian Verve
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");

-----------------------------------------
-- onMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    if (caster:hasStatusEffect(EFFECT_UNBRIDLED_LEARNING) == true) then
        return 0;
    else
        return chatType.STATUS_PREVENTS;
    end
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
    if (caster:hasStatusEffect(EFFECT_DIFFUSION)) then
        local diffMerit = caster:getMerit(MERIT_DIFFUSION);

        if (diffMerit > 0) then
            duration = duration + (duration/100)* diffMerit;
        end

        caster:delStatusEffect(EFFECT_DIFFUSION);
    end

    if (caster:hasStatusEffect(EFFECT_MAGIC_ATK_BOOST) and caster:hasStatusEffect(EFFECT_MAGIC_DEF_BOOST) == true) then
        spell:setMsg(75);
    else
        caster:addStatusEffect(EFFECT_MAGIC_ATK_BOOST,25,0,90);
        caster:addStatusEffect(EFFECT_ATTACK_BOOST,50,0,90);
    end

    return EFFECT_MAGIC_ATK_BOOST;
end;
