-----------------------------------
-- Area: Arrapago Reef
--  Mob: Pandemonium Lamp
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 30);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,825);
    mob:setMod(MOD_MATT,75);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);

    -- addMod
    mob:addMod(MOD_MDEF,30);
    mob:addMod(MOD_DEF,50);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;