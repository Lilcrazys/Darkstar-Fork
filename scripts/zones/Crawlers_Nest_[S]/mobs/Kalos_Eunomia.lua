-----------------------------------
-- Area: EDIT ME
-- VWNM: Kalos Eunomia
-----------------------------------
package.loaded["scripts/zones/Crawlers_Nest_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Crawlers_Nest_[S]/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- setMod
    mob:setMod(MOD_REGEN, 120);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,1950); -- todo: convert to proper amount of addMod
    mob:setMod(MOD_MATT,100);  -- todo: convert to proper amount of addMod

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,10) > 4 or target:hasStatusEffect(EFFECT_ADDLE) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_ADDLE,10,0,10);
    end

    return SUBEFFECT_PARALYSIS,MSGBASIC_ADD_EFFECT_STATUS,EFFECT_ADDLE;
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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Kalos Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_II"), 3) == false) then
           player:setMaskBit(player:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",3,true);
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
    player:addExp(10000);
end;
