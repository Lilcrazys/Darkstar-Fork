-----------------------------------
-- Area: Legion
--  Mob: Auspicious Entity
-- Notes:
-- 17526873 Water type Elemental
-- 17526874 Wind type Elemental
-- 17526875 water type Elemental
-- 17526876 Ice type Elemental
-- 17526877 Light type Elemental
-- 17526878 Ice type Elemental
-- 17526879 Light type Elemental
-- 17526880 Dark type Elemental
-----------------------------------

require("scripts/globals/status");
-- require("scripts/globals/magic");
-- require("scripts/globals/utils");
-- require("scripts/globals/spoofchat");

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

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
-- end;

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

function onMobDeath(mob, killer, ally)
    local mobID = mob:getID();
    local duration = ally:getStatusEffect(EFFECT_LEGION):getDuration();

    if (mobID == 17526873) then -- Hall of An : TE
        -- Add +15min
        -- ally:addTimeToDynamis(15);
    elseif (mobID == 17526874) then -- Hall of Ki : TE
        -- Add +15min
        -- ally:addTimeToDynamis(15);
    elseif (mobID == 17526875) then -- Hall of Im : TE
        -- Add +15min
        -- ally:addTimeToDynamis(15);
    elseif (mobID == 17526876) then -- Hall of Muru : TE
        -- Add +15min
        -- ally:addTimeToDynamis(15);
    elseif (mobID == 17526877) then -- Hall of Muru : Restore
        ally:restoreHP(3000);
        ally:messageBasic(024,(ally:getMaxHP()-ally:getHP()));
        ally:restoreMP(3000);
        ally:messageBasic(025,(ally:getMaxMP()-ally:getMP()));
    elseif (mobID == 17526878) then -- Hall of Mul : TE
        -- Add +15min
        -- ally:addTimeToDynamis(15);
    elseif (mobID == 17526879) then -- Hall of Mul : Restore
        ally:delStatusEffect(EFFECT_WEAKNESS);
        ally:restoreHP(3000);
        ally:messageBasic(024,(ally:getMaxHP()-ally:getHP()));
        ally:restoreMP(3000);
        ally:messageBasic(025,(ally:getMaxMP()-ally:getMP()));
    elseif (mobID == 17526880) then -- Hall of Mul : 2hr reset
        ally:resetRecasts();
        ally:injectActionPacket( 6, 312 );
    end
end;