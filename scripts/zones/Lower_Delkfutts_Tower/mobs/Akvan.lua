-----------------------------------
-- Area: Lower Delkfutt's Tower
-- VWNM: Akvan
-----------------------------------
package.loaded["scripts/zones/Lower_Delkfutts_Tower/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Delkfutts_Tower/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,200);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,75);

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
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_STUN) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_STUN,1,0,5);
    end
    return SUBEFFECT_STUN,163,EFFECT_STUN;
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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_III)) then -- Akvan Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_III"), 1) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM_III"),"WHITE_STRATUM_III",1,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY) == QUEST_COMPLETED) then
            if (player:isMaskFull(player:getVar("WHITE_STRATUM_III"),3) == true) then
                player:addKeyItem(WHITE_STRATUM_ABYSSITE_IV);
                player:delKeyItem(WHITE_STRATUM_ABYSSITE_III);
                player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_IV);
                player:setVar("WHITE_STRATUM_III", 0);
            end
        end
    end

    player:addCurrency("bayld", 450);
    player:addExp(10000);
end;