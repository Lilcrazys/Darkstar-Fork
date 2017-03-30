-----------------------------------
-- Zone: Rolanberry Fields [S]
--  HNM: The Jumping Crab (ID: 17150970)
-- @pos -724 -32 -362 91
-- @pos 275 -32 -270 91
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/titles");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_DRAW_IN, 1); -- 1=Single target Draw In, 2=Alliance Draw in
    mob:setMobMod(MOBMOD_ADD_EFFECT, mob:getShortID()); -- Give additional effect on melee
    mob:setMobMod(MOBMOD_AUTO_SPIKES, mob:getShortID()); -- Give Auto spikes
    mob:addStatusEffect(EFFECT_DELUGE_SPIKES, 20, 0, 0); -- Needed for auto spikes to fire off
    mob:getStatusEffect(EFFECT_DELUGE_SPIKES):setFlag(32); -- Can't dispel spikes

    -- addMod
    mob:addMod(MOD_ATT, 80);
    mob:addMod(MOD_ACC, 60);
    mob:addMod(MOD_DEF, 125);
    mob:addMod(MOD_STR, 50);
    mob:addMod(MOD_DEX, 25);
    mob:addMod(MOD_VIT, 60);
    mob:addMod(MOD_AGI, 75);
    mob:addMod(MOD_INT, 104);
    mob:addMod(MOD_MND, 158);
    mob:addMod(MOD_MATT, -10);
    mob:addMod(MOD_MACC, 75);
    mob:addMod(MOD_MEVA, 30);
    mob:addMod(MOD_MDEF, 25);
    mob:addMod(MOD_RDEF, 25);
    mob:addMod(MOD_REVA, 25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 25);
    mob:setMod(MOD_REGAIN, 5);
    mob:setMod(MOD_COUNTER, 4);
    mob:setMod(MOD_HUMANOID_KILLER, 3);
    mob:setMod(MOD_WATER_ABSORB, 100);
    mob:setMod(MOD_UFASTCAST, 65);
    mob:setMod(MOD_CURE_POTENCY, 21);
    mob:setMod(MOD_CURE_POTENCY_RCVD, 21);

    -- Checking if Crab should be at the alt pos according to serverVar..
    -- This is done because otherwise server restarts would force it back to same pos.
    if (GetServerVariable("JumpingCrabPos") == 0) then
        mob:setSpawn(-724, -32, -362); -- West side of Zone
        mob:setPos(-724, -32, -362); -- West side of Zone
    elseif (GetServerVariable("JumpingCrabPos") == 1) then
        mob:setSpawn(275, -32, -270); -- East side of Zone
        mob:setPos(275, -32, -270); -- East side of Zone
    else
        mob:setSpawn(120, -15, -698); -- South side of Zone
        mob:setPos(120, -15, -698); -- South side of Zone
    end
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
    local claims = GetServerVariable("JumpingCrabClaim");
    SetServerVariable("JumpingCrabClaim", claims +1);
    mob:useMobAbility(718);
end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob, target)
    mob:setLocalVar("isBoard", 0)
    mob:setLocalVar("LaughingCrab", 0)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    local pos = GetServerVariable("JumpingCrabPos");
    local BattleTime = mob:getBattleTime();
    local J1 = mob:getLocalVar("J1");
    local J2 = mob:getLocalVar("J2");
    local J3 = mob:getLocalVar("J3");

    -- Fight timer and claim tracking...
    if (target:getHPP() <= 5 and mob:getLocalVar("LaughingCrab") == 0) then
        mob:setLocalVar("LaughingCrab", 1);
        target:SpoofMsg("seems to be laughing..You didn't even know giant crabs could laugh.. ", mob, MESSAGE_ECHO, MESSAGE_SAY);
    -- elseif (mob:getLocalVar("SuperDuperJump") == 1) then
        -- mob:setLocalVar("SuperDuperJump", 2);
        -- target:SpoofMsg("The Incredible Jumping Crab uses SuperDuperJump, disappearing into the sky. ", mob, MESSAGE_ECHO, MESSAGE_SAY);
        -- DespawnMob(mob:getID());
    elseif (BattleTime > 7200 and mob:getLocalVar("SuperDuperJump") == 0) then
        -- target:PrintToPlayer(string.format("Timer: %u ", BattleTime))
        mob:setLocalVar("SuperDuperJump", 1);
        mob:useMobAbility(1024); -- SuperDuperJump
    elseif (BattleTime > 3600 and mob:getLocalVar("isBoard") == 0 and mob:getLocalVar("SuperDuperJump") == 0) then
        -- target:PrintToPlayer(string.format("Timer: %u ", BattleTime))
        -- target:PrintToPlayer(string.format("Claim count: %u ", GetServerVariable("JumpingCrabClaim")))
        if (GetServerVariable("JumpingCrabClaim") == 3) then -- Strike 3, yer out (Lost claim too many times and fought past 1hr mark)!
            mob:setLocalVar("SuperDuperJump", 1);
            mob:useMobAbility(1024); -- SuperDuperJump
        else
            target:SpoofMsg("Is beginning to look disinterested in the battle. ", mob, MESSAGE_ECHO, MESSAGE_SAY);
            mob:setLocalVar("isBoard", 1);
            mob:castSpell(260);
        end

    -- 2hr AI, uses DRG and RUN 2hrs (Real DRG 2hr, not Call Wyvern..And doesn't even need the Wyvern to use!)
    elseif (mob:getHPP() <= 9 and mob:getLocalVar("2hr") == 6) then
        mob:setLocalVar("2hr", 7);
        mob:addMod(MOD_HUMANOID_KILLER, 1);
        mob:useMobAbility(1893); -- Do Spirit_Surge!
    elseif (mob:getHPP() <= 33) then
        if (mob:getLocalVar("2hr") == 5) then
            mob:setLocalVar("2hr", 6);
            mob:useMobAbility(1893); -- Do Spirit_Surge!
        elseif (mob:getLocalVar("2hr") == 4) then
            mob:setLocalVar("2hr", 5);
            mob:addMod(MOD_HUMANOID_KILLER, 1);
            mob:useMobAbility(3265); -- Do Elemental_Sforzo!
        end
    elseif (mob:getHPP() <= 50 and mob:getLocalVar("2hr") == 3) then
        mob:setLocalVar("2hr", 4);
        mob:useMobAbility(3265); -- Do Elemental_Sforzo!
    elseif (mob:getHPP() <= 66 and mob:getLocalVar("2hr") == 2) then
        mob:setLocalVar("2hr", 3);
        mob:addMod(MOD_HUMANOID_KILLER, 1);
        mob:useMobAbility(1893); -- Do Spirit_Surge!
    elseif (mob:getHPP() <= 75) then
        if (mob:getLocalVar("2hr") == 1) then
            mob:setLocalVar("2hr", 2);
            mob:useMobAbility(1893); -- Do Spirit_Surge!
        elseif (mob:getLocalVar("2hr") == 0) then
            mob:setLocalVar("2hr", 1);
            mob:addMod(MOD_HUMANOID_KILLER, 1);
            mob:useMobAbility(3265); -- Do Elemental_Sforzo!
        end

    -- 2/3 chance of using extra jump attacks every 30/45/90 seconds.
    elseif (mob:getBattleTime() - J3 > 90) then
        mob:setLocalVar("J3", mob:getBattleTime());
        if (math.random(1,3) ~= 2) then
            mob:useMobAbility(1064); -- Crab_Jump_3
        end
    elseif (mob:getBattleTime() - J2 > 45) then
        mob:setLocalVar("J2", mob:getBattleTime());
        if (math.random(1,3) ~= 2) then
            mob:useMobAbility(733); -- Crab_Jump_2
        end
    elseif (mob:getBattleTime() - J1 > 30) then
        mob:setLocalVar("J1", mob:getBattleTime());
        if (math.random(1,3) ~= 2) then
            mob:useMobAbility(718); -- Crab_Jump_1
        end

    -- Reactions to Merit ws, stun, and terror..
    elseif (mob:getLocalVar("wasMeritWS") == 1) then
        mob:useMobAbility(513); -- Crab_Flying_Punch (sucks to be you!)
        mob:setLocalVar("wasMeritWS", 0);
    elseif (mob:getLocalVar("wasTerror") == 1) then
        mob:useMobAbility(513); -- Crab_Flying_Punch (sucks to be you!)
        mob:setLocalVar("wasTerror", 0);
        mob:setLocalVar("wasStun", 0); -- Also clear stun var, if both were set.
        mob:addTP(144); -- You really do not want to terror this crab, lulz.
    elseif (mob:hasStatusEffect(EFFECT_TERROR)) then
        mob:setLocalVar("wasTerror", 1);
        mob:delStatusEffect(EFFECT_TERROR);
    elseif (mob:getLocalVar("wasStun") == 1) then
        mob:useMobAbility(44); -- Crab_Head_butt (stun you right back!)
        mob:setLocalVar("wasStun", 0);
        mob:addTP(88); -- Angry crab smash puny players who try and stunlock.
    elseif (mob:hasStatusEffect(EFFECT_STUN)) then
        mob:setLocalVar("wasStun", 1);
        mob:delStatusEffect(EFFECT_STUN);
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local RND = math.random(0,99);

    -- These players are too slow, so Floodga2 their asses.
    if (spell:getID() == 215 and mob:getLocalVar("isBoard") == 1) then
        mob:setLocalVar("isBoard", 2);
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(25);
        spell:setAnimation(909);

    -- Randomly make Spells 25 yalm AoE
    elseif (spell:getID() == 112) then -- Flash
        if (RND < 25) then
            spell:setAoE(SPELLAOE_RADIAL);
            spell:setFlag(SPELLFLAG_HIT_ALL);
            spell:setRadius(25);
            spell:setAnimation(1343);
        end
    elseif (spell:getID() == 215) then -- Flood 2
        if (RND < 20) then
            spell:setAoE(SPELLAOE_RADIAL);
            spell:setFlag(SPELLFLAG_HIT_ALL);
            spell:setRadius(25);
            spell:setAnimation(909);
        end
    elseif (spell:getID() == 260) then -- Dispel
        if (RND < 33) then
            spell:setAoE(SPELLAOE_RADIAL);
            spell:setFlag(SPELLFLAG_HIT_ALL);
            spell:setRadius(25);
            spell:setAnimation(492);
        end
    elseif (spell:getID() == 275) then -- Absorb-TP
        if (RND < 40) then
            spell:setAoE(SPELLAOE_RADIAL);
            spell:setFlag(SPELLFLAG_HIT_ALL);
            spell:setRadius(25);
            spell:setAnimation(272);
        end
    end
end

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
    local mob = nil;
    if (caster:getID() == target:getID()) then
        -- This is a self cast spell
        mob = caster;
    else
        -- This is not a self cast spell.
        mob = target;
    end

    if (math.random(1,9) == 5 and (caster:getID() ~= target:getID())) then
        -- 1/9 chance of copying spell, if not self cast.
        mob:castSpell(spell:getID());
    elseif (math.random(1,5) == 3) then
        -- 1/5 chance of casting Flood 2.
        mob:castSpell(260);
    elseif (math.random(1,15) == 5) then
        -- 1/15 chance your tank takes a Crab_Head_Butt instead.
        mob:useMobAbility(44);
    end

    -- Get 1 hit duration of enhanced Deluge Spikes every time a spell lands (goes back to normal after).
    mob:setLocalVar("DelugeSpikes", 1);
    mob:addTP(3); -- Bonus TP
    -- These both include self cast spells.

    return 1;
end;

-----------------------------------
-- onWeaponskillHit
-----------------------------------

function onWeaponskillHit(mob, attacker, weaponskill)
    local QUEST_WS_TABLE = {9, 25, 42, 56, 72, 88, 104, 120, 136, 152, 169, 184, 199, 215}
    local MERIT_WS_TABLE = {15, 60, 77, 93, 109, 125, 141, 157, 174, 191, 221, 224, 226, 203}

    if (attacker:isPC()) then
        if (isInTable(QUEST_WS_TABLE, weaponskill)) then
            if (math.random(0,99) > 24) then
                -- Reset jump timers
                mob:setLocalVar("J1", 0);
                mob:setLocalVar("J2", 0);
                mob:setLocalVar("J3", 0);
            else
                mob:addTP(mob:getTP() *0.1); -- 10% Bonus TP
            end
        elseif (isInTable(MERIT_WS_TABLE, weaponskill)) then
            if (math.random(0,99) > 19) then
                mob:setLocalVar("wasMeritWS", 1);
            elseif (math.random(0,99) > 32) then
                -- Reset jump timers
                mob:setLocalVar("J1", 0);
                mob:setLocalVar("J2", 0);
                mob:setLocalVar("J3", 0);
            end
        else
            if (math.random(0,99) > 32) then
                mob:addTP(mob:getTP() *0.25); -- 25% Bonus TP
            end
        end
    elseif (attacker:isPet()) then
        if (math.random(0,99) > 24) then
            mob:addTP(mob:getTP() *0.33); -- 25% Bonus TP
        end
    end

    if (math.random(0,99) > 19) then
        mob:setLocalVar("Enwater", 1);
    elseif (math.random(0,99) > 24) then
        -- Reset jump timers
        mob:setLocalVar("J1", 0);
        mob:setLocalVar("J2", 0);
        mob:setLocalVar("J3", 0);
    end

    if (mob:getHPP() < 5 and mob:getMod(MOD_HUMANOID_KILLER) < 9) then
        mob:addMod(MOD_HUMANOID_KILLER, 1);
    end

    return 1;
end;

function isInTable(table, element)
    for aire, value in pairs(table) do -- "My life for Aire." /suchanerd
        if (value == element) then
            return true
        end
    end
    return false
end;

-----------------------------------
-- onCriticalHit
-----------------------------------

function onCriticalHit(mob)
    -- Get 50 extra TP and 1 hit duration Enwater every time a critical lands
    mob:addTP(50); -- Bonus TP
    mob:setLocalVar("Enwater", 1);
end

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob, target, damage)
    if (mob:getLocalVar("Enwater") == 1) then -- Do additional effect water damage.
        local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
        local MND_diff = mob:getStat(MOD_MND) - target:getStat(MOD_MND);
        local dmg = 20 + ((INT_diff + MND_diff) * 0.5);
        dmg = addBonusesAbility(mob, ELE_WATER, target, dmg, params);
        dmg = dmg * applyResistanceAddEffect(mob, target, ELE_WATER, 0);
        dmg = adjustForTarget(target, dmg, ELE_WATER);
        dmg = finalMagicNonSpellAdjustments(mob, target, ELE_WATER, dmg);
        dmg = utils.clamp(dmg, 0, 250);
        mob:setLocalVar("Enwater", 0);
        return SUBEFFECT_WATER_DAMAGE, MSGBASIC_ADD_EFFECT_DMG, dmg;
    else -- No additional effect.
        return 0, 0, 0;
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob, target, damage)
    if (mob:getLocalVar("DelugeSpikes") == 1) then -- use custom dmg
        local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
        local MND_diff = mob:getStat(MOD_MND) - target:getStat(MOD_MND);
        local dmg = damage + ((INT_diff + MND_diff) * 0.5);
        dmg = addBonusesAbility(mob, ELE_WATER, target, dmg, params);
        dmg = dmg * applyResistanceAddEffect(mob, target, ELE_WATER, 0);
        dmg = adjustForTarget(target, dmg, ELE_WATER);
        dmg = finalMagicNonSpellAdjustments(mob, target, ELE_WATER, dmg);
        dmg = utils.clamp(dmg, 0, 250);
        mob:setLocalVar("DelugeSpikes", 0);
        return SUBEFFECT_DELUGE_SPIKES, message, dmg;
    else -- Use normal spike dmg/effect from status
        return SUBEFFECT_DELUGE_SPIKES, MSGBASIC_SPIKES_EFFECT_DMG, damage;
    end
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(1181); -- Crab_Jump_4
    mob:addTP(100);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local repop = math.random(3600, 57600) -- 1 to 16 hours by default.
    if (GetServerVariable("JumpingCrabClaim") == 3) then
        repop = math.random(3600, 10800); -- 1 to 3 hours because it wasn't killed.
    end

    SetServerVariable("JumpingCrabClaim",0);
    mob:setRespawnTime(repop);

    if (GetServerVariable("JumpingCrabPos") == 2) then
        -- Move from South to West
        SetServerVariable("JumpingCrabPos", 0);
        mob:setSpawn(-724, -32, -362); -- West side of Zone
        mob:setPos(-724, -32, -362); -- West side of Zone
    elseif (GetServerVariable("JumpingCrabPos") == 0) then
        -- Move from West to East
        SetServerVariable("JumpingCrabPos", 1);
        mob:setSpawn(275, -32, -270); -- East side of Zone
        mob:setPos(275, -32, -270); -- East side of Zone
    else
        -- Move from East to South
        SetServerVariable("JumpingCrabPos", 2);
        mob:setSpawn(120, -15, -698); -- South side of Zone
        mob:setPos(120, -15, -698); -- South side of Zone
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getLocalVar("gotCrabLoot") > 0) then
        player:setLocalVar("gotCrabLoot",0);
    end

    if (isKiller == true) then
        local npc = GetNPCByID(mob:getID()+1);
        npc:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos(), mob:getRotPos());
        npc:showNPC(90); -- Spawns "Crab Loot Box" for 90 seconds.
    end
end;
