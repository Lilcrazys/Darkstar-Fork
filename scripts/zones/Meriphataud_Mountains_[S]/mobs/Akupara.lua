-----------------------------------
-- Area: Meriphataud Mountains [S]
-- VWNM: Akupara
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
    mob:setMod(MOD_MACC,1950); -- needs converted to proper addMod later..
    mob:setMod(MOD_MATT,135);  -- needs converted to proper addMod later..

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
    -- local depopTime = mob:getLocalVar("depopTime");

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

    if (player:hasKeyItem(JADE_STRATUM_ABYSSITE_III)) then -- Akupara Kill
        if (player:getMaskBit(player:getVar("JADE_STRATUM_III"), 1) == false) then
            player:setMaskBit(player:getVar("JADE_STRATUM_III"),"JADE_STRATUM_III",1,true);
        end

        if (player:isMaskFull(player:getVar("JADE_STRATUM_III"),2) == true) then
            player:addKeyItem(JADE_STRATUM_ABYSSITE_IV);
            player:delKeyItem(JADE_STRATUM_ABYSSITE_III);
            player:setVar("JADE_STRATUM_III", 0);
            player:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_IV);
        end
    end

    player:addCurrency("bayld", 75);
    player:addExp(10000);
end;