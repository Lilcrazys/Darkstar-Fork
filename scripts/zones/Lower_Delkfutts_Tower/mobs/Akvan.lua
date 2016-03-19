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

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9633,0,8919,50); -- Ifritear
        SetDropRate(9633,0,8920,0); -- Leviatear
        SetDropRate(9633,0,8921,0); -- Ramutear
        SetDropRate(9633,0,8922,0); -- Garutear
        SetDropRate(9633,0,8923,0); -- Titatear
        SetDropRate(9633,0,8924,0); -- Shivatear
        SetDropRate(9633,0,8925,0); -- Carbutear
        SetDropRate(9633,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9633,0,8919,0); -- Ifritear
        SetDropRate(9633,0,8920,50); -- Leviatear
        SetDropRate(9633,0,8921,0); -- Ramutear
        SetDropRate(9633,0,8922,0); -- Garutear
        SetDropRate(9633,0,8923,0); -- Titatear
        SetDropRate(9633,0,8924,0); -- Shivatear
        SetDropRate(9633,0,8925,0); -- Carbutear
        SetDropRate(9633,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9633,0,8919,0); -- Ifritear
        SetDropRate(9633,0,8920,0); -- Leviatear
        SetDropRate(9633,0,8921,50); -- Ramutear
        SetDropRate(9633,0,8922,0); -- Garutear
        SetDropRate(9633,0,8923,0); -- Titatear
        SetDropRate(9633,0,8924,0); -- Shivatear
        SetDropRate(9633,0,8925,0); -- Carbutear
        SetDropRate(9633,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9633,0,8919,0); -- Ifritear
        SetDropRate(9633,0,8920,0); -- Leviatear
        SetDropRate(9633,0,8921,0); -- Ramutear
        SetDropRate(9633,0,8922,50); -- Garutear
        SetDropRate(9633,0,8923,0); -- Titatear
        SetDropRate(9633,0,8924,0); -- Shivatear
        SetDropRate(9633,0,8925,0); -- Carbutear
        SetDropRate(9633,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9633,0,8919,0); -- Ifritear
        SetDropRate(9633,0,8920,0); -- Leviatear
        SetDropRate(9633,0,8921,0); -- Ramutear
        SetDropRate(9633,0,8922,0); -- Garutear
        SetDropRate(9633,0,8923,50); -- Titatear
        SetDropRate(9633,0,8924,0); -- Shivatear
        SetDropRate(9633,0,8925,0); -- Carbutear
        SetDropRate(9633,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9633,0,8919,0); -- Ifritear
        SetDropRate(9633,0,8920,0); -- Leviatear
        SetDropRate(9633,0,8921,0); -- Ramutear
        SetDropRate(9633,0,8922,0); -- Garutear
        SetDropRate(9633,0,8923,0); -- Titatear
        SetDropRate(9633,0,8924,50); -- Shivatear
        SetDropRate(9633,0,8925,0); -- Carbutear
        SetDropRate(9633,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9633,0,8919,0); -- Ifritear
        SetDropRate(9633,0,8920,0); -- Leviatear
        SetDropRate(9633,0,8921,0); -- Ramutear
        SetDropRate(9633,0,8922,0); -- Garutear
        SetDropRate(9633,0,8923,0); -- Titatear
        SetDropRate(9633,0,8924,0); -- Shivatear
        SetDropRate(9633,0,8925,50); -- Carbutear
        SetDropRate(9633,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9633,0,8919,0); -- Ifritear
        SetDropRate(9633,0,8920,0); -- Leviatear
        SetDropRate(9633,0,8921,0); -- Ramutear
        SetDropRate(9633,0,8922,0); -- Garutear
        SetDropRate(9633,0,8923,0); -- Titatear
        SetDropRate(9633,0,8924,0); -- Shivatear
        SetDropRate(9633,0,8925,0); -- Carbutear
        SetDropRate(9633,0,8926,50); -- Fenritear
    end
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
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

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_III)) then -- Akvan Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_III"), 1) == false) then
            ally:setMaskBit(ally:getVar("WHITE_STRATUM_III"),"WHITE_STRATUM_III",1,true);
        end

        if (ally:getQuestStatus(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_III"),3) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_IV);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_IV);
                ally:setVar("WHITE_STRATUM_III", 0);
            end
        end
    end

    ally:addCurrency("bayld", 450);
    ally:addExp(10000);
end;