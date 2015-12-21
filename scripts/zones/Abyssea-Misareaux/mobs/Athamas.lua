-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Athamas
-----------------------------------

package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_INT,90);
    mob:addMod(MOD_MATT,375);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_MEVA,100);
end;
-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    WeaknessTriggerSet(mob,target,ws,spell);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    -- local keyId = KEYITEM_ID_HERE;
    if (ally:getVar("RED_PROC") == 1) then
        -- if (ally:hasKeyItem(keyId) == false) then    --[[ Uncomment to use]]--
            -- ally:addKeyItem(keyId);
            -- ally:messageSpecial( KEYITEM_OBTAINED, keyId );
        -- end
    end

    if (ally:getVar("BLUE_PROC") == 1) then
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);  --[[ Uncomment to use]]--
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
    end

    if (ally:getVar("YELLOW_PROC") == 1) then
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);  --[[ Uncomment to use]]--
        -- SetDropRate(dropID,itemID,newrate);
        -- SetDropRate(dropID,itemID,newrate);
    end
    -- DoExp(mob,killer);
    -- DoCruor(mob,killer);
    -- DoLights(mob,killer);
    -- PyxisSpawn(mob,killer,npc);
end;

