-----------------------------------
-- Area: EDIT ME
-- VWNM: Taweret
-----------------------------------

package.loaded["scripts/zones/Batallia_Downs_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Batallia_Downs_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- var
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

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("bayld", 100);
    player:addExp(10000);

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Taweret Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM"), 5) == false) then
           player:setMaskBit(player:getVar("WHITE_STRATUM"),"WHITE_STRATUM",5,true);
        end
        if (player:isMaskFull(player:getVar("WHITE_STRATUM"),6) == true) then
           player:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
           player:delKeyItem(WHITE_STRATUM_ABYSSITE);
           player:setVar("WHITE_STRATUM", 0);
           player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_II);
        end
    end;
end;