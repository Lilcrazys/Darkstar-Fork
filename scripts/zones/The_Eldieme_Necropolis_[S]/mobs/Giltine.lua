-----------------------------------
-- Area: ?
-- VWNM: Gilitine
-----------------------------------
package.loaded["scripts/zones/The_Eldieme_Necropolis_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/The_Eldieme_Necropolis_[S]/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REFRESH, 250); -- wtf
    mob:setMod(MOD_MACC,2200);    -- wtf
    mob:setMod(MOD_MATT,65);      -- wtf

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,120);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

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


    if (mob:getHPP() <= 40) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_REGAIN, 40);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(50,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,15);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
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


    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Gilitine Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_II"), 5) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",5,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (player:isMaskFull(player:getVar("WHITE_STRATUM_II"),6) == true) then
                player:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                player:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                player:setVar("WHITE_STRATUM_II", 0);
                player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_III);
            end
        end
    end

    player:addCurrency("bayld", 200);
    player:addExp(3000);
end;
