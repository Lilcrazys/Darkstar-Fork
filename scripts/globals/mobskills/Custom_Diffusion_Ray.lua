---------------------------------------------
--  Diffusuion Ray
--

--  Type: Magical
--  Utsusemi/Blink absorb: Wipes shadows
--  Range: 30' radial.

---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    --if (mob:AnimationSub() ~= 1) then
      --  return 1;
   -- end
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local dmgmod = 1.5;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_LIGHT,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_EARTH,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
