---------------------------------------------------
-- Acheron Kick
-- Moneceros
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    --elseif (target:isBehind(mob, 48) == false) then
        return 1;
    --else
        --return 0;
    --end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 12;
    local dmgmod = math.random(5,7);
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,2,3,4);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);

    target:delHP(dmg);
    return dmg;
end;