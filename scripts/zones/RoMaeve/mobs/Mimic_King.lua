-----------------------------------
-- Area: EDIT ME
-- VWNM: ME TO
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 35);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_ATT,150);
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
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9654,0,8919,50); -- Ifritear
        SetDropRate(9654,0,8920,0); -- Leviatear    
        SetDropRate(9654,0,8921,0); -- Ramutear    
        SetDropRate(9654,0,8922,0); -- Garutear    
        SetDropRate(9654,0,8923,0); -- Titatear    
        SetDropRate(9654,0,8924,0); -- Shivatear   
        SetDropRate(9654,0,8925,0); -- Carbutear
        SetDropRate(9654,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9654,0,8919,0); -- Ifritear
        SetDropRate(9654,0,8920,50); -- Leviatear    
        SetDropRate(9654,0,8921,0); -- Ramutear    
        SetDropRate(9654,0,8922,0); -- Garutear    
        SetDropRate(9654,0,8923,0); -- Titatear    
        SetDropRate(9654,0,8924,0); -- Shivatear   
        SetDropRate(9654,0,8925,0); -- Carbutear
        SetDropRate(9654,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9654,0,8919,0); -- Ifritear
        SetDropRate(9654,0,8920,0); -- Leviatear    
        SetDropRate(9654,0,8921,50); -- Ramutear    
        SetDropRate(9654,0,8922,0); -- Garutear    
        SetDropRate(9654,0,8923,0); -- Titatear    
        SetDropRate(9654,0,8924,0); -- Shivatear   
        SetDropRate(9654,0,8925,0); -- Carbutear
        SetDropRate(9654,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9654,0,8919,0); -- Ifritear
        SetDropRate(9654,0,8920,0); -- Leviatear    
        SetDropRate(9654,0,8921,0); -- Ramutear    
        SetDropRate(9654,0,8922,50); -- Garutear    
        SetDropRate(9654,0,8923,0); -- Titatear    
        SetDropRate(9654,0,8924,0); -- Shivatear   
        SetDropRate(9654,0,8925,0); -- Carbutear
        SetDropRate(9654,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9654,0,8919,0); -- Ifritear
        SetDropRate(9654,0,8920,0); -- Leviatear    
        SetDropRate(9654,0,8921,0); -- Ramutear    
        SetDropRate(9654,0,8922,0); -- Garutear    
        SetDropRate(9654,0,8923,50); -- Titatear    
        SetDropRate(9654,0,8924,0); -- Shivatear   
        SetDropRate(9654,0,8925,0); -- Carbutear
        SetDropRate(9654,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9654,0,8919,0); -- Ifritear
        SetDropRate(9654,0,8920,0); -- Leviatear    
        SetDropRate(9654,0,8921,0); -- Ramutear    
        SetDropRate(9654,0,8922,0); -- Garutear    
        SetDropRate(9654,0,8923,0); -- Titatear    
        SetDropRate(9654,0,8924,50); -- Shivatear   
        SetDropRate(9654,0,8925,0); -- Carbutear
        SetDropRate(9654,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9654,0,8919,0); -- Ifritear
        SetDropRate(9654,0,8920,0); -- Leviatear    
        SetDropRate(9654,0,8921,0); -- Ramutear    
        SetDropRate(9654,0,8922,0); -- Garutear    
        SetDropRate(9654,0,8923,0); -- Titatear    
        SetDropRate(9654,0,8924,0); -- Shivatear   
        SetDropRate(9654,0,8925,50); -- Carbutear
        SetDropRate(9654,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9654,0,8919,0); -- Ifritear
        SetDropRate(9654,0,8920,0); -- Leviatear    
        SetDropRate(9654,0,8921,0); -- Ramutear    
        SetDropRate(9654,0,8922,0); -- Garutear    
        SetDropRate(9654,0,8923,0); -- Titatear    
        SetDropRate(9654,0,8924,0); -- Shivatear   
        SetDropRate(9654,0,8925,0); -- Carbutear
        SetDropRate(9654,0,8926,50); -- Fenritear       
    end
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
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
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);

    if (player:hasKeyItem(ASHEN_STRATUM_ABYSSITE_II)) then -- Mimic King Kill
        if (player:getMaskBit(player:getVar("ASHEN_STRATUM_II"), 2) == false) then
            player:setMaskBit(player:getVar("ASHEN_STRATUM_II"),"ASHEN_STRATUM_II",2,true);
        end

        if (player:getQuestStatus(OUTLANDS, VOIDWATCH_OPS_BORDER_CROSSING) == QUEST_COMPLETED) then
            if (player:isMaskFull(player:getVar("ASHEN_STRATUM_II"),3) == true) then
                player:addKeyItem(ASHEN_STRATUM_ABYSSITE_III);
                player:delKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                player:setVar("ASHEN_STRATUM_II", 0);
            end
        end
    end;

    player:addCurrency("bayld", 650);
    player:addExp(10000);    
end;