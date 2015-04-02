---------------------------------------------------
-- AV_Call_Wyvern
-- Spawn AV's Wynav's
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    local WYNAV_1 = GetMobAction(mob:getID()+1);
    local WYNAV_2 = GetMobAction(mob:getID()+1);
    local WYNAV_3 = GetMobAction(mob:getID()+1);
    local WYNAV_4 = GetMobAction(mob:getID()+1);
    if ((WYNAV_1 ~= ACTION_NONE and WYNAV_1 ~= ACTION_SPAWN)
    and (WYNAV_2 ~= ACTION_NONE and WYNAV_2 ~= ACTION_SPAWN)
    and (WYNAV_3 ~= ACTION_NONE and WYNAV_3 ~= ACTION_SPAWN)
    and (WYNAV_4 ~= ACTION_NONE and WYNAV_4 ~= ACTION_SPAWN)) then
        return 1;
    else
        return 0;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    SpawnMob(mob:getID()+1, 300):updateEnmity(target);
    SpawnMob(mob:getID()+2, 300):updateEnmity(target);
    SpawnMob(mob:getID()+3, 300):updateEnmity(target);
    SpawnMob(mob:getID()+4, 300):updateEnmity(target);
    -- SpawnMob(mob:getID()+5, 300):updateEnmity(target);
    -- SpawnMob(mob:getID()+6, 300):updateEnmity(target);
    -- SpawnMob(mob:getID()+7, 300):updateEnmity(target);

    skill:setMsg(MSG_NONE);

    return 0;
end;