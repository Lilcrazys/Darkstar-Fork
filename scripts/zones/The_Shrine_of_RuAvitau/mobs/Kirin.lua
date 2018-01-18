-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  MOB: Kirin
-----------------------------------
package.loaded["scripts/zones/The_Shrine_of_RuAvitau/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/The_Shrine_of_RuAvitau/TextIDs");
require("scripts/zones/The_Shrine_of_RuAvitau/MobIDs");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/titles");

function onMobInitialize( mob )
    mob:setMobMod(MOBMOD_IDLE_DESPAWN, 180);
end

function onMobSpawn(mob)
    mob:setMod(MOD_WINDRES, -64);
    mob:setLocalVar("numAdds", 1);
end

function onMobFight( mob, target )

    -- use astral flow
    if (mob:getHPP() < math.random(50,60) and mob:getLocalVar("astralFlow") == 0) then
        mob:useMobAbility(734);
        mob:spawnPet();
        mob:setLocalVar("astralFlow", 1);
    end

    -- spawn gods
    local numAdds = mob:getLocalVar("numAdds");
    if (mob:getBattleTime() / 180 == numAdds) then
        local godsRemaining = {};
        for i = 1, 4 do
            if (mob:getLocalVar("add"..i) == 0) then
                table.insert(godsRemaining,i);
            end
        end
        if (#godsRemaining > 0) then
            local g = godsRemaining[math.random(#godsRemaining)];
            local god = SpawnMob(KIRIN + g);
            god:updateEnmity(target);
            god:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("add"..g, 1);
            mob:setLocalVar("numAdds", numAdds + 1);
        end
    end

    -- ensure all spawned pets are doing stuff
    for i = KIRIN + 1, KIRIN + 4 do
        local god = GetMobByID(i);
        if (god:getCurrentAction() == ACTION_ROAMING) then
            god:updateEnmity(target);
        end
    end
end

function onMobDeath(mob, player, isKiller)
    player:addTitle( KIRIN_CAPTIVATOR );
    player:showText( mob, KIRIN_OFFSET + 1 );
    for i = KIRIN + 1, KIRIN + 4 do
        DespawnMob(i);
    end;

    if (isKiller == true) then
      --[[ How to not screw up when you random number generate:
        When math.random() is called with no argument it generates a value between 0 and 1, for example: 0.0012512588885159
        When called with 2 arguments such as math.random(arg1,arg2) it will generate from arg1 to arg2 and can be exactly the value of either arg.
        Note that in DSP this is not the normal lua random it is the C++ Dimensionally Equidistributed Uniform Pseudorandom Number Generator
        std::mt19937 aka mersenne twister https://en.wikipedia.org/wiki/Mersenne_twister
        Downside: mt19937 can't work miracles, needs given a good see. Low quality seed can result in things like not ever resulting in a specific number.
        But it is normally "good enough". Doesn't need to be perfect. The code below has been tested: every item is has a fair enough rate.
        Remember that putting math.random(1,100) < 7 DOES NOT mean that whatever items you place here has exactly 7% chance of dropping.
        Even if your 1st check is 7 out of 100, if you have additional checks after it you are lowering that items chances of appearing.
        That is NOT the random number generators fault if you stuff a dozen items inside multiple layers of random checks.
      ]]
        local typeSelect = math.random(); -- 50/50 chance: weapon or cape
        local bonusDrop = math.random(); -- Give player a  2ndshot at a drop
        local weaponTable =
        {
            -- 5 different 252 skill weapons
            [1] = 20616, -- Ipetam
            [2] = 20762, -- Ukudyoni  
            [3] = 20997, -- Raimitsukane
            [4] = 21052, -- Tsurumaru
            [5] = 21176  -- Ngqoqwanb
        }
        local capeTable =
        {
            -- 6 different JSE capes
            [1] = 28610, -- Ik Cape
            [2] = 28611, -- Tuilha Cape
            [3] = 28612, -- Buquwik Cape
            [4] = 28613, -- Kayapa Cape
            [5] = 28614, -- Iximulew Cape
            [6] = 28615  -- Toro Cape
        }
        -- If main RNG value is low, it's a weapon, else a JSE cape. Since there is always 1 of the two, the bonus will offer the opposite item.
        if (typeSelect <= 0.50 or bonusDrop > 0.66) then
            player:addTreasure(weaponTable[math.random(1,5)], mob);
        end

        if (typeSelect > 0.50 or bonusDrop <= 0.33) then
            player:addTreasure(capeTable[math.random(1,6)], mob);
        end
    end
end

function onMobDespawn( mob )
    for i = KIRIN + 1, KIRIN + 4 do
        DespawnMob(i);
    end;
    GetNPCByID(KIRIN_QM):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end
