-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Ushumgal
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 25);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ACC,200);
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
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 10 or target:hasStatusEffect(EFFECT_SLOW) == true) then
        return 0,0,0;
    else
        local duration = 15;
        target:addStatusEffect(EFFECT_SLOW,10,0,duration);
        return SUBEFFECT_NONE,0,EFFECT_SLOW;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    if (killer:hasKeyItem("INDIGO_STRATUM_ABYSSITE")) then -- Ushumgal Kill
        if  (killer:getMaskBit(killer:getVar("INDIGO_STRATUM_ABYSSITE"), 2) == false) then
	       killer:setMaskBit(killer:getVar("INDIGO_STRATUM_ABYSSITE"),"INDIGO_STRATUM_ABYSSITE",2,true);
        end
        if (killer:isMaskFull("INDIGO_STRATUM_ABYSSITE",2) == true) then
                 killer:addKeyItem("INDIGO_STRATUM_ABYSSITE_II");
                 killer:delKeyItem("INDIGO_STRATUM_ABYSSITE");
        end
    end
    killer:addExp(10000);
end;