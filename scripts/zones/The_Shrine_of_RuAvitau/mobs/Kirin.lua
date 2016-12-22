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
        local Chance1 = math.random(1,100); -- Weapon should be 50% chance
        local Chance2 = math.random(1,1000); -- Cape should be 50% Chance
        local Weapon = math.random(1,5); -- Selects 1 of 5 different 252 skill weapons
        local Cape = math.random(1,6); -- Selects 1 of 6 capes

            if (Chance1 <= 50) then
                if (Weapon == 1) then
                    player:addTreasure(21176, mob); -- Ngqoqwanb
                elseif (Weapon == 2) then
                    player:addTreasure(21052, mob); -- Tsurumaru
                elseif (Weapon == 3) then
                    player:addTreasure(20997, mob); -- Raimitsukane
                elseif (Weapon == 4) then
                    player:addTreasure(20762, mob); -- Ukudyoni  
                elseif (Weapon == 5) then
                    player:addTreasure(20616, mob); -- Ipetam
                end
            end

        if (Chance2 <= 450) then
            if (Cape == 1) then
                player:addTreasure(28614, mob); -- Iximulew Cape
            elseif (Cape == 2) then
                player:addTreasure(28615, mob); -- Toro Cape
            elseif (Cape == 3) then
                player:addTreasure(28611, mob); -- Tuilha Cape
            elseif (Cape == 4) then
                player:addTreasure(28613, mob); -- Kayapa Cape
            elseif (Cape == 5) then
                player:addTreasure(28610, mob); -- Ik Cape
            elseif (Cape == 6) then
                player:addTreasure(28612, mob); -- Buquwik Cape
            end
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
