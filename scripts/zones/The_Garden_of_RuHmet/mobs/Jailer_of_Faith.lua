-----------------------------------
-- Area: The Garden of Ru'Hmet
-- NPC:  Jailer_of_Faith
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, npc)

    local qm3 = GetNPCByID(16921029);
    qm3:hideNPC(900);
    local qm3p = math.random(1,5); -- random for next @pos.
          -- print(qm3p)
                if (qm3p == 1) then
                    qm3:setPos(-420,0.00,157); -- spawn point 1 "Hume"
                        --printf("Qm3 is at pos 1, jailer death");
                elseif (qm3p == 2) then
                       qm3:setPos(-157,0.00,-340); -- spawn point 2 "Elvaan"
                        --printf("Qm3 is at pos 2, jailer death");
                elseif (qm3p == 3) then
                        qm3:setPos(-260,0.00,-643); -- spawn point 3 "Galka"
                        --printf("Qm3 is at pos 3, jailer death");
                elseif (qm3p == 4) then
                        qm3:setPos(-580,0.00,-642); -- spawn point 4 "Taru"
                        --printf("Qm3 is at pos 4, jailer death");
                elseif (qm3p == 5) then
                        qm3:setPos(-682,0.00,-340); -- spawn point 5 "Mithra"
                        --printf("Qm3 is at pos 5, jailer death");
                end
end;



