-----------------------------------
-- Area: Legion
--  Mob: Auspicious Entity
-----------------------------------
require("scripts/globals/status");
-- require("scripts/globals/magic");
-- require("scripts/globals/utils");
-- require("scripts/globals/msg");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MACC,425);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

-- function onMobFight(mob, target)
-- end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

-- function onAdditionalEffect(mob,target,damage)
-- end;

-----------------------------------
-- onMagicHit
-----------------------------------

-- function onMagicHit(caster, target, spell)
-- end

-----------------------------------
-- onSpikesDamage
-----------------------------------

-- function onSpikesDamage(mob,target,damage)
-- end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (isKiller == true) then
        local mobID = mob:getID();
        -- local duration = player:getStatusEffect(EFFECT_LEGION):getDuration();

        if (mobID == 17526873) then -- Hall of An : TE
            -- Add +15min
            -- player:addTimeToDynamis(15);
        elseif (mobID == 17526874) then -- Hall of Ki : TE
            -- Add +15min
            -- player:addTimeToDynamis(15);
        elseif (mobID == 17526875) then -- Hall of Im : TE
            -- Add +15min
            -- player:addTimeToDynamis(15);
        elseif (mobID == 17526876) then -- Hall of Muru : TE
            -- Add +15min
            -- player:addTimeToDynamis(15);
        elseif (mobID == 17526877) then -- Hall of Muru : Restore
            player:restoreHP(3000);
            player:messageBasic(024,(player:getMaxHP()-player:getHP()));
            player:restoreMP(3000);
            player:messageBasic(025,(player:getMaxMP()-player:getMP()));
        elseif (mobID == 17526878) then -- Hall of Mul : TE
            -- Add +15min
            -- player:addTimeToDynamis(15);
        elseif (mobID == 17526879) then -- Hall of Mul : Restore
            player:delStatusEffect(EFFECT_WEAKNESS);
            player:restoreHP(3000);
            player:messageBasic(024,(player:getMaxHP()-player:getHP()));
            player:restoreMP(3000);
            player:messageBasic(025,(player:getMaxMP()-player:getMP()));
        elseif (mobID == 17526880) then -- Hall of Mul : 2hr reset
            player:resetRecasts();
            player:injectActionPacket(6, 312, 0, 0, 0);
        end
    end
end;