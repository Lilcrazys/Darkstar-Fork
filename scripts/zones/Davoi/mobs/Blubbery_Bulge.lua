-----------------------------------
-- Area: Davoi
--  NM:  Blubbery Bulge
-- Involved in Quest: The Miraculous Dale
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_AUTO_SPIKES,mob:getShortID());
    mob:addStatusEffect(EFFECT_DAMAGE_SPIKES,5,0,0);
    mob:getStatusEffect(EFFECT_DAMAGE_SPIKES):setFlag(32);
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    -- Set PH back to normal, then set to respawn spawn
    PH = GetServerVariable("[PH]Blubbery_Bulge");
    SetServerVariable("[PH]Blubbery_Bulge", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    if (math.random(0,99) >= 25) then
        return 0,0,0;
    else
        local dmg = math.random(1,11);
        local ATKDWN = target:hasStatusEffect(EFFECT_ATTACK_DOWN);
        local DEFDWN = target:hasStatusEffect(EFFECT_DEFENSE_DOWN);
        if (ATKDWN == false and DEFDWN == false) then
            local duration = math.random(5,30);
            target:addStatusEffect(EFFECT_ATTACK_DOWN,20,0,duration);
            target:addStatusEffect(EFFECT_DEFENSE_DOWN,20,0,duration);
        end
        return SUBEFFECT_DELUGE_SPIKES,0,dmg;
    end
end;