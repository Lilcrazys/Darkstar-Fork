-----------------------------------
-- Area: Quicksand Caves
--  MOB: Tribunus_IV-XIV
-- Pops in Bastok mission 8-1 "The Chains that Bind Us"
-----------------------------------
package.loaded["scripts/zones/Quicksand_Caves/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Quicksand_Caves/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------
function onMobSpawn(mob)

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(3588,4748,100); 
        SetDropRate(3588,4771,0);
        SetDropRate(3588,5503,0);
        SetDropRate(3588,5504,0);
        SetDropRate(3588,6061,0);
    elseif (RND1 == 2) then
        SetDropRate(3588,4748,0);
        SetDropRate(3588,4771,100);
        SetDropRate(3588,5503,0); 
        SetDropRate(3588,5504,0); 
        SetDropRate(3588,6061,0); 
    elseif (RND1 == 3) then
        SetDropRate(3588,4748,0); 
        SetDropRate(3588,4771,0); 
        SetDropRate(3588,5503,100); 
        SetDropRate(3588,5504,0); 
        SetDropRate(3588,6061,0); 
    elseif (RND1 == 4) then
        SetDropRate(3588,4748,0); 
        SetDropRate(3588,4771,0); 
        SetDropRate(3588,5503,0); 
        SetDropRate(3588,5504,100); 
        SetDropRate(3588,6061,0); 
    elseif (RND1 == 5) then
        SetDropRate(3588,4748,0); 
        SetDropRate(3588,4771,0); 
        SetDropRate(3588,5503,0); 
        SetDropRate(3588,5504,0); 
        SetDropRate(3588,6061,100);   
    end   

end;

-----------------------------------
-- onMobDisengage Action
-----------------------------------
function onMobDisengage(mob)
    -- printf("Disengaging Triarius");
    local self = mob:getID();
    DespawnMob(self, 120);
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------
function onMobDeath(mob,killer,ally)
    if (ally:getCurrentMission(BASTOK) == THE_CHAINS_THAT_BIND_US and ally:getVar("MissionStatus") == 1) then
        SetServerVariable("Bastok8-1LastClear", os.time());
    end
end;

-----------------------------------
-- onMobDespawn Action
-----------------------------------
function onMobDespawn(mob)
    -- printf("Despawning Triarius");
    local mobsup = GetServerVariable("BastokFight8_1");
    SetServerVariable("BastokFight8_1",mobsup - 1);

    if (GetServerVariable("BastokFight8_1") == 0) then
        local npc = GetNPCByID(17629734); -- qm6
        npc:setStatus(0); -- Reappear
    end
end;