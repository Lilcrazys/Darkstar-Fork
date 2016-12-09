-----------------------------------
-- Area: ?
-- VWNM: Pancimanci
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/West_Sarutabaruta_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,350);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_HASTE_ABILITY, 35);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_TRIPLE_ATTACK, 20);
    mob:setMod(MOD_DEF,1400);
    mob:setMod(MOD_ACC,1400);

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
    local depopTime = mob:getLocalVar("depopTime");

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

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

    if (player:hasKeyItem(JADE_STRATUM_ABYSSITE)) then -- Pancimanci Kill
        if (player:getMaskBit(player:getVar("JADE_STRATUM"), 1) == false) then
            player:setMaskBit(player:getVar("JADE_STRATUM"),"JADE_STRATUM",1,true);
        end
        if (player:isMaskFull(player:getVar("JADE_STRATUM"),2) == true) then
            player:addKeyItem(JADE_STRATUM_ABYSSITE_II);
            player:delKeyItem(JADE_STRATUM_ABYSSITE);
            player:setVar("JADE_STRATUM", 0);
            player:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_II);
        end
    end

    player:addExp(10000);
end;