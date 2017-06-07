---------------------------------------------
--
-- Stave Toss (staff wielding Mamool Ja only!)
--
--
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    if (mob:AnimationSub() == 1) then -- If one, mob has already lost the staff. if zero, still has staff.
        return 1; -- Can't use this move so mob AI picks another from TP skills list instead.
    else
        return 0; -- Can use skill so mob AI moves on to onMobWeaponSkill() function.
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 3;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

    target:delHP(dmg);
    mob:AnimationSub(1);

    return dmg;
end;
