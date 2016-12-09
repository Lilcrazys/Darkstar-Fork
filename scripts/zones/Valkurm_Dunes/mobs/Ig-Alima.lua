-----------------------------------
-- Area: Valkurm Dunes
-- VWNM: Ig-Alima
-----------------------------------
package.loaded["scripts/zones/Valkurm_Dunes/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Valkurm_Dunes/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,60);
    mob:addMod(MOD_ATT,150);

    mob:SetMobSkillAttack(4168);

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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Ig-Alima Kill
        if (player:getMaskBit(player:getVar("JEUNO_VW"), 3) == false) then
            player:setMaskBit(player:getVar("JEUNO_VW"),"JEUNO_VW",3,true);
        end
        if (player:isMaskFull(player:getVar("JEUNO_VW"),5) == true) then
            player:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        end
    end

    if (player:getQuestStatus(JEUNO, VW_OP_115_VALKURM_DUSTER) == QUEST_ACCEPTED) then
        player:completeQuest(JEUNO, VW_OP_115_VALKURM_DUSTER);
    end

    player:addCurrency("bayld", 600);
    player:addExp(10000);
end;
