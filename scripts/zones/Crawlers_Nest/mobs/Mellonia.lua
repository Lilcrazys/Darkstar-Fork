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

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9628,0,8919,50); -- Ifritear
        SetDropRate(9628,0,8920,0); -- Leviatear
        SetDropRate(9628,0,8921,0); -- Ramutear
        SetDropRate(9628,0,8922,0); -- Garutear
        SetDropRate(9628,0,8923,0); -- Titatear
        SetDropRate(9628,0,8924,0); -- Shivatear
        SetDropRate(9628,0,8925,0); -- Carbutear
        SetDropRate(9628,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9628,0,8919,0); -- Ifritear
        SetDropRate(9628,0,8920,50); -- Leviatear
        SetDropRate(9628,0,8921,0); -- Ramutear
        SetDropRate(9628,0,8922,0); -- Garutear
        SetDropRate(9628,0,8923,0); -- Titatear
        SetDropRate(9628,0,8924,0); -- Shivatear
        SetDropRate(9628,0,8925,0); -- Carbutear
        SetDropRate(9628,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9628,0,8919,0); -- Ifritear
        SetDropRate(9628,0,8920,0); -- Leviatear
        SetDropRate(9628,0,8921,50); -- Ramutear
        SetDropRate(9628,0,8922,0); -- Garutear
        SetDropRate(9628,0,8923,0); -- Titatear
        SetDropRate(9628,0,8924,0); -- Shivatear
        SetDropRate(9628,0,8925,0); -- Carbutear
        SetDropRate(9628,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9628,0,8919,0); -- Ifritear
        SetDropRate(9628,0,8920,0); -- Leviatear
        SetDropRate(9628,0,8921,0); -- Ramutear
        SetDropRate(9628,0,8922,50); -- Garutear
        SetDropRate(9628,0,8923,0); -- Titatear
        SetDropRate(9628,0,8924,0); -- Shivatear
        SetDropRate(9628,0,8925,0); -- Carbutear
        SetDropRate(9628,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9628,0,8919,0); -- Ifritear
        SetDropRate(9628,0,8920,0); -- Leviatear
        SetDropRate(9628,0,8921,0); -- Ramutear
        SetDropRate(9628,0,8922,0); -- Garutear
        SetDropRate(9628,0,8923,50); -- Titatear
        SetDropRate(9628,0,8924,0); -- Shivatear
        SetDropRate(9628,0,8925,0); -- Carbutear
        SetDropRate(9628,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9628,0,8919,0); -- Ifritear
        SetDropRate(9628,0,8920,0); -- Leviatear
        SetDropRate(9628,0,8921,0); -- Ramutear
        SetDropRate(9628,0,8922,0); -- Garutear
        SetDropRate(9628,0,8923,0); -- Titatear
        SetDropRate(9628,0,8924,50); -- Shivatear
        SetDropRate(9628,0,8925,0); -- Carbutear
        SetDropRate(9628,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9628,0,8919,0); -- Ifritear
        SetDropRate(9628,0,8920,0); -- Leviatear
        SetDropRate(9628,0,8921,0); -- Ramutear
        SetDropRate(9628,0,8922,0); -- Garutear
        SetDropRate(9628,0,8923,0); -- Titatear
        SetDropRate(9628,0,8924,0); -- Shivatear
        SetDropRate(9628,0,8925,50); -- Carbutear
        SetDropRate(9628,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9628,0,8919,0); -- Ifritear
        SetDropRate(9628,0,8920,0); -- Leviatear
        SetDropRate(9628,0,8921,0); -- Ramutear
        SetDropRate(9628,0,8922,0); -- Garutear
        SetDropRate(9628,0,8923,0); -- Titatear
        SetDropRate(9628,0,8924,0); -- Shivatear
        SetDropRate(9628,0,8925,0); -- Carbutear
        SetDropRate(9628,0,8926,50); -- Fenritear
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

function onMobDeath(mob, killer, ally)

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Mellonia Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_II"), 2) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",2,true);
        end

        if (ally:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_II"),6) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                ally:setVar("WHITE_STRATUM_II", 0);
                ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_III);
            end
        end
    end

    ally:addCurrency("bayld", 200);
    ally:addExp(10000);
end;
