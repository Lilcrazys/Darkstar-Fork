-----------------------------------
-- Area: Fei'Yin
--  NM:  Jenglot
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 10)
    mob:addMod(MOD_MATT, 100);
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 40);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_UFASTCAST, 65);
    mob:setMod(MOD_MACC, 950);
end;

function onMobDeath(mob, player, isKiller)
    -- Curses, Foiled A-Golem!?
    if (player:hasKeyItem(SHANTOTTOS_NEW_SPELL)) then
        player:delKeyItem(SHANTOTTOS_NEW_SPELL);
        player:addKeyItem(SHANTOTTOS_EXSPELL);
    end
end;