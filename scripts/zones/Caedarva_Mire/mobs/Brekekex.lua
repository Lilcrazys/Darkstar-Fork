-----------------------------------
-- Area: ?
-- VWNM:
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
    local popTime = mob:getLocalVar("lastPetPop");
    local Frog_2hr_Used = mob:getLocalVar("Frog_2hr")

    if (os.time() - popTime > 120) then
        for Helper = mob:getID()+1, mob:getID()+6 do
            if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                SpawnMob(Helper, 300):updateEnmity(target);
                mob:setLocalVar("lastPetPop", os.time());
            end
        end
    end
    if (mob:getHPP() <= 40) then
        if (Frog_2hr_Used == 0) then
            mob:useMobAbility(436); -- Chainspell
            mob:setLocalVar("Frog_2hr", 1);
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

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 900);
    killer:addExp(10000);

    if (killer:hasKeyItem(AMBER_STRATUM_ABYSSITE)) then -- Brekekekex Kill
        if (killer:getMaskBit(killer:getVar("AMBER_STRATUM"), 1) == false) then
           killer:setMaskBit(killer:getVar("AMBER_STRATUM"),"AMBER_STRATUM",1,true);
        end
        if (killer:isMaskFull(killer:getVar("AMBER_STRATUM"),4) == true) then
           killer:addKeyItem(AMBER_STRATUM_ABYSSITE_II);
           killer:delKeyItem(AMBER_STRATUM_ABYSSITE);
           killer:setVar("AMBER_STRATUM", 0);
        end
    end;
end;