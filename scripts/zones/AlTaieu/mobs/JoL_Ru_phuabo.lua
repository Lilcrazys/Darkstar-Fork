-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'phuabo
-- Jailor of Love Pet version
-----------------------------------


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,40);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
    mob:addMod(MOD_ACC,225);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_ACC,100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
end;