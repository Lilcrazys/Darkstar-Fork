-----------------------------------
-- Area: King Ranperre's Tomb
-- NPC:  Vrtra
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/titles");

-----------------------------------
-- OnMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,130);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,100);
end;

-----------------------------------
-- OnMobEngaged Action
-----------------------------------

function onMobEngaged(mob)
    mob:resetLocalVars();
end
-----------------------------------
-- onMobFight Action
-----------------------------------
function onMobFight(mob, target)
    local offsets = {1, 3, 5, 2, 4, 6};
    local spawnTime = mob:getLocalVar("spawnTime");
    local twohourTime = mob:getLocalVar("twohourTime");

    if (twohourTime == 0) then
        twohourTime = math.random(4, 6);
        mob:setLocalVar("twohourTime", twohourTime);
    end

    if (spawnTime == 0) then
        spawnTime = math.random(3, 5);
        mob:setLocalVar("spawnTime", spawnTime);
    end

    if (mob:getBattleTime()/10 > twohourTime) then
        mob:useMobAbility(454);
        mob:setLocalVar("twohourTime", (mob:getBattleTime()/10)+math.random(4,6));
    elseif (mob:getBattleTime()/10 > spawnTime) then
        for i, offset in ipairs(offsets) do
            if (GetMobAction(mob:getID()+offset) == ACTION_SPAWN or GetMobAction(mob:getID()+offset) == ACTION_NONE) then
                local pet = SpawnMob(mob:getID()+offset, 60);
                local pos = mob:getPos();
                pet:setPos(pos.x, pos.y, pos.z);
                pet:updateEnmity(target)
                break;
            end
        end
        mob:setLocalVar("spawnTime", (mob:getBattleTime()/10)+4);
    end
end

function onMobDisengage(mob, weather)
    for i, offset in ipairs(offsets) do
        DespawnMob(mob:getID()+offset);
    end
end

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 3) or (target:hasStatusEffect(EFFECT_DOOM) == true)) then
        return 0,0,0;
    else
        local duration = 10;
        target:addStatusEffect(EFFECT_DOOM,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_DOOM;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(VRTRA_VANQUISHER);

    -- Set Vrtra's spawnpoint and respawn time (3-5 days)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random((75600),(86400)));

end;
