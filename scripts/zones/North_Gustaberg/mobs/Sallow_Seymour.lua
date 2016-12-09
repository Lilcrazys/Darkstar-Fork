-----------------------------------
-- Area: ?
-- VWNM: Sallow_Seymour
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/North_Gustaberg/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 2); -- Alliance Draw In
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_ACC,180);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1900); -- This needs converted to proper addmod
    mob:setMod(MOD_MATT,105);  -- This needs converted to proper addmod

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    if (isKiller == true) then
        local RND1 = math.random(1,8);
        if (RND1 == 1) then
            player:addTreasure(8919); -- Ifritear
        elseif (RND1 == 2) then
            player:addTreasure(8920); -- Leviatear
        elseif (RND1 == 3) then
            player:addTreasure(8921); -- Ramutear
        elseif (RND1 == 4) then
            player:addTreasure(8922); -- Garutear
        elseif (RND1 == 5) then
            player:addTreasure(8923); -- Titatear
        elseif (RND1 == 6) then
            player:addTreasure(8924); -- Shivatear
        elseif (RND1 == 7) then
            player:addTreasure(8925); -- Carbutear
        elseif (RND1 == 8) then
            player:addTreasure(8926); -- Fenritear
        end
    end
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- local depopTime = mob:getLocalVar("depopTime");
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(2389); -- Mud_Stream
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:hasKeyItem(INDIGO_STRATUM_ABYSSITE)) then -- Sallow Seymour Kill
        if (player:getMaskBit(player:getVar("INDIGO_STRATUM"), 0) == false) then
            player:setMaskBit(player:getVar("INDIGO_STRATUM"),"INDIGO_STRATUM",0,true);
        end

        if (player:isMaskFull(player:getVar("INDIGO_STRATUM"),2) == true) then
            player:addKeyItem(INDIGO_STRATUM_ABYSSITE_II);
            player:delKeyItem(INDIGO_STRATUM_ABYSSITE);
            player:setVar("INDIGO_STRATUM", 0);
            player:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE_II);
        end
    end

    player:addExp(10000);
end;