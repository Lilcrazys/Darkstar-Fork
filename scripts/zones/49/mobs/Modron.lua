-----------------------------------
-- Area: VoiddWatch NM
-- NPC:
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2200);
    mob:setMod(MOD_MATT,75);
    mob:setMod(MOD_DOUBLE_ATTACK,25);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,150);
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    --[[if (os.time(t) > depopTime) then
       DespawnMob(mob:getID());
    end
    local popTime = mob:getLocalVar("lastPetPop");

    if (os.time() - popTime > 90) then
        local alreadyPopped = false;
        for Helper = mob:getID()+1, mob:getID()+2 do
            if (alreadyPopped == true) then
                break;
            else
                if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                    SpawnMob(Helper, 300):updateEnmity(target);
                    mob:setLocalVar("lastPetPop", os.time());
                    alreadyPopped = true;
                end
            end
        end
    end ]]

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;