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
    local Book_2hr_Used = mob:getLocalVar("Book_2hr");

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

function onMobDeath(mob, player, isKiller)
    player:addCurrency("bayld", 300);
    player:addExp(10000);

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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_IV)) then -- Rw Nw Prt M Hrw Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_IV"), 2) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM_IV"),"WHITE_STRATUM_IV",2,true);
        end

        if (player:isMaskFull(player:getVar("WHITE_STRATUM_IV"),3) == true) then
            player:addKeyItem(WHITE_STRATUM_ABYSSITE_V);
            player:delKeyItem(WHITE_STRATUM_ABYSSITE_IV);
            player:setVar("WHITE_STRATUM_IV", 0);
            player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
        end
    end;
end;