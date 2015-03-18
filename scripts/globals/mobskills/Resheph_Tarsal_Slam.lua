---------------------------------------------------
--  Tarsal
--
--  Description:  Reduces target's HP to 5% of its maximum value, ignores Utsusemi  ,Bind (30 sec)
--  Type: Magical
--

---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local targetcurrentHP = target:getHP();
    local targetmaxHP = target:getMaxHP();
    local hpset=targetmaxHP*0.001;

    if(targetcurrentHP > hpset)then
        dmg= targetcurrentHP - hpset;
        target:delHP(dmg);
    return dmg;
end
