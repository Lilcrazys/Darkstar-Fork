-----------------------------------
-- Area: ?
-- VWNM: Bismark
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
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_CRITHITRATE,25);

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
    local popTime = mob:getLocalVar("nextPetPop");

    if (os.time() > popTime) then
        local alreadyPopped = false;
        local helper1 = mob:getID()+1, mob:getID()+3;
        local helper2 = mob:getID()+4, mob:getID()+6;
        local helper3 = mob:getID()+7, mob:getID()+10;

        if (GetMobAction(Helper1) == ACTION_NONE or GetMobAction(Helper1) == ACTION_SPAWN) then
            SpawnMob(Helper1, 300):updateEnmity(target);
            helper1:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("nextPetPop", os.time()+360);
            alreadyPopped = true;
        elseif (GetMobAction(Helper2) == ACTION_NONE or GetMobAction(Helper2) == ACTION_SPAWN) then
            SpawnMob(Helper2, 300):updateEnmity(target);
            helper2:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("nextPetPop", os.time()+360);
            alreadyPopped = true;
        elseif (GetMobAction(Helper3) == ACTION_NONE or GetMobAction(Helper3) == ACTION_SPAWN) then
            SpawnMob(Helper3, 300):updateEnmity(target);
            helper3:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("nextPetPop", os.time()+360);
            alreadyPopped = true;
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(75,150);
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