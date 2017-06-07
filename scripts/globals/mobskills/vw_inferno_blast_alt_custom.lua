---------------------------------------------
--  Fiery Blast Alt
--
--  Description: Deals fire damage to a single target
--  Type: Magical
--  Utsusemi/Blink absorb: Wipes shadows
--  Notes: Used only by Tiamat, Smok and Ildebrann while flying in place of standard attacks
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
        return 1;
end;


function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2.5;
    local POW = 1;
    -- target:PrintToPlayer(string.format("ATT %u ", mob:getStat(MOD_ATT)));
    -- target:PrintToPlayer(string.format("DEF %u ", target:getStat(MOD_DEF)));
    if (mob:getStat(MOD_ATT) > target:getStat(MOD_DEF)) then
        POW = POW+((mob:getStat(MOD_ATT) - target:getStat(MOD_DEF)) /200)
    end
    -- target:PrintToPlayer(string.format("Pre-clamp POW %u ", POW));
    POW = utils.clamp(POW, 0.74, 7.7);
    -- target:PrintToPlayer(string.format("Post-clamp POW %u ", POW));
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*POW,ELE_NONE,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_IGNORE_SHADOWS);

    skill:setMsg(264)

    target:addTP(-1);
    mob:addTP(1);
    target:delHP(dmg);

    return dmg;
end;
