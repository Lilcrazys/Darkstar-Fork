---------------------------------------------
-- Harpeia_Melee_Fly
-- Harpeia Melee Special
-- AoE Wind damage and wipe Shadows
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1;
    local POW = 1
    -- target:PrintToPlayer(string.format("ATT %u ", mob:getStat(MOD_ATT)));
    -- target:PrintToPlayer(string.format("DEF %u ", target:getStat(MOD_DEF)));
    if (mob:getStat(MOD_ATT) > target:getStat(MOD_DEF)) then
        POW = POW+((mob:getStat(MOD_ATT) - target:getStat(MOD_DEF)) /200)
    end
    -- target:PrintToPlayer(string.format("Pre-clamp POW %u ", POW));
    POW = utils.clamp(POW, 0.74, 7.7);
    -- target:PrintToPlayer(string.format("Post-clamp POW %u ", POW));
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*POW,ELE_WIND,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_WIPE_SHADOWS);

    skill:setMsg(msgBasic.MELEE_AOE); -- AoE MSG
    -- skill:setMsg(msgBasic.MELEE); -- Single Target MSG

    target:delHP(dmg);
    target:addTP(1);
    mob:addTP(1);

    return dmg;
end;
