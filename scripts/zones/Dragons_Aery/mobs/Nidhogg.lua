-----------------------------------
-- Area: Dragons Aery
--  HNM: Nidhogg
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 2);

    -- addMod
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local battletime = mob:getBattleTime();
    local twohourTime = mob:getLocalVar("twohourTime");

    if (twohourTime == 0) then
        mob:setLocalVar("twohourTime",math.random(30,90));
    end

    if (battletime >= twohourTime) then
        mob:useMobAbility(700);
        -- technically aerial hurricane wing, but I'm using 700 for his two hour
        --(since I have no inclination to spend millions on a PI to cap one name you never see)
        mob:setLocalVar("twohourTime",battletime + math.random(60,120));
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local SPELL_ID = 738;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(SPELL_ID) == false) then
        ally:addSpell(SPELL_ID);
    end

    ally:addTitle(NIDHOGG_SLAYER);

    -- Set Nidhogg's Window Open Time
    if (LandKingSystem_HQ ~= 1) then
        local wait = 72 * 3600;
        SetServerVariable("[POP]Nidhogg", os.time(t) + wait); -- 3 days
        if (LandKingSystem_HQ == 0) then -- Is time spawn only
            DeterMob(mob:getID(), true);
        end
    end

    -- Set Fafnir's spawnpoint and respawn time (21-24 hours)
    if (LandKingSystem_NQ ~= 1) then
        local Fafnir = mob:getID()-1;
        SetServerVariable("[PH]Nidhogg", 0);
        DeterMob(Fafnir, false);
        UpdateNMSpawnPoint(Fafnir);
        GetMobByID(Fafnir):setRespawnTime(math.random(21600,32400));
    end


    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, RELIC, 5);
    end

end;