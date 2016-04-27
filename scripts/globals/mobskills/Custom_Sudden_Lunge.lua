---------------------------------------------
-- Sudden Lunge
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASHING,info.hitslanded);

    -- Wiki says max duration of blu spell is 20 sec, but doesn't say if mobskill is shorter
    -- nor do i trust DSP resistance code to shorten it properly..
    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_STUN, 1, 0, math.random(10,20));
    target:delHP(dmg);

    -- Mob loses 5% to 15% HP even if skill misses
    mob:delHP(math.random(5,15) * (mob:getHP()/100));

    return dmg;
end;
