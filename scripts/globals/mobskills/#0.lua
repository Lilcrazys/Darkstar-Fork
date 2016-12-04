---------------------------------------------
-- This is a dummy to prevent mob from acting at all.
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    return;
end;