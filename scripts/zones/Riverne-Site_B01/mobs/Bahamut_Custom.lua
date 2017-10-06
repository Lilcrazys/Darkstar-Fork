-----------------------------------
-- Area: inSomeZone
--  NM:  Bahamut (Custom version)
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/msg");

-----------------------------------
-- onMobInibahamutlize Action
-----------------------------------

function onMobInibahamutlize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_STUNRES,33);
    mob:addMod(MOD_THUNDERRES,33);
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 300);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2500);
    mob:setMod(MOD_ACC,2500);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:setMod(MOD_FIRE_AFFINITY_DMG, 5);
    mob:setMod(MOD_FIRE_AFFINITY_ACC, 5);
    mob:setMod(MOD_WIND_AFFINITY,5);
    mob:setMod(MOD_EARTH_AFFINITY,5);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_HUMANOID_KILLER, 5);
    mob:setMod(MOD_TERRORRES, 200);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

    local bahamut_2hr = mob:getLocalVar("bahamut_2hr");

    if (mob:getBattleTime() > 5400 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end

    if (mob:getHPP() <= 10 and bahamut_2hr == 8) then
        mob:useMobAbility(1297); -- Teraflare
        mob:useMobAbility(438); -- Invincible
        mob:setLocalVar("bahamut_2hr", 9);
    elseif (mob:getHPP() <= 20 and bahamut_2hr == 7) then
        mob:useMobAbility(1297); -- Gigaflare
        mob:useMobAbility(436); -- Chainspell
        mob:setLocalVar("bahamut_2hr", 8);
    elseif (mob:getHPP() <= 30 and bahamut_2hr == 6) then
        mob:useMobAbility(1297); -- Gigaflare
        mob:useMobAbility(438); -- Invincible
        mob:setLocalVar("bahamut_2hr", 7);
    elseif (mob:getHPP() <= 40 and bahamut_2hr == 5) then
        mob:useMobAbility(1296); -- Gigaflare
        mob:useMobAbility(3009); -- Elemental_Sforzo
        mob:setLocalVar("bahamut_2hr", 6);
    elseif (mob:getHPP() <= 50 and bahamut_2hr == 4) then
        mob:useMobAbility(1296); -- Gigaflare
        mob:useMobAbility(438); -- Invincible
        mob:setLocalVar("bahamut_2hr", 5);
    elseif (mob:getHPP() <= 60 and bahamut_2hr == 3) then
        mob:useMobAbility(1296); -- Gigaflare
        mob:useMobAbility(436); -- Chainspell
        mob:setLocalVar("bahamut_2hr", 4);
    elseif (mob:getHPP() <= 70 and bahamut_2hr == 2) then
        mob:useMobAbility(1296); -- Gigaflare
        mob:useMobAbility(438); -- Invincible
        mob:setLocalVar("bahamut_2hr", 3);
    elseif (mob:getHPP() <= 80 and bahamut_2hr == 1) then
        mob:useMobAbility(1296); -- Gigaflare
        mob:useMobAbility(436); -- Elemental_Sforzo
        mob:setLocalVar("bahamut_2hr", 2);
    elseif (mob:getHPP() <= 90 and bahamut_2hr == 0) then
        mob:useMobAbility(1296); -- Gigaflare
        mob:useMobAbility(438); -- Invincible
        mob:setLocalVar("bahamut_2hr", 1);
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then  -- AoE Meteor
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    elseif (spell:getID() == 496) then -- AoE Impact
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,10) ~= 3 or target:hasStatusEffect(EFFECT_CURSE_I) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_CURSE_I,40,0,10);
        mob:resetEnmity(target);

        return SUBEFFECT_CURSE,chatType.ADD_EFFECT_STATUS,EFFECT_CURSE_I;
    end
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target) -- Bind / Wing on Draw In
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(1287);
    mob:addTP(100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    -- player:addTitle(WYRM_ASTONISHER);
end;
