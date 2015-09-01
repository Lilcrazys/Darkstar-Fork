-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Ocythoe
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
    mob:setMod(MOD_MATT,85);


    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_ATT,100);
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
    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
    local Ocythoe = 0;
    if (mob:getLocalVar("Ocythoe") ~= nil) then
        Ocythoe_Used = mob:getLocalVar("Ocythoe");
    end

    if (mob:getHPP() <= 15) then
        if (Ocythoe_Used == 2) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 3);
        end
    elseif (mob:getHPP() <= 40) then
        if (Ocythoe_Used == 1) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Ocythoe_Used == 0) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(50,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,30);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 600);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Ocythoe Kill
        if (killer:getMaskBit(killer:getVar("JEUNO_VW"), 1) == false) then
	       killer:setMaskBit(killer:getVar("JEUNO_VW"),"JEUNO_VW",1,true);
        end
        if (killer:isMaskFull(killer:getVar("JEUNO_VW"),5) == true) then
           killer:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        end
    end
end;