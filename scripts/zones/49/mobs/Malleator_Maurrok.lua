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
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
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

    if (os.time() - popTime > 120) then
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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_SLOW) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_SLOW,50,0,20);
    end
    return SUBEFFECT_SILENCE,163,EFFECT_SLOW;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;