-----------------------------------
-- Area: Provenance
--  HNM: Minerva
-- Provenance Boss
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_REGAIN, 25);
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobEngaged(mob, target)

end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobFight(mob, target)

    --[[
    if (target:getTarget():getID() ~= mob:getID()) then
        local targetPos = target:getPos();
        local radians = (256 - targetPos.rot) * (math.pi / 128);
        mob:pathTo(targetPos.x + math.cos(radians) * 16, targetPos.y, targetPos.z + math.sin(radians) * 16);
    end
    local lanceTime = mob:getLocalVar("lanceTime");
    local lanceOut = mob:getLocalVar("lanceOut");
    local rejuv = mob:getLocalVar("rejuv");
    if (mob:getHPP() < 30 and rejuv == 0 and target:getFamily() == 478) then
        -- SpoofSay(  message here)
        mob:useMobAbility(1253);
        mob:setLocalVar("rejuv", 1);
    elseif lanceTime + 50 < mob:getBattleTime() and lanceOut == 0 then
        mob:entityAnimationPacket("sp00");
        mob:setLocalVar("lanceOut", 1);
    end
    ]]--
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    -- SpoofSay( victory message here)
    -- mob:getBattlefield():win();
end;