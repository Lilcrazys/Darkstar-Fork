-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Ogbunabali
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
    mob:setMod(MOD_REGAIN, 20);    
    mob:setMod(MOD_MACC,900);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15); 
    mob:setMod(MOD_HASTE_ABILITY, 25);    

    
    -- addMod
    mob:addMod(MOD_MDEF,15);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,75);        
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
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 5 or target:hasStatusEffect(EFFECT_PETRIFICATION) == true) then
        return 0,0,0;
    else
        local duration = 15;
        target:addStatusEffect(EFFECT_PETRIFICATION,10,0,duration);
        return SUBEFFECT_PETRIFY,0,EFFECT_PETRIFICATION;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;