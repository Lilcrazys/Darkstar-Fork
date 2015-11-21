-----------------------------------
-- Area: EDIT ME
-- VWNM: Rw Nw Prt M Hrw
-----------------------------------
package.loaded["scripts/zones/East_Sarutabaruta/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/East_Sarutabaruta/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,85);

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
    local Book_2hr_Used = mob:getLocalVar("Book_2hr");

    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
    if (mob:getHPP() <= 40) then
        if (Book_2hr_Used == 0) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Book_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 300);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE_IV)) then -- Rw Nw Prt M Hrw Kill
        if (killer:getMaskBit(killer:getVar("WHITE_STRATUM_IV"), 2) == false) then
            killer:setMaskBit(killer:getVar("WHITE_STRATUM_IV"),"WHITE_STRATUM_IV",2,true);
        end

        if (killer:isMaskFull(killer:getVar("WHITE_STRATUM_IV"),3) == true) then
            killer:addKeyItem(WHITE_STRATUM_ABYSSITE_V);
            killer:delKeyItem(WHITE_STRATUM_ABYSSITE_IV);
            killer:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
            killer:setVar("WHITE_STRATUM_IV", 0);
        end
    end;
end;