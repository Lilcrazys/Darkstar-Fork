-----------------------------------
-- Area: Arrapago Reef
--  NM:  Medusa
-- @pos -458 -20 458
-- TODO: resists, attack/def boosts
-----------------------------------

require("scripts/globals/titles");
require("scripts/zones/Arrapago_Reef/TextIDs");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SUPERLINK, mob:getShortID());

    -- addMod
    mob:addMod(MOD_REGAIN,1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setLocalVar("eeshpp", math.random(5,99)); -- Uses EES randomly during the fight
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    local mobID = mob:getID();
    target:showText(mob, MEDUSA_ENGAGE);
    SpawnMob(mobID+1):updateEnmity(target);
    SpawnMob(mobID+2):updateEnmity(target);
    SpawnMob(mobID+3):updateEnmity(target);
    SpawnMob(mobID+4):updateEnmity(target);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local HPP = mob:getHPP();
    if (mob:getLocalVar("usedees") == 0) then
        if (HPP <= mob:getLocalVar("eeshpp")) then
            mob:useMobAbility(1931); -- Eagle Eye Shot
            mob:setLocalVar("usedees", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:showText(mob, MEDUSA_DEATH);
    ally:addTitle(GORGONSTONE_SUNDERER);

    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);
    DespawnMob(mob:getID()+3);
    DespawnMob(mob:getID()+4);

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, MYTHIC, 6);
    end

end;
