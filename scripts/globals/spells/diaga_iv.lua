-----------------------------------------
-- Spell: Diaga IV
-- Lowers an enemy's defense and gradually deals light elemental damage.
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    -- calculate raw damage
    local basedmg = caster:getSkillLevel(ENFEEBLING_MAGIC_SKILL) / 3;
    local dmg = calculateMagicDamage(basedmg,5,caster,spell,target,ENFEEBLING_MAGIC_SKILL,MOD_INT,false);
    dmg = utils.clamp(dmg, 1, 120);
    -- get resist multiplier (1x if no resist)
    local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT)-target:getStat(MOD_INT),ENFEEBLING_MAGIC_SKILL,1.0);
    -- get the resisted damage
    dmg = dmg*resist;
    -- add on bonuses (staff/day/weather/jas/mab/etc all go in this function)
    dmg = addBonuses(caster,spell,target,dmg);
    -- add in target adjustment
    dmg = adjustForTarget(target,dmg,spell:getElement());
    -- add in final adjustments including the actual damage dealt
    local final = finalMagicAdjustments(caster,target,spell,dmg);

    -- Calculate duration and bonus
    local duration = 150;
    local dotBonus = caster:getMod(MOD_DIA_DOT);  -- Dia Wand

    if (caster:hasStatusEffect(EFFECT_SABOTEUR)) then
        duration = duration * 2;
        caster:delStatusEffect(EFFECT_SABOTEUR);
    end

    -- Check for Bio.
    bio = target:getStatusEffect(EFFECT_BIO);

    -- Do it!
    if (bio == nil or (DIA_OVERWRITE == 0 and bio:getPower() <= 4) or (DIA_OVERWRITE == 1 and bio:getPower() < 4)) then
        target:addStatusEffect(EFFECT_DIA,4+dotBonus,3,duration,FLAG_ERASABLE,20);
        spell:setMsg(msgBasic.MAGIC_DMG);
    else
        spell:setMsg(msgBasic.MAGIC_NO_EFFECT);
    end

    -- Try to kill same tier Bio
    if (BIO_OVERWRITE == 1 and bio ~= nil) then
        if (bio:getPower() <= 4) then
            target:delStatusEffect(EFFECT_BIO);
        end
    end

    return final;
end;