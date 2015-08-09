-----------------------------------
-- Area: Legion
-- Paramount_Ironclad
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REGAIN, 15);
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_COUNTER, 15);

    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
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

function onMobDeath(mob, killer)
    local mobAct1 = GetMobAction(17526852);
    local mobAct2 = GetMobAction(17526853);
    local mobAct3 = GetMobAction(17526851);
    killer:addCurrency("legion_point", 150);

    if (mobAct1 == ACTION_NONE or mobAct1 == ACTION_SPAWN) and (mobAct2 == ACTION_NONE or mobAct2 == ACTION_SPAWN) then
        if (mobAct3 == ACTION_NONE or mobAct3 == ACTION_SPAWN) then
            SpawnMob(17526856, 300); -- Paramount_Botulus Spawn
        end
    end
end;