-----------------------------------
-- Area: Upper Delkfutt's Tower
-- NPC:  Alkyoneus
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- OnMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_STR,7);
    mob:addMod(MOD_DEX,5);
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_ACC,200);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end; 

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------
function onMobFight(mob,target)
end


-----------------------------------
-- OnMobDeath Action
-----------------------------------

function onMobDeath(mob,killer)
    killer:addTitle(HERO_AMONG_HEROES);

	GetNPCByID(17424518):hideNPC(900); -- qm1 in npc_list
end;