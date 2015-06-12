-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Sallow_Seymour
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


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
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_DEF,1000);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,150);
    mob:addMod(MOD_RATT,300);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_RACC,300);
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
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
if (killer:hasKeyItem("CRIMSON_STRATUM_ABYSSITE")) then -- Cottus Kill
    if  (killer:getMaskBit(killer:getVar("CRIMSON_STRATUM_ABYSSITE"), 2) == false) then
	    killer:setMaskBit(killer:getVar("CRIMSON_STRATUM_ABYSSITE"),"CRIMSON_STRATUM_ABYSSITE",2,true);
    end
    if (killer:isMaskFull("CRIMSON_STRATUM_ABYSSITE",2) == true) then
             killer:addKeyItem("CRIMSON_STRATUM_ABYSSITE_II");
             killer:delKeyItem("CRIMSON_STRATUM_ABYSSITE");
    end
end
killer:addExp(10000);
end;