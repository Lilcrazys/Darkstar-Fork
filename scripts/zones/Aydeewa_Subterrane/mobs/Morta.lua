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
    mob:SetMobSkillAttack(true);
    mob:setMod(MOD_DARK,600);
    mob:setMod(MOD_CRITHITRATE,25);

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
    local Morta_2hr_Used = mob:getLocalVar("Morta_2hr");
    local popTime = mob:getLocalVar("lastPetPop");

    if (os.time() - popTime > 120) then
        for Helper = mob:getID()+1, mob:getID()+6 do
            if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                SpawnMob(Helper, 300):updateEnmity(target);
                helper:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
                mob:setLocalVar("lastPetPop", os.time());
            end
        end
    end
    if (mob:getHPP() <= 25) then
        if (Morta_2hr_Used == 2) then
            mob:useMobAbility(436);
            mob:setLocalVar("Morta_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Morta_2hr_Used == 1) then
            mob:useMobAbility(436);
            mob:setLocalVar("Morta_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Morta_2hr_Used == 0) then
            mob:useMobAbility(436);
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

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 1250);
    killer:addExp(10000);
    if (killer:hasKeyItem(AMBER_STRATUM_ABYSSITE_II)) then -- Morta Kill
       killer:completeQuest(AHT_URHGAN, VW_OP_068_SUBTERRAINEAN_SKIRMISH);
    end
end;