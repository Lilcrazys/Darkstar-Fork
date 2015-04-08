-----------------------------------
-- Area: The Garden of Ru'Hmet
-- NPC:  Ix'aern (drg)
-----------------------------------
require("scripts/zones/The_Garden_of_RuHmet/MobIDs");
require( "scripts/globals/status" );
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize
----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_HASTE_ABILITY, 25);
    mob:setMod(MOD_DOUBLE_ATTACK, 25);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,75);
end;
-----------------------------------
-- onMobFight Action
-----------------------------------
function onMobFight( mob, target )

end



-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    -- Despawn pets..
    DespawnMob(16921023);
    DespawnMob(16921024);
    DespawnMob(16921025);
end;

-----------------------------------
-- OnMobDespawn
-----------------------------------
function onMobDespawn( mob )
    -- Despawn pets..
    DespawnMob( 16921023 );
    DespawnMob( 16921024 );
    DespawnMob( 16921025 );

    -- Reset popped var..
    SetServerVariable("[PH]Ix_aern_drg",0);
end
