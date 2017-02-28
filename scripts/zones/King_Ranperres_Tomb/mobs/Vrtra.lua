-----------------------------------
-- Area: King Ranperre's Tomb
--  MOB: Vrtra
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/magic");
require("scripts/globals/utils");

local offsets = {1, 3, 5, 2, 4, 6};
-- Don't remove the offsets variable.
-- That is the ONLY reason the DSP code wasn't working for you.

-----------------------------------
-- OnMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 150);
    mob:setMod(MOD_ACC, 2400);
    mob:setMod(MOD_MATT, 120);
    mob:setMod(MOD_MACC, 2400);
    mob:setMod(MOD_DARK, 600); -- Dark magic Skill
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_HUMANOID_KILLER, 5);
    mob:setMod(MOD_DARK_AFFINITY_DMG, 250);
    mob:setMod(MOD_DARK_AFFINITY_ACC, 250);
    mob:setMod(MOD_SLEEPRES, 100);
    mob:setMod(MOD_SILENCERES, 100);
    mob:setMod(MOD_PARALYZERES, 30);
    mob:setMod(MOD_STUNRES, 50);
    mob:setMod(MOD_TERRORRES, 100);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
    mob:resetLocalVars();
end

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)

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

    if (mob:getBattleTime()/15 > twohourTime) then
        -- mob:useMobAbility(710);
        mob:setLocalVar("twohourTime", (mob:getBattleTime()/15)+math.random(4,6));
    elseif (mob:getBattleTime()/15 > spawnTime) then
        for i, offset in ipairs(offsets) do
            if (GetMobAction(mob:getID()+offset) == ACTION_SPAWN or GetMobAction(mob:getID()+offset) == ACTION_NONE) then
                local pet = SpawnMob(mob:getID()+offset, 60);
                local pos = mob:getPos();
                pet:setPos(pos.x, pos.y, pos.z);
                pet:updateEnmity(target)
                break;
            end
        end
        mob:setLocalVar("spawnTime", (mob:getBattleTime()/15)+4);
    -----------------------------
    -- Start Legion Custom Block
    elseif (mob:actionQueueEmpty() == true) then
        local BWMS = mob:getLocalVar("BWMS");
        -- During Blood weapon, Iruci gains Magic Attack and Evasion, Airi gains Attack and Evasion
        -- During Mighty Strikes, Pey gains Magic Defense, Airi gains Magic Attack and Magic Defense
        if (mob:getHPP() <= 10 and BWMS == 4) then
            mob:setLocalVar("BWMS", 5);
            mob:useMobAbility(439); -- BW
        elseif (mob:getHPP() <= 20 and BWMS == 3) then
            mob:setLocalVar("BWMS", 4);
            mob:useMobAbility(432); -- MS
        elseif (mob:getHPP() <= 30 and BWMS == 2) then
            mob:setLocalVar("BWMS", 3);
            mob:useMobAbility(439); -- BW
        elseif (mob:getHPP() <= 40 and BWMS == 1) then
            mob:setLocalVar("BWMS", 2);
            mob:useMobAbility(432); -- MS
        elseif (mob:getHPP() <= 50 and BWMS == 0) then
            mob:setLocalVar("BWMS", 1);
            mob:useMobAbility(439); -- BW
        end

    	if (mob:getBattleTime() > 3600 and mob:getLocalVar("RAGED") == 0) then
        	mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        	mob:setLocalVar("RAGED", 1);
	    end
    -- End Legion Custom Block
    -----------------------------
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 246)  then -- set drain 2 to AoE
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(29);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,10) > 4 or target:hasStatusEffect(EFFECT_CURSE_I)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_CURSE_I,40,0,10);
        return SUBEFFECT_CURSE,MSGBASIC_ADD_EFFECT_STATUS,EFFECT_CURSE_I;
    end
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(1053);
    mob:addTP(100);
end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob)
    for i, offset in ipairs(offsets) do
        DespawnMob(mob:getID()+offset);
    end
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(VRTRA_VANQUISHER);

    for i, offset in ipairs(offsets) do
        DespawnMob(mob:getID()+offset);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Vrtra's spawnpoint and respawn time (3-5 days)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(75600,86400));

end;
