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
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

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
    mob:setMod(MOD_MACC,2200);
    mob:setMod(MOD_MATT,75);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
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
    local popTimerDelay = 120; -- For easy adjustment.
    local popTime = mob:getLocalVar("nextPetPop");
    local rndPos = math.random(0,2); -- So they aren't all unforgettably stacked..
    if (rndPos == 2) then
        rdnPos = -1;
    end

    if (os.time(t) > popTime) then
        if (GetMobAction(mob:getID()+1) == ACTION_NONE) then
            SpawnMob(mob:getID()+1):updateEnmity(target);
            GetMobByID(mob:getID()+1):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+2) == ACTION_NONE) then
            SpawnMob(mob:getID()+2):updateEnmity(target);
            GetMobByID(mob:getID()+2):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 650);
    ally:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);

    if (ally:hasKeyItem(ASHEN_STRATUM_ABYSSITE_II)) then -- Mordon Kill
        if (ally:getMaskBit(ally:getVar("ASHEN_STRATUM_II"), 1) == false) then
            ally:setMaskBit(ally:getVar("ASHEN_STRATUM_II"),"ASHEN_STRATUM_II",1,true);
        end

        if (player:getQuestStatus(OUTLANDS, VOIDWATCH_OPS_BORDER_CROSSING) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("ASHEN_STRATUM_II"),3) == true) then
                ally:addKeyItem(ASHEN_STRATUM_ABYSSITE_III);
                ally:delKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                ally:setVar("ASHEN_STRATUM_II", 0);
            end
        end
    end
end;