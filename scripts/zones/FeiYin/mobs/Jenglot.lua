-----------------------------------
-- Area: Fei'Yin
-- NM:   Jenglot
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
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

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 10)
    mob:addMod(MOD_MATT, 100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    -- Curses, Foiled A-Golem!?
    if(killer:hasKeyItem(SHANTOTTOS_NEW_SPELL)) then
        killer:delKeyItem(SHANTOTTOS_NEW_SPELL);
        killer:addKeyItem(SHANTOTTOS_EXSPELL);
    end

end;