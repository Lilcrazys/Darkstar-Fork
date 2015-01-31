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
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_AUTO_SPIKES,mob:getShortID());
    mob:addStatusEffect(EFFECT_DAMAGE_SPIKES,5,0,0);
    mob:getStatusEffect(EFFECT_DAMAGE_SPIKES):setFlag(32);
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 3);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_UFASTCAST, 80);
    mob:addMod(MOD_HUMANOID_KILLER, 11);
    mob:addMod(MOD_MATT, 20);
    mob:addMod(MOD_MACC, 100);
    mob:addMod(MOD_INT, 20);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    mob:SpoofChatParty("I'll swallow your soul!", MESSAGE_SAY)
end;

-----------------------------------
-- onMobFight Action
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
    -- mob:SpoofChatParty("victory message here", MESSAGE_SAY)
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    local RAND = math.random(0,99);
    target:PrintToPlayer(string.format(" 'u' ", RAND));
    if (RAND >= 33) then
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
    local RAND = math.random(0,99);
    target:PrintToPlayer(string.format(" 'u' ", RAND));
    if (RAND >= 33) then
        return 0,0,0;
    else
        local duration = 5;
        target:addStatusEffect(EFFECT_TERROR,1,0,duration);
        return SUBEFFECT_CURSE_SPIKES,0,EFFECT_TERROR;
    end
end;