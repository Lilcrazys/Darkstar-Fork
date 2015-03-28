-----------------------------------
-- Area: Mount Zhayolm
-- NPC:  Cerberus
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,15);

    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,200);
    mob:addMod(MOD_ACC,250);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,50);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	killer:addTitle(CERBERUS_MUZZLER);
	mob:setRespawnTime(math.random((75600),(86400))); -- 21-24 hours
end;