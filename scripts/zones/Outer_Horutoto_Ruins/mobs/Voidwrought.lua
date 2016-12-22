-----------------------------------
-- Area: Outer Horutoto Ruins
-- VWNM: Voidwrought
-----------------------------------
package.loaded["scripts/zones/Outer_Horutoto_Ruins/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Outer_Horutoto_Ruins/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,80);
    mob:addMod(MOD_ATT,150);

    -- other
    mob:SetMobSkillAttack(4167); -- Enable Special Animation for melee attacks.
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
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,105);

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

    if (player:hasKeyItem(JADE_STRATUM_ABYSSITE_IV)) then
        if (player:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
            if (player:getMaskBit(player:getVar("VW_3_NATIONS"), 0) == false) then
                player:setMaskBit(player:getVar("VW_3_NATIONS"),"VW_3_NATIONS",0,true);
            end
        end

        player:addKeyItem(JADE_STRATUM_ABYSSITE);
        player:delKeyItem(JADE_STRATUM_ABYSSITE_IV);
        player:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE);
    end

    player:addCurrency("bayld", 125);
    player:addExp(10000);
end;
