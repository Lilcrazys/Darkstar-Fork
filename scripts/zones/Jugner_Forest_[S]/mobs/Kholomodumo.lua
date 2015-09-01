-----------------------------------
-- Area: ?
-- VWNM: Kholomodumo
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_AUTO_SPIKES, mob:getShortID());
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
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
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
    mob:setMod(MOD_STUNRES, 75);
    mob:setMod(MOD_PARALYZERES, 100);

    -- Vars
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
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    if (mob:hasStatusEffect(EFFECT_CURSE_SPIKES)) then
        -- EFFECT_CURSE_II is not implemented (prevents cure/healing)
        -- target:addStatusEffect(EFFECT_CURSE_II, 25, 0, 30);
        target:addStatusEffect(EFFECT_CURSE_I, 25, 0, 30);
        return SUBEFFECT_CURSE_SPIKES, 0, 0; -- Zero'd because effing message doesn't work for any status effect spikes.
        -- return SUBEFFECT_CURSE_SPIKES, 166, EFFECT_CURSE_II);
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
    killer:addCurrency("bayld", 75);
    killer:addExp(10000);

    if (killer:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_III)) then -- Kholomodumo Kill
        if (killer:getMaskBit(killer:getVar("CRIMSON_STRATUM_III"), 1) == false) then
           killer:setMaskBit(killer:getVar("CRIMSON_STRATUM_III"),"CRIMSON_STRATUM_III",1,true);
        end
        if (killer:isMaskFull(killer:getVar("CRIMSON_STRATUM_III"),2) == true) then
           killer:addKeyItem(CRIMSON_STRATUM_ABYSSITE_IV);
           killer:delKeyItem(CRIMSON_STRATUM_ABYSSITE_III);
           killer:setVar("CRIMSON_STRATUM_III", 0);
        end
    end;
end;