-----------------------------------
-- Area: ?
-- VWNM: Belphoebe
-----------------------------------
package.loaded["scripts/zones/Jugner_Forest/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Jugner_Forest/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");



-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_ATT,175);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_STUNRES, 50);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
    local Boost_Used = mob:getLocalVar("Boost");
    --[[
    local depopTime = mob:getLocalVar("depopTime");
    ]]

    if (mob:getHPP() <= 25) then
        if (Boost_Used == 1) then
            mob:setMod(MOD_MATT,140);
            mob:setMod(MOD_UFASTCAST, 75);
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_MATT,120);
            mob:setMod(MOD_UFASTCAST, 50);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    if (isKiller == true) then
        local RND1 = math.random(1,8);
        if (RND1 == 1) then
            player:addTreasure(8919, mob); -- Ifritear
        elseif (RND1 == 2) then
            player:addTreasure(8920, mob); -- Leviatear
        elseif (RND1 == 3) then
            player:addTreasure(8921, mob); -- Ramutear
        elseif (RND1 == 4) then
            player:addTreasure(8922, mob); -- Garutear
        elseif (RND1 == 5) then
            player:addTreasure(8923, mob); -- Titatear
        elseif (RND1 == 6) then
            player:addTreasure(8924, mob); -- Shivatear
        elseif (RND1 == 7) then
            player:addTreasure(8925, mob); -- Carbutear
        elseif (RND1 == 8) then
            player:addTreasure(8926, mob); -- Fenritear
        end
    end

    if (player:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_III)) then -- Belephoebe Kill
        if (player:getMaskBit(player:getVar("CRIMSON_STRATUM_III"), 0) == false) then
            player:setMaskBit(player:getVar("CRIMSON_STRATUM_III"),"CRIMSON_STRATUM_III",0,true);
        end

        if (player:isMaskFull(player:getVar("CRIMSON_STRATUM_III"),2) == true) then
            player:addKeyItem(CRIMSON_STRATUM_ABYSSITE_IV);
            player:delKeyItem(CRIMSON_STRATUM_ABYSSITE_III);
            player:setVar("CRIMSON_STRATUM_III", 0);
            player:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE_IV);
        end
    end

    player:addCurrency("bayld", 75);
    player:addExp(3000);
end;