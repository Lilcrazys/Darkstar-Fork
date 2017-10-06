-----------------------------------
-- Area: ?
-- VWNM:
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_ATT,150);
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
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
    mob:setMod(MOD_UDMGPHYS,100); -- 2x normal dmg
    mob:setMod(MOD_UDMGBREATH,50);
    mob:setMod(MOD_UDMGMAGIC,100);
    mob:setMod(MOD_UDMGRANGE,50);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
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
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 8) or (target:hasStatusEffect(EFFECT_STUN) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_STUN,1,0,2);
    end

    return SUBEFFECT_STUN,chatType.ADD_EFFECT_STATUS,EFFECT_STUN;
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;