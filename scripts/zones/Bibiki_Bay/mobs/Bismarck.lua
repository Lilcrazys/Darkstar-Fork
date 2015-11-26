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

    local lastpet = mob:getLocalVar("pop_pet");

    if (os.time() - lastpet > 90) then
        local pet1 = GetMobAction(mob:getID()+1);
        local pet2 = GetMobAction(mob:getID()+2);
        local pet3 = GetMobAction(mob:getID()+3);
        local pet4 = GetMobAction(mob:getID()+4);
        local pet5 = GetMobAction(mob:getID()+5);
        local pet6 = GetMobAction(mob:getID()+6);
        local pet7 = GetMobAction(mob:getID()+7);
        local pet8 = GetMobAction(mob:getID()+8);
        local pet9 = GetMobAction(mob:getID()+9);
        local pet10 = GetMobAction(mob:getID()+10);

        if (pet1 == ACTION_NONE or pet1 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+1, 300):updateEnmity(target);
            pet1:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet2 == ACTION_NONE or pet2 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+2, 300):updateEnmity(target);
            pet2:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet3 == ACTION_NONE or pet3 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+3, 300):updateEnmity(target);
            pet3:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet4 == ACTION_NONE or pet4 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+4, 300):updateEnmity(target);
            pet4:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet5 == ACTION_NONE or pet5 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+5, 300):updateEnmity(target);
            pet5:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet6 == ACTION_NONE or pet6 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+6, 300):updateEnmity(target);
            pet6:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet7 == ACTION_NONE or pet7 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+6, 300):updateEnmity(target);
            pet7:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet8 == ACTION_NONE or pet8 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+6, 300):updateEnmity(target);
            pet8:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet9 == ACTION_NONE or pet9 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+6, 300):updateEnmity(target);
            pet9:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
        elseif (pet10 == ACTION_NONE or pet10 == ACTION_SPAWN) then
            SpawnMob(mob:getID()+6, 300):updateEnmity(target);
            pet10:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("pop_pet", os.time());
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