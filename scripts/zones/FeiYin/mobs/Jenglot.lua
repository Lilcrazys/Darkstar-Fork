-----------------------------------
-- Area: Fei'Yin
--  NM:  Jenglot
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 10)
    mob:addMod(MOD_MATT, 100);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 40);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_UFASTCAST, 65);
    mob:setMod(MOD_MACC, 950);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    -- Curses, Foiled A-Golem!?
    if (ally:hasKeyItem(SHANTOTTOS_NEW_SPELL)) then
        ally:delKeyItem(SHANTOTTOS_NEW_SPELL);
        ally:addKeyItem(SHANTOTTOS_EXSPELL);
    end
end;