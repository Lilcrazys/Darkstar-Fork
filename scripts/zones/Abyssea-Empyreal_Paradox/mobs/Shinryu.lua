-----------------------------------
--  Area: Abyssea - Empyreal Paradox (255)
--   Mob: Shinryu
-----------------------------------
-----------------------------------
package.loaded["scripts/zones/Abyssea-Empyreal_Paradox/TextIDs"] = nil;
package.loaded["scripts/globals/bcnm"] = nil;
-- package.loaded["scripts/globals/abyssea"] = nil;
-------------------------------------
require("scripts/globals/bcnm");
require("scripts/globals/titles");
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/globals/keyitems");
-- require("scripts/globals/abyssea");
require("scripts/zones/Abyssea-Empyreal_Paradox/TextIDs");
require("scripts/globals/status");

-----------------------------------
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_COUNTER,15);
    mob:addMod(MOD_DOUBLE_ATTACK,10)
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,950);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_DRAW_IN,1);

    -- addMod
    mob:addMod(MOD_MDEF, -50);
    mob:addMod(MOD_DEF, -150);
    mob:addMod(MOD_ATT, -150);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    -- WeaknessTriggerSet(mob,target,ws,spell);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    local Shinryu_2hr_Used = 0;
    if (mob:getLocalVar("Shinryu_2hr") ~= nil) then
        Shinryu_2hr_Used = mob:getLocalVar("Shinryu_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Shinryu_2hr_Used == 2) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 3);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
            mob:setMod(MOD_REGAIN,20);
            mob:setMod(MOD_TRIPLE_ATTACK, 15);
            mob:setMod(MOD_UFASTCAST, 75);
            mob:addMod(MOD_MDEF, -350);
            mob:addMod(MOD_DEF, -350);
            mob:addMod(MOD_ATT, 150);
        end
    elseif (mob:getHPP() <= 30) then
        if (Shinryu_2hr_Used == 1) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Shinryu_2hr_Used == 0) then
            mob:useMobAbility(432); -- MS
            mob:setLocalVar("Shinryu_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(WYRM_GOD_DEFIER);
    -- killer:getBCNMloot();
    --[[
    -- local keyId = KEYITEM_ID_HERE;
    if (killer:getVar("RED_PROC") == 1) then
        -- if (killer:hasKeyItem(keyId) == false) then -- Uncomment to use
            -- killer:addKeyItem(keyId);
            -- killer:messageSpecial( KEYITEM_OBTAINED, keyId );
        -- end
    end

    if (killer:getVar("BLUE_PROC") == 1) then
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate); -- Uncomment to use
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
    end

    if (killer:getVar("YELLOW_PROC") == 1) then
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate); -- Uncomment to use
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
    end
    ]]
end;

