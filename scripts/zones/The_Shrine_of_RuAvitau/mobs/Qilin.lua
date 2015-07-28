-----------------------------------
-- Area: ?
-- VWNM:
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);


    -- addMod
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight( mob, target )

    if (mob:getBattleTime() ~= 0 and mob:getHPP() < 90) then
        -- Ensure we have not spawned all pets yet..
        local XuanWu = mob:getLocalVar("XuanWu");
        local QingLong = mob:getLocalVar("QingLong");
        local BaiHu = mob:getLocalVar("BaiHu");
        local ZhuQue = mob:getLocalVar("ZhuQue");

        if (XuanWu == 1 and QingLong == 1 and BaiHu == 1 and ZhuQue == 1) then
            return;
        end

        -- Pick a pet to spawn at random..
        local ChosenPet = nil;
        local newVar = nil;
        repeat

            local rand = math.random( 0, 3 );
            ChosenPet = 17506682 + rand;

            switch (ChosenPet): caseof {
                [17506685] = function (x) if ( XuanWu == 1) then ChosenPet = 0; else newVar = "XuanWu";  end end, -- XuanWu
                [17506683] = function (x) if (QingLong == 1) then ChosenPet = 0; else newVar = "QingLong"; end end, -- QingLong
                [17506682] = function (x) if (BaiHu == 1) then ChosenPet = 0; else newVar = "BaiHu"; end end, -- BaiHu
                [17506684] = function (x) if (ZhuQue == 1) then ChosenPet = 0; else newVar = "ZhuQue"; end end, -- ZhuQue
            }

        until (ChosenPet ~= 0 and ChosenPet ~= nil)

        -- Spawn the pet..
        local pet = SpawnMob( ChosenPet );
        pet:updateEnmity( target );
        pet:setPos( mob:getXPos(), mob:getYPos(), mob:getZPos() );

        mob:setLocalVar(newVar, 1);
    end

    -- Ensure all spawned pets are doing stuff..
    for pets = 17506682, 17506685 do
        if (GetMobAction( pets ) == 16) then
            GetMobByID( pets ):updateEnmity( target );
        end
    end
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 750);
    killer:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);
    DespawnMob(mob:getID()+3);
    DespawnMob(mob:getID()+4);

    if (killer:hasKeyItem(ASHEN_STRATUM_ABYSSITE_III)) then -- Qilin Kill
        if (killer:getMaskBit(killer:getVar("ZILART_VW"), 1) == false) then
	       killer:setMaskBit(killer:getVar("ZILART_VW"),"ZILART_VW",1,true);
        end
        if (killer:isMaskFull(killer:getVar("ZILART_VW"),3) == true) then
           killer:delKeyItem(ASHEN_STRATUM_ABYSSITE_III);
        end
    end
end;