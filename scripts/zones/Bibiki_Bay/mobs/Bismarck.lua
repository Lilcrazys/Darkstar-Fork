-----------------------------------
-- Area: Bibiki Bay
-- VWNM: Bismark
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF, 50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC, 1950);
    mob:setMod(MOD_MATT, 80);
    mob:setMod(MOD_CRITHITRATE, 25);

    -- Other
    mob:SetMobSkillAttack(true);
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

    local popTimerDelay = 180; -- For easy adjustment.
    local popTime = mob:getLocalVar("nextPetPop");
    local rndPos = math.random(0,2); -- So they aren't all unforgettably stacked..
    if (rndPos == 2) then
        rdnPos = -1;
    end

    if (os.time(t) > popTime) then
        if (GetMobAction(mob:getID()+1) == ACTION_NONE) then
            SpawnMob(mob:getID()+1):updateEnmity(target);
            GetMobByID(mob:getID()+1):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+2) == ACTION_NONE) then
            SpawnMob(mob:getID()+2):updateEnmity(target);
            GetMobByID(mob:getID()+2):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+3) == ACTION_NONE) then
            SpawnMob(mob:getID()+3):updateEnmity(target);
            GetMobByID(mob:getID()+3):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+4) == ACTION_NONE) then
            SpawnMob(mob:getID()+4):updateEnmity(target);
            GetMobByID(mob:getID()+4):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+5) == ACTION_NONE) then
            SpawnMob(mob:getID()+5):updateEnmity(target);
            GetMobByID(mob:getID()+5):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+6) == ACTION_NONE) then
            SpawnMob(mob:getID()+6):updateEnmity(target);
            GetMobByID(mob:getID()+6):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+7) == ACTION_NONE) then
            SpawnMob(mob:getID()+7):updateEnmity(target);
            GetMobByID(mob:getID()+7):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+8) == ACTION_NONE) then
            SpawnMob(mob:getID()+8):updateEnmity(target);
            GetMobByID(mob:getID()+8):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+9) == ACTION_NONE) then
            SpawnMob(mob:getID()+9):updateEnmity(target);
            GetMobByID(mob:getID()+9):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+10) == ACTION_NONE) then
            SpawnMob(mob:getID()+10):updateEnmity(target);
            GetMobByID(mob:getID()+10):setPos(mob:getXpos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(75,150); -- Them be some strong spikes!
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,30);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 1000);
    killer:addExp(10000);
    if (killer:hasKeyItem(HYACINTH_STRATUM_ABYSSITE_II)) then -- Bismark Kill
        killer:completeQuest(OTHER_AREAS, VW_OP_004_BIBIKI_BOMBARDMENT);
        killer:delKeyItem(HYACINTH_STRATUM_ABYSSITE_II);
    end
end;