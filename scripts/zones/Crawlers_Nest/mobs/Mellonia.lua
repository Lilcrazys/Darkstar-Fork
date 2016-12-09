-----------------------------------
-- Area: EDIT ME
-- VWNM: Mellonia
-----------------------------------
package.loaded["scripts/zones/Crawlers_Nest/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Crawlers_Nest/TextIDs");
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
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,1950); -- todo: convert to corretc amount of addMod
    mob:setMod(MOD_MATT,80);   -- todo: convert to corretc amount of addMod

    -- addMod
    mob:addMod(MOD_MDEF,30);
    mob:addMod(MOD_DEF,80);
    mob:addMod(MOD_ATT,150);
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
    local Gnat_2hr_Used = mob:getLocalVar("Gnat_2hr")

    if (mob:getHPP() <= 40) then
        if (Gnat_2hr_Used == 0) then
            mob:useMobAbility(436); -- Chainspell
            mob:setLocalVar("Gnat_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    local RND = math.random(1,3);
    local EFFECT = EFFECT_NONE;

    if (RND == 1) then
        EFFECT = EFFECT_AMNESIA;
        target:addStatusEffect(EFFECT_AMNESIA,1,0,10);
    elseif (RND == 2) then
        EFFECT = EFFECT_SILENCE;
        target:addStatusEffect(EFFECT_SILENCE,1,0,10);
    elseif (RND == 3) then
        EFFECT = EFFECT_BIO;
        target:addStatusEffect(EFFECT_BIO,100,3,5);
    end

    return SUBEFFECT_POISON,163,EFFECT;
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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Mellonia Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_II"), 2) == false) then
           player:setMaskBit(player:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",2,true);
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
