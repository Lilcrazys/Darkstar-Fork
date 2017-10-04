-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  MOB: Kirin
-----------------------------------
package.loaded[ "scripts/zones/The_Shrine_of_RuAvitau/TextIDs" ] = nil;
-----------------------------------
require( "scripts/zones/The_Shrine_of_RuAvitau/TextIDs" );
require( "scripts/globals/titles" );
require( "scripts/globals/ability" );
require( "scripts/globals/pets" );
require( "scripts/globals/status" );

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize( mob )
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_WINDRES, -64);
    mob:setLocalVar("numAdds", 1);
end

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight( mob, target )
    if (mob:getHPP() < math.random(50,60) and mob:getLocalVar("astralFlow") == 0) then
        mob:useMobAbility(734);
        -- Spawn Avatar
        mob:spawnPet();
        mob:setLocalVar("astralFlow", 1);
    end
    local numAdds = mob:getLocalVar("numAdds");
    if (mob:getBattleTime() / 180 == numAdds) then
        -- Ensure we have not spawned all pets yet..
        local genbu = mob:getLocalVar("genbu");
        local seiryu = mob:getLocalVar("seiryu");
        local byakko = mob:getLocalVar("byakko");
        local suzaku = mob:getLocalVar("suzaku");

        if (genbu == 1 and seiryu == 1 and byakko == 1 and suzaku == 1) then
            return;
        end

        -- Pick a pet to spawn at random..
        local ChosenPet = nil;
        local newVar = nil;
        repeat

            local rand = math.random( 0, 3 );
            ChosenPet = 17506671 + rand;

            switch (ChosenPet): caseof {
                [17506671] = function (x) if ( genbu == 1) then ChosenPet = 0; else newVar = "genbu";  end end, -- Genbu
                [17506672] = function (x) if (seiryu == 1) then ChosenPet = 0; else newVar = "seiryu"; end end, -- Seiryu
                [17506673] = function (x) if (byakko == 1) then ChosenPet = 0; else newVar = "byakko"; end end, -- Byakko
                [17506674] = function (x) if (suzaku == 1) then ChosenPet = 0; else newVar = "suzaku"; end end, -- Suzaku
            }

        until (ChosenPet ~= 0 and ChosenPet ~= nil)

        -- Spawn the pet..
        local pet = SpawnMob( ChosenPet );
        pet:updateEnmity( target );
        pet:setPos( mob:getXPos(), mob:getYPos(), mob:getZPos() );

        -- Update Kirins extra vars..
        mob:setLocalVar(newVar, 1);
        mob:setLocalVar("numAdds", numAdds + 1);
    end

    -- Ensure all spawned pets are doing stuff..
    for pets = 17506671, 17506674 do
        if (GetMobAction( pets ) == 16) then
            -- Send pet after current target..
            GetMobByID( pets ):updateEnmity( target );
        end
    end
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    -- Award title and cleanup..
    player:addTitle( KIRIN_CAPTIVATOR );
    player:showText( mob, KIRIN_OFFSET + 1 );

    -- Despawn pets..
    DespawnMob( 17506671 );
    DespawnMob( 17506672 );
    DespawnMob( 17506673 );
    DespawnMob( 17506674 );

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

-----------------------------------
-- OnMobDespawn
-----------------------------------

function onMobDespawn( mob )
    -- Despawn pets..
    DespawnMob( 17506671 );
    DespawnMob( 17506672 );
    DespawnMob( 17506673 );
    DespawnMob( 17506674 );
    GetNPCByID( 17506693 ):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end
