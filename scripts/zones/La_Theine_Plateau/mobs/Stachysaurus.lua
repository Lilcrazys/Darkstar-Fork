-----------------------------------
-- Area: EDIT ME
-- VWNM: Stachysaurus
-----------------------------------
package.loaded["scripts/zones/La_Theine_Plateau/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/La_Theine_Plateau/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK,25);


    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
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
    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 400);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_V)) then -- Stachysaurus Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_V"), 0) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_V"),"WHITE_STRATUM_V",0,true);
        end
        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_V"),3) == true) then
           ally:addKeyItem(WHITE_STRATUM_ABYSSITE_VI);
           ally:delKeyItem(WHITE_STRATUM_ABYSSITE_V);
           ally:setVar("WHITE_STRATUM_V", 0);
           ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
        end
    end;
end;