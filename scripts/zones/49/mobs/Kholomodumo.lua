-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Kholomodumo
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_AUTO_SPIKES,mob:getShortID());
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
    mob:setMod(MOD_STUNRES, 75);
    mob:setMod(MOD_PARALYZERES, 100);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
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
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    if (mob:hasStatusEffect(EFFECT_CURSE_SPIKES)
    and (mob:hasStatusEffect(EFFECT_DAMAGE_SPIKES))
    and (mob:hasStatusEffect(EFFECT_BLAZE_SPIKES))) then
        -- Not implemented -> target:addStatusEffectEx(EFFECT_CURSE_II, EFFECT_CURSE, 25, 0 , 30);
        target:addStatusEffect(EFFECT_CURSE, 25, 0 , 30);
        return SUBEFFECT_CURSE_SPIKES, 166, EFFECT_CURSE;
    elseif (mob:hasStatusEffect(EFFECT_DAMAGE_SPIKES) or mob:hasStatusEffect(EFFECT_BLAZE_SPIKES)) then
        return SUBEFFECT_BLAZE_SPIKES, 44, damage;
    else
        return 0, 0, 0;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;