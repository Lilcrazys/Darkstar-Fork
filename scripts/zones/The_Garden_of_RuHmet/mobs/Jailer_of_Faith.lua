-----------------------------------
-- Area: The Garden of Ru'Hmet
--  NM:  Jailer_of_Faith
-----------------------------------

require("scripts/globals/status");

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
end;

function onMobSpawn(mob)
    --[[
    -- Give it two hour
    mob:setMod(MOBMOD_MAIN_2HOUR, 1);
    ]]
    -- Change animation to open
    mob:AnimationSub(2);

    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,130);
end;

function onMobFight(mob)
    -- Forms: 0 = Closed  1 = Closed  2 = Open 3 = Closed
    local randomTime = math.random(45,180);
    local changeTime = mob:getLocalVar("changeTime");

    if (mob:getBattleTime() - changeTime > randomTime) then
        -- Change close to open.
        if (mob:AnimationSub() == 1) then
            mob:AnimationSub(2);
        else -- Change from open to close
            mob:AnimationSub(1);
        end
        mob:setLocalVar("changeTime", mob:getBattleTime());
    end
end;

function onMobDeath(mob, killer, npc)
end;

function onMobDespawn(mob)
--[[
    local qm3 = GetNPCByID(Jailer_of_Faith_QM);
    qm3:updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    local qm3position = math.random(1,5);
    qm3:setPos(Jailer_of_Faith_QM_POS[qm3position][1], Jailer_of_Faith_QM_POS[qm3position][2], Jailer_of_Faith_QM_POS[qm3position][3]);

    local qm3 = GetNPCByID(16921029);
    qm3:hideNPC(900);
    local qm3p = math.random(1,5); -- random for next @pos.
    -- print(qm3p)
    if (qm3p == 1) then
        qm3:setPos(-420,0.00,157); -- spawn point 1 "Hume"
        -- printf("Qm3 is at pos 1, jailer death");
    elseif (qm3p == 2) then
        qm3:setPos(-157,0.00,-340); -- spawn point 2 "Elvaan"
        -- printf("Qm3 is at pos 2, jailer death");
    elseif (qm3p == 3) then
        qm3:setPos(-260,0.00,-643); -- spawn point 3 "Galka"
        -- printf("Qm3 is at pos 3, jailer death");
    elseif (qm3p == 4) then
        qm3:setPos(-580,0.00,-642); -- spawn point 4 "Taru"
        -- printf("Qm3 is at pos 4, jailer death");
    elseif (qm3p == 5) then
        qm3:setPos(-682,0.00,-340); -- spawn point 5 "Mithra"
        -- printf("Qm3 is at pos 5, jailer death");
    end
    ]]
end;