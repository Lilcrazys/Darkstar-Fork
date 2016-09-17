-----------------------------------
-- Area: ?
-- VWNM:
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

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
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    -- mob:SetMobSkillAttack(LIST_ID_HERE);
    mob:setMod(MOD_DARK,600);
    mob:setMod(MOD_CRITHITRATE,25);

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9674,0,8919,50); -- Ifritear
        SetDropRate(9674,0,8920,0); -- Leviatear
        SetDropRate(9674,0,8921,0); -- Ramutear
        SetDropRate(9674,0,8922,0); -- Garutear
        SetDropRate(9674,0,8923,0); -- Titatear
        SetDropRate(9674,0,8924,0); -- Shivatear
        SetDropRate(9674,0,8925,0); -- Carbutear
        SetDropRate(9674,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9674,0,8919,0); -- Ifritear
        SetDropRate(9674,0,8920,50); -- Leviatear
        SetDropRate(9674,0,8921,0); -- Ramutear
        SetDropRate(9674,0,8922,0); -- Garutear
        SetDropRate(9674,0,8923,0); -- Titatear
        SetDropRate(9674,0,8924,0); -- Shivatear
        SetDropRate(9674,0,8925,0); -- Carbutear
        SetDropRate(9674,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9674,0,8919,0); -- Ifritear
        SetDropRate(9674,0,8920,0); -- Leviatear
        SetDropRate(9674,0,8921,50); -- Ramutear
        SetDropRate(9674,0,8922,0); -- Garutear
        SetDropRate(9674,0,8923,0); -- Titatear
        SetDropRate(9674,0,8924,0); -- Shivatear
        SetDropRate(9674,0,8925,0); -- Carbutear
        SetDropRate(9674,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9674,0,8919,0); -- Ifritear
        SetDropRate(9674,0,8920,0); -- Leviatear
        SetDropRate(9674,0,8921,0); -- Ramutear
        SetDropRate(9674,0,8922,50); -- Garutear
        SetDropRate(9674,0,8923,0); -- Titatear
        SetDropRate(9674,0,8924,0); -- Shivatear
        SetDropRate(9674,0,8925,0); -- Carbutear
        SetDropRate(9674,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9674,0,8919,0); -- Ifritear
        SetDropRate(9674,0,8920,0); -- Leviatear
        SetDropRate(9674,0,8921,0); -- Ramutear
        SetDropRate(9674,0,8922,0); -- Garutear
        SetDropRate(9674,0,8923,50); -- Titatear
        SetDropRate(9674,0,8924,0); -- Shivatear
        SetDropRate(9674,0,8925,0); -- Carbutear
        SetDropRate(9674,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9674,0,8919,0); -- Ifritear
        SetDropRate(9674,0,8920,0); -- Leviatear
        SetDropRate(9674,0,8921,0); -- Ramutear
        SetDropRate(9674,0,8922,0); -- Garutear
        SetDropRate(9674,0,8923,0); -- Titatear
        SetDropRate(9674,0,8924,50); -- Shivatear
        SetDropRate(9674,0,8925,0); -- Carbutear
        SetDropRate(9674,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9674,0,8919,0); -- Ifritear
        SetDropRate(9674,0,8920,0); -- Leviatear
        SetDropRate(9674,0,8921,0); -- Ramutear
        SetDropRate(9674,0,8922,0); -- Garutear
        SetDropRate(9674,0,8923,0); -- Titatear
        SetDropRate(9674,0,8924,0); -- Shivatear
        SetDropRate(9674,0,8925,50); -- Carbutear
        SetDropRate(9674,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9674,0,8919,0); -- Ifritear
        SetDropRate(9674,0,8920,0); -- Leviatear
        SetDropRate(9674,0,8921,0); -- Ramutear
        SetDropRate(9674,0,8922,0); -- Garutear
        SetDropRate(9674,0,8923,0); -- Titatear
        SetDropRate(9674,0,8924,0); -- Shivatear
        SetDropRate(9674,0,8925,0); -- Carbutear
        SetDropRate(9674,0,8926,50); -- Fenritear
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
    local Morta_2hr_Used = mob:getLocalVar("Morta_2hr");
    local popTimerDelay = 90; -- For easy adjustment.
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
        elseif (GetMobAction(mob:getID()+3) == ACTION_NONE) then
            SpawnMob(mob:getID()+3):updateEnmity(target);
            GetMobByID(mob:getID()+3):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+4) == ACTION_NONE) then
            SpawnMob(mob:getID()+4):updateEnmity(target);
            GetMobByID(mob:getID()+4):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+5) == ACTION_NONE) then
            SpawnMob(mob:getID()+5):updateEnmity(target);
            GetMobByID(mob:getID()+5):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+6) == ACTION_NONE) then
            SpawnMob(mob:getID()+6):updateEnmity(target);
            GetMobByID(mob:getID()+6):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        end
    end

    if (mob:getHPP() <= 25) then
        if (Morta_2hr_Used == 2) then
            mob:useMobAbility(692); -- Chainspell
            mob:setLocalVar("Morta_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Morta_2hr_Used == 1) then
            mob:useMobAbility(692); -- Chainspell
            mob:setLocalVar("Morta_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Morta_2hr_Used == 0) then
            mob:useMobAbility(692); -- Chainspell
            mob:setLocalVar("Morta_2hr", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 503) then -- Impact
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
    elseif (spell:getID() == 246) then -- Drain 2
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
    elseif (spell:getID() == 248) then -- Aspir 2
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:hasKeyItem(AMBER_STRATUM_ABYSSITE_II)) then -- Morta Kill
       player:completeQuest(AHT_URHGAN, VW_OP_068_SUBTERRAINEAN_SKIRMISH);
    end

    player:addCurrency("bayld", 1250);
    player:addExp(10000);
end;