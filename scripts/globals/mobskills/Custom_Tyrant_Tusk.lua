---------------------------------------------
-- Tyrant Tusk (Custom Version)
--
-- Damage and Bio. Additional effect Death if Bio
-- is already on or if it knocks player into low HP.
--
-- Those struck by this attack that would otherwise be hit to
-- below half of their maximum HP will be instantly KO'd instead
-- of receiving any damage. For instance, a player at 1500/2000 HP
-- that is hit by a 600-damage Tyrant Tusk would be KO'd by this
-- attack because their HP would have fallen below 1000. Equipment/atma with
-- the "Resist Death" attribute is not shown to have any effect on this attack.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() == 9825) then -- Taweret, (other custom NM bugards using this need added to the check)
        -- crazy Loki code here, with some Teo fixes to prevent nil values.
        local currentHP = target:getHP();
        local dmg = 0;
        -- if have more hp then 25%, then reduce to 5%
        if (currentHP / target:getMaxHP() > 0.25) then
            dmg = currentHP * .95;
            dmg = MobFinalAdjustments(dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_PIERCE,MOBPARAM_IGNORE_SHADOWS);
        else
            -- else you die
            dmg = currentHP;
        end

        mob:resetEnmity(target);
        target:delHP(dmg);

        return dmg;
    else
        -- DSP version doesn't exist yet, but this is retail(ish)
        local dmgmod = 2;
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2,ELE_DARK,dmgmod,TP_MAB_BONUS,1);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_IGNORE_SHADOWS);

        target:delHP(dmg);

        if (target:getHPP() < 50 or target:hasStatusEffect(EFFECT_BIO)) then
            -- If damage takes you below 50% hp or you have Bio status, you die
            skill:setMsg(20);
            target:setHP(0);
            return 0;
        else
            return dmg;
        end
    end
end;
