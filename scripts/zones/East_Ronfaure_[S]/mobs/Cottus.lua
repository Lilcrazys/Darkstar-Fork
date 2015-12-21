-----------------------------------
-- Area: East Ronfaure [S]
-- VWNM: Cottus
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,150);
    mob:addMod(MOD_RATT,300);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_RACC,300);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN,50);
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_DEF,1000);

    -- var
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(CRIMSON_STRATUM_ABYSSITE)) then -- Cottus Kill
        if (ally:getMaskBit(ally:getVar("CRIMSON_STRATUM"), 1) == false) then
            ally:setMaskBit(ally:getVar("CRIMSON_STRATUM"),"CRIMSON_STRATUM",1,true);
        end
        if (ally:isMaskFull(ally:getVar("CRIMSON_STRATUM"),2) == true) then
           ally:addKeyItem(CRIMSON_STRATUM_ABYSSITE_II);
           ally:delKeyItem(CRIMSON_STRATUM_ABYSSITE);
           ally:setVar("CRIMSON_STRATUM", 0);
        end
    end
    ally:addExp(10000);
end;