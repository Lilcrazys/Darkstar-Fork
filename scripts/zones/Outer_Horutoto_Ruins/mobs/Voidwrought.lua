-----------------------------------
-- Area: Outer Horutoto Ruins
-- VWNM: Voidwrought
-- @pos ? ? ? ?
-----------------------------------
package.loaded["scripts/zones/Outer_Horutoto_Ruins/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Outer_Horutoto_Ruins/TextIDs");
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

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
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
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
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9617,8919,50); -- Ifritear
        SetDropRate(9617,8920,0); -- Leviatear
        SetDropRate(9617,8921,0); -- Ramutear
        SetDropRate(9617,8922,0); -- Garutear
        SetDropRate(9617,8923,0); -- Titatear
        SetDropRate(9617,8924,0); -- Shivatear
        SetDropRate(9617,8925,0); -- Carbutear
        SetDropRate(9617,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9617,8919,0); -- Ifritear
        SetDropRate(9617,8920,50); -- Leviatear
        SetDropRate(9617,8921,0); -- Ramutear
        SetDropRate(9617,8922,0); -- Garutear
        SetDropRate(9617,8923,0); -- Titatear
        SetDropRate(9617,8924,0); -- Shivatear
        SetDropRate(9617,8925,0); -- Carbutear
        SetDropRate(9617,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9617,8919,0); -- Ifritear
        SetDropRate(9617,8920,0); -- Leviatear
        SetDropRate(9617,8921,50); -- Ramutear
        SetDropRate(9617,8922,0); -- Garutear
        SetDropRate(9617,8923,0); -- Titatear
        SetDropRate(9617,8924,0); -- Shivatear
        SetDropRate(9617,8925,0); -- Carbutear
        SetDropRate(9617,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9617,8919,0); -- Ifritear
        SetDropRate(9617,8920,0); -- Leviatear
        SetDropRate(9617,8921,0); -- Ramutear
        SetDropRate(9617,8922,50); -- Garutear
        SetDropRate(9617,8923,0); -- Titatear
        SetDropRate(9617,8924,0); -- Shivatear
        SetDropRate(9617,8925,0); -- Carbutear
        SetDropRate(9617,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9617,8919,0); -- Ifritear
        SetDropRate(9617,8920,0); -- Leviatear
        SetDropRate(9617,8921,0); -- Ramutear
        SetDropRate(9617,8922,0); -- Garutear
        SetDropRate(9617,8923,50); -- Titatear
        SetDropRate(9617,8924,0); -- Shivatear
        SetDropRate(9617,8925,0); -- Carbutear
        SetDropRate(9617,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9617,8919,0); -- Ifritear
        SetDropRate(9617,8920,0); -- Leviatear
        SetDropRate(9617,8921,0); -- Ramutear
        SetDropRate(9617,8922,0); -- Garutear
        SetDropRate(9617,8923,0); -- Titatear
        SetDropRate(9617,8924,50); -- Shivatear
        SetDropRate(9617,8925,0); -- Carbutear
        SetDropRate(9617,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9617,8919,0); -- Ifritear
        SetDropRate(9617,8920,0); -- Leviatear
        SetDropRate(9617,8921,0); -- Ramutear
        SetDropRate(9617,8922,0); -- Garutear
        SetDropRate(9617,8923,0); -- Titatear
        SetDropRate(9617,8924,0); -- Shivatear
        SetDropRate(9617,8925,50); -- Carbutear
        SetDropRate(9617,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9617,8919,0); -- Ifritear
        SetDropRate(9617,8920,0); -- Leviatear
        SetDropRate(9617,8921,0); -- Ramutear
        SetDropRate(9617,8922,0); -- Garutear
        SetDropRate(9617,8923,0); -- Titatear
        SetDropRate(9617,8924,0); -- Shivatear
        SetDropRate(9617,8925,0); -- Carbutear
        SetDropRate(9617,8926,50); -- Fenritear
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
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(JADE_STRATUM_ABYSSITE_IV)) then
        if (ally:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
            if (ally:getMaskBit(ally:getVar("VW_3_NATIONS"), 0) == false) then
                ally:setMaskBit(ally:getVar("VW_3_NATIONS"),"VW_3_NATIONS",0,true);
            end
        end

        ally:addKeyItem(JADE_STRATUM_ABYSSITE);
        ally:delKeyItem(JADE_STRATUM_ABYSSITE_IV);
        ally:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE);
    end

    ally:addCurrency("bayld", 125);
    ally:addExp(10000);
end;