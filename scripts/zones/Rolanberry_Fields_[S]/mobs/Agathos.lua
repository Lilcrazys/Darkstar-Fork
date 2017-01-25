-----------------------------------
-- Area: EDIT ME
-- VWNM: Agathos
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Rolanberry_Fields_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);

    -- var
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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Agathos Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM"), 3) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM"),"WHITE_STRATUM",3,true);
        end

        if (player:isMaskFull(player:getVar("WHITE_STRATUM"),6) == true) then
            player:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
            player:delKeyItem(WHITE_STRATUM_ABYSSITE);
            player:setVar("WHITE_STRATUM", 0);
            player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_II);
        end
    end

    player:addCurrency("bayld", 100);
    player:addExp(3000);
end;