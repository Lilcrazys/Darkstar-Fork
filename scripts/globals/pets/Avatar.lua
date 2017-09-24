-----------------------------------
-- PET: Avatar (ALL OF THEM)
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/pets");
--require("scripts/globals/msg");

-----------------------------------

function onMobSpawn(mob)
    local master = mob:getMaster();
    if (master:getVar("DebugMode") > 0) then
        mob:getMaster():PrintToPlayer(string.format("MaxHP: %d",mob:getMaxHP()));
        mob:getMaster():PrintToPlayer(string.format("MaxMP: %d",mob:getMaxMP()));
        mob:getMaster():PrintToPlayer(string.format("ATTACK: %d",mob:getStat(MOD_ATT)));
        mob:getMaster():PrintToPlayer(string.format("ACCURACY: %d",mob:getMod(MOD_ACC)));
    end
end;

-----------------------------------

function onMobDeath(mob)
    --[[
    local master = mob:getMaster();
    ]]
end;
