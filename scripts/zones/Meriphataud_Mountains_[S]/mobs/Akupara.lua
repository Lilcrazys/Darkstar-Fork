-----------------------------------
-- Area: ?
-- VWNM: Lorbulcrud
-----------------------------------
package.loaded["scripts/zones/Meriphataud_Mountains_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Meriphataud_Mountains_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,135);

    -- Vars
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
    if (ally:hasKeyItem(JADE_STRATUM_ABYSSITE_III)) then -- Akupara Kill
        if (ally:getMaskBit(ally:getVar("JADE_STRATUM_III"), 1) == false) then
            ally:setMaskBit(ally:getVar("JADE_STRATUM_III"),"JADE_STRATUM_III",1,true);
        end

        if (ally:isMaskFull(ally:getVar("JADE_STRATUM_III"),2) == true) then
            ally:addKeyItem(JADE_STRATUM_ABYSSITE_IV);
            ally:delKeyItem(JADE_STRATUM_ABYSSITE_III);
            ally:setVar("JADE_STRATUM_III", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_IV);
        end
    end

    ally:addCurrency("bayld", 75);
    ally:addExp(10000);
end;