--------------------------------------
-- Spell: Osmosis
-- Steals an enemy's HP and one beneficial status effect. Ineffective against undead.
-- Spell cost: 47 MP
-- Monster Type: Vorageans
-- Spell Type: Magical (Dark)
-- Blue Magic Points: 5
-- Stat Bonus: MND+3 CHR-2
-- Level: 84
-- Casting Time: 4 seconds
-- Recast Time: 90 seconds
-- Magic Bursts on: ?
-- Combos: None
--------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------------
-- onMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

-----------------------------------------
-- onSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
    -- Hey, lets not do math if its immune anyway..
    if (target:isUndead()) then
        return 0;
    end

    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    local resist = applyResistance(caster,spell,target,dINT,BLUE_SKILL,1.0);
    local magicSkill = caster:getSkillLevel(BLUE_SKILL) + caster:getMod(MOD_BLUE);
    local dmg = magicSkill*0.77;
    local effect = EFFECT_NONE;

    dmg = dmg * resist;
    dmg = addBonuses(caster, spell, target, dmg);
    dmg = adjustForTarget(target, dmg, spell:getElement());
    dmg = BlueFinalAdjustments(caster,target,spell,dmg);
    dmg = utils.clamp(dmg, 0, target:getHP()); -- Don't do negative dmg, don't do more than mobs HP..

    if (resist > 0.0625) then
        effect = target:dispelStatusEffect();
        -- caster:addStatusEffect(effect,getPower,getTick,GetDuration,GetSubPower,getTier)
    end

    caster:addHP(dmg);

    return dmg;
end;
