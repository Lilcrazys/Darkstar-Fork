---------------------------------------------
-- Minerva_Melee_Special
--
-- Minerva's melee attacks count as non elemental magic damage and bypasses shadows.
-- While damage is magic, power is calculated by physical attack vs physical defense.
---Steals 1 TP and has 1 in 10 chance to stun for 1 second.
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
    local POW = 0.74
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

    if (math.random(1,10) == 5) then -- 1 in 10 chance of 1 second stun just to interrupt spells.
        target:addStatusEffect(EFFECT_STUN, 0, 0, 1);
    end

    skill:setMsg(264)

    target:addTP(-1);
    mob:addTP(1);
    target:delHP(dmg);

    return dmg;
end;
