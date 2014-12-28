-----------------------------------
-- Area: Multiple - randomly chooses zone to pop at.
--  NM:  SlenderMan
-- Randomly camps players who see/hear him.
-- May appear in:
-- Al Zahbi (Besieged - Undead Swarm),
-- Jugner Forest, Jugner Forest [S],
-- Wajaom Woodlands, Bhaflau Thickets
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,1);
    mob:setMobMod(MOBMOD_AUTO_SPIKES,1);
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 3);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_FASTCAST, 80);
    mob:addMod(MOD_HUMANOID_KILLER, 15);
    mob:addMod(MOD_MATT, 20);
    mob:addMod(MOD_MACC, 100);
    mob:addMod(MOD_INT, 20);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobEngaged(mob, target)
    SpoofSay( mob, target, "I'll swallow your soul!")
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobFight(mob, target)
    --[[
    if (mob:getHPP() <= 3) then
        mob:useMobAbility(475); -- Do Mijin Gakure!
    end
    ]]--
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    -- SpoofSay( mob, killer, "victory message here" )
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(0,99) >= 33) then
        return 0,0,0;
    else
        local dmg = damage * 0.34;
        local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
        if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20) / 2;
        end
        dmg = INT_diff+LV_diff+damage/2;
        dmg = utils.clamp(dmg, 5, 66);
        return SUBEFFECT_FIRE_DAMAGE,163,dmg;
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    if (math.random(0,99) >= 33) then
        return 0,0,0;
    else
        local duration = 5;
        target:addStatusEffect(EFFECT_TERROR,1,0,duration);
        return SUBEFFECT_CURSE_SPIKES,0,EFFECT_TERROR;
    end
end;