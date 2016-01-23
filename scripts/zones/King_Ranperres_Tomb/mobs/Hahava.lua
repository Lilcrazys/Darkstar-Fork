-----------------------------------
-- Area: KRT
-- VWNM: Hahava
-- @pos ? ? ? ?
-----------------------------------
package.loaded["scripts/zones/King_Ranperres_Tomb/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/King_Ranperres_Tomb/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_QUAD_ATTACK,25);

    -- var
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
    -- local stance = mob:getLocalVar("stance");  -- Stance 1 = Raksha, Stance 0 = Yaksha

    if (os.time(t) > mob:getLocalVar("depopTime")) then
        if (mob:actionQueueEmpty() == true) then
            DespawnMob(mob:getID());

            -- Prevent moronic "bug" reports..
            mob:SpoofChatParty("You take to long, I'm outa here!", MESSAGE_SAY);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 252) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(252);
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_IV)) then
        if (ally:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
            if (ally:getMaskBit(ally:getVar("VW_3_NATIONS"), 2) == false) then
                ally:setMaskBit(ally:getVar("VW_3_NATIONS"),"VW_3_NATIONS",2,true);
            end
        end

        ally:addKeyItem(CRIMSON_STRATUM_ABYSSITE);
        ally:delKeyItem(CRIMSON_STRATUM_ABYSSITE_IV);
        ally:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE);
    end

    ally:addCurrency("bayld", 125);
    ally:addExp(10000);
    
    local RND1 = math.random(1,8);
        if (RND1 == 1) then
            SetDropRate(9616,0,8919,50); -- Ifritear
            SetDropRate(9616,0,8920,0); -- Leviatear    
            SetDropRate(9616,0,8921,0); -- Ramutear    
            SetDropRate(9616,0,8922,0); -- Garutear    
            SetDropRate(9616,0,8923,0); -- Titatear    
            SetDropRate(9616,0,8924,0); -- Shivatear   
            SetDropRate(9616,0,8925,0); -- Carbutear
            SetDropRate(9616,0,8926,0); -- Fenritear
        elseif (RND1 == 2) then
            SetDropRate(9616,0,8919,0); -- Ifritear
            SetDropRate(9616,0,8920,50); -- Leviatear    
            SetDropRate(9616,0,8921,0); -- Ramutear    
            SetDropRate(9616,0,8922,0); -- Garutear    
            SetDropRate(9616,0,8923,0); -- Titatear    
            SetDropRate(9616,0,8924,0); -- Shivatear   
            SetDropRate(9616,0,8925,0); -- Carbutear
            SetDropRate(9616,0,8926,0); -- Fenritear
        elseif (RND1 == 3) then
            SetDropRate(9616,0,8919,0); -- Ifritear
            SetDropRate(9616,0,8920,0); -- Leviatear    
            SetDropRate(9616,0,8921,50); -- Ramutear    
            SetDropRate(9616,0,8922,0); -- Garutear    
            SetDropRate(9616,0,8923,0); -- Titatear    
            SetDropRate(9616,0,8924,0); -- Shivatear   
            SetDropRate(9616,0,8925,0); -- Carbutear
            SetDropRate(9616,0,8926,0); -- Fenritear
        elseif (RND1 == 4) then
            SetDropRate(9616,0,8919,0); -- Ifritear
            SetDropRate(9616,0,8920,0); -- Leviatear    
            SetDropRate(9616,0,8921,0); -- Ramutear    
            SetDropRate(9616,0,8922,50); -- Garutear    
            SetDropRate(9616,0,8923,0); -- Titatear    
            SetDropRate(9616,0,8924,0); -- Shivatear   
            SetDropRate(9616,0,8925,0); -- Carbutear
            SetDropRate(9616,0,8926,0); -- Fenritear
        elseif (RND1 == 5) then
            SetDropRate(9616,0,8919,0); -- Ifritear
            SetDropRate(9616,0,8920,0); -- Leviatear    
            SetDropRate(9616,0,8921,0); -- Ramutear    
            SetDropRate(9616,0,8922,0); -- Garutear    
            SetDropRate(9616,0,8923,50); -- Titatear    
            SetDropRate(9616,0,8924,0); -- Shivatear   
            SetDropRate(9616,0,8925,0); -- Carbutear
            SetDropRate(9616,0,8926,0); -- Fenritear
        elseif (RND1 == 6) then
            SetDropRate(9616,0,8919,0); -- Ifritear
            SetDropRate(9616,0,8920,0); -- Leviatear    
            SetDropRate(9616,0,8921,0); -- Ramutear    
            SetDropRate(9616,0,8922,0); -- Garutear    
            SetDropRate(9616,0,8923,0); -- Titatear    
            SetDropRate(9616,0,8924,50); -- Shivatear   
            SetDropRate(9616,0,8925,0); -- Carbutear
            SetDropRate(9616,0,8926,0); -- Fenritear
        elseif (RND1 == 7) then
            SetDropRate(9616,0,8919,0); -- Ifritear
            SetDropRate(9616,0,8920,0); -- Leviatear    
            SetDropRate(9616,0,8921,0); -- Ramutear    
            SetDropRate(9616,0,8922,0); -- Garutear    
            SetDropRate(9616,0,8923,0); -- Titatear    
            SetDropRate(9616,0,8924,0); -- Shivatear   
            SetDropRate(9616,0,8925,50); -- Carbutear
            SetDropRate(9616,0,8926,0); -- Fenritear
        elseif (RND1 == 8) then
            SetDropRate(9616,0,8919,0); -- Ifritear
            SetDropRate(9616,0,8920,0); -- Leviatear    
            SetDropRate(9616,0,8921,0); -- Ramutear    
            SetDropRate(9616,0,8922,0); -- Garutear    
            SetDropRate(9616,0,8923,0); -- Titatear    
            SetDropRate(9616,0,8924,0); -- Shivatear   
            SetDropRate(9616,0,8925,0); -- Carbutear
            SetDropRate(9616,0,8926,50); -- Fenritear       
    end
    
end;