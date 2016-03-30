---------------------------------------------
-- Ill Wind
-- Description: Deals Wind damage to enemies within an area of effect. Additional effect: Dispel
-- Type: Magical
-- Utsusemi/Blink absorb: Wipes Shadows
-- Range: Unknown radial
-- Notes: Only used by Puks in Mamook, Besieged, and the following Notorious Monsters: Vulpangue, Nis Puk, Nguruvilu, Seps , Phantom Puk and Waugyl. Dispels one effect.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getPool() == 4265 or mob:getPool() == 9802) then
        -- Legion custom mobs
        return 0;
    else
        -- DSP mobs
        if (mob:getFamily() == 316 and mob:getModelId() == 1746) then
            return 0;
        else
            return 1;
        end
    end
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() == 9802) then
        -- Sarimanok
        local dmgmod = 2;
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_WIND,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);

        target:dispelStatusEffect();
        target:delHP(dmg);

        return dmg;
    elseif (mob:getPool() == 4265) then
        -- Vulpangue
        local dmgmod = 1;
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2.5,ELE_WIND,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);

        target:dispelStatusEffect();
        target:delHP(dmg);

        return dmg;
    else
        -- DSP code here exactly as DSP has it, minus the tabs.
        local dmgmod = 1;
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2.5,ELE_WIND,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);

        target:dispelStatusEffect();
        target:delHP(dmg);

        --printf("[TP MOVE] Zone: %u Monster: %u Mob lvl: %u TP: %u TP Move: %u Damage: %u on Player: %u Level: %u HP: %u",mob:getZoneID(),mob:getID(),mob:getMainLvl(),skill:getTP(),skill:getID(),dmg,target:getID(),target:getMainLvl(),target:getMaxHP());

        return dmg;
    end
end;
