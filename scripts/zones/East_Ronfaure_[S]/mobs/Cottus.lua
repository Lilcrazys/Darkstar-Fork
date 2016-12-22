-----------------------------------
-- Area: East Ronfaure [S]
-- VWNM: Cottus
-----------------------------------
package.loaded["scripts/zones/East_Ronfaure_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/East_Ronfaure_[S]/TextIDs");
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

    if (player:hasKeyItem(CRIMSON_STRATUM_ABYSSITE)) then -- Cottus Kill
        if (player:getMaskBit(player:getVar("CRIMSON_STRATUM"), 1) == false) then
            player:setMaskBit(player:getVar("CRIMSON_STRATUM"),"CRIMSON_STRATUM",1,true);
        end
        if (player:isMaskFull(player:getVar("CRIMSON_STRATUM"),2) == true) then
           player:addKeyItem(CRIMSON_STRATUM_ABYSSITE_II);
           player:delKeyItem(CRIMSON_STRATUM_ABYSSITE);
           player:setVar("CRIMSON_STRATUM", 0);
           player:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE_II);
        end
    end
    player:addExp(10000);
end;