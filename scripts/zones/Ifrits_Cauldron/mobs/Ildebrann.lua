-----------------------------------
-- Area: VoiddWatch NM
-- NPC:
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:addMod(MOD_DMGMAGIC, -128);
    mob:addMod(MOD_DMGRANGE, -50);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
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
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_FIRE_AFFINITY,5);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,25);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_HUMANOID_KILLER, 5);
    mob:setMod(MOD_FIRE_ABSORB, 100);
    mob:setMod(MOD_TERRORRES, 1000);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
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
local popTime = mob:getLocalVar("lastPetPop");

    -- Pop an add after 4 minutes..
    if (os.time() - popTime > 240) then
        for Helper = mob:getID() + 1, mob:getID() + 2 do
            -- Pop this helper..
            if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                SpawnMob(Helper, 300):updateEnmity(target);
                mob:setLocalVar("lastPetPop", os.time());
            end
        end
    end

    -- Determine if we have a helper alive and should fly..
    local helpersAlive = 0;
    for Helper = mob:getID() + 1, mob:getID() + 2 do
        if (GetMobAction(Helper) ~= ACTION_NONE and GetMobAction(Helper) ~= ACTION_SPAWN) then
            helpersAlive = helpersAlive + 1;
        end
    end

    -- Check if we are on the ground..
    local animSub = mob:AnimationSub();
    if (animSub == 0 or animSub == 2) then
        -- We are on the ground, check if we should be flying..
        if (helpersAlive > 0) then
            mob:AnimationSub(1); -- fly
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            mob:SetMobSkillAttack(true);
        end
    else
        -- We are flying, see if we should land..
        if (animSub == 1 and helpersAlive == 0) then
            mob:useMobAbility(1026); -- touchdown
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 550);
    killer:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);

    if (killer:hasKeyItem(ASHEN_STRATUM_ABYSSITE)) then -- IIdebran Kill
        if (killer:getMaskBit(killer:getVar("ASHEN_STRATUM"), 2) == false) then
           killer:setMaskBit(killer:getVar("ASHEN_STRATUM"),"ASHEN_STRATUM",2,true);
        end
        if (killer:isMaskFull(killer:getVar("ASHEN_STRATUM"),6) == true) then
           killer:addKeyItem(ASHEN_STRATUM_ABYSSITE_II);
           killer:delKeyItem(ASHEN_STRATUM_ABYSSITE);
           killer:setVar("ASHEN_STRATUM", 0);
        end
    end;
end;