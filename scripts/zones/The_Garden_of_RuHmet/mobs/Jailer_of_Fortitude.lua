-----------------------------------
-- Area: The Garden of Ru'Hmet
--  NM:  Jailer of Fortitude
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,75);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    --[[
	-- Give it two hour
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
	mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
    ]]
    -- Change animation to humanoid w/ prismatic core
	mob:AnimationSub(1);
    mob:setModelId(1169);

    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local delay = mob:getLocalVar("delay");
    local LastCast = mob:getLocalVar("LAST_CAST");
    local spell = mob:getLocalVar("COPY_SPELL");

    --[[
    if (mob:getBattleTime() - LastCast > 30) then
        mob:setLocalVar("COPY_SPELL", 0);
        mob:setLocalVar("delay", 0);
    end;

    if (IsMobDead(16921016)==false or IsMobDead(16921017)==false) then -- check for kf'ghrah
        if (spell > 0 and mob:hasStatusEffect(EFFECT_SILENCE) == false) then
            if (delay >= 3) then
                mob:castSpell(spell);
                mob:setLocalVar("COPY_SPELL", 0);
                mob:setLocalVar("delay", 0);
            else
                mob:setLocalVar("delay", delay+1);
            end;
        end;
    end;
    ]]

    if (mob:getLocalVar("cast") == 1) then
        if (mob:getBattleTime() - LastCast > 30) then
            mob:setLocalVar("COPY_SPELL", 0);
            mob:setLocalVar("delay", 0);
            mob:setLocalVar("cast", 0);
        end

        if (spell > 0 and mob:hasStatusEffect(EFFECT_SILENCE) == false) then
            if (delay >= 3) then
                mob:castSpell(spell);
                mob:setLocalVar("COPY_SPELL", 0);
                mob:setLocalVar("delay", 0);
                mob:setLocalVar("cast", 0);
            else
                mob:setLocalVar("delay", delay+1);
            end
        end
    end
end;

-----------------------------------
-- onMagicHit Action
-----------------------------------

function onMagicHit(caster,target,spell)
    --[[
	if (spell:tookEffect() and (caster:isPC() or caster:isPet()) and spell:getSpellGroup() ~= SPELLGROUP_BLUE ) then
    ]]
    if (spell:tookEffect() and (caster:isPC() or caster:isPet())) then
		-- Handle mimicked spells
		target:setLocalVar("COPY_SPELL", spell:getID());
		target:setLocalVar("LAST_CAST", target:getBattleTime());
		target:setLocalVar("reflectTime", target:getBattleTime());
		target:AnimationSub(1);
        target:setLocalVar("CAST", 1);
    end

    return 1;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    --[[
	-- Despawn the pets if alive
	DespawnMob(Kf_Ghrah_WHM);
	DespawnMob(Kf_Ghrah_BLM);
    ]]
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    --[[
	-- Set 15 mins respawn
	local qm1 = GetNPCByID(Jailer_of_Fortitude_QM);
    qm1:updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
	
	-- Move it to a random location
	local qm1position = math.random(1,5);
	qm1:setPos(Jailer_of_Fortitude_QM_POS[qm1position][1], Jailer_of_Fortitude_QM_POS[qm1position][2], Jailer_of_Fortitude_QM_POS[qm1position][3]);
    ]]
end;