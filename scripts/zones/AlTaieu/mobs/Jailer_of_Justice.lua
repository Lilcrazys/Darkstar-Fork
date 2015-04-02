-----------------------------------
-- Area: Al'Taieu
-- NPC:  Jailer of Hope
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);

    -- addMod
    mob:addMod(MOD_MDEF,20);

end;

-----------------------------------
-- onMobFight Action
-----------------------------------
function onMobFight(mob, target)
    if  (TIMER >= (TIMER + 30)) then  -- dont know what to do here.. need to get set a var for last pop time


        -- Make sure pets arent up
        local PET1 = GetMobAction(16912840);
        local PET2 = GetMobAction(16912841);
        local PET3 = GetMobAction(16912842);
        local PET4 = GetMobAction(16912843);
        local PET5 = GetMobAction(16912844);
        local PET6 = GetMobAction(16912845);
        local TIMER = nil;

        if (PET1 = ACTION and PET2 = ACTION and PET3 = ACTION and PET4 = ACTION and PET5 = ACTION and PET6 = ACTION) then
            return;
        end



        local ChosenPet = nil;
        local Popped = nil;
        repeat

            switch (ChosenPet): caseof {
                [16912840] = function (x) if (PET1 = ACTION) then ChosenPet = 0; else Popped = "P1"; end end,
                [16912841] = function (x) if (PET2 = ACTION) then ChosenPet = 0; else Popped = "P2"; end end,
                [16912842] = function (x) if (PET3 = ACTION) then ChosenPet = 0; else Popped = "P3"; end end,
                [16912843] = function (x) if (PET4 = ACTION) then ChosenPet = 0; else Popped = "P4"; end end,
                [16912844] = function (x) if (PET5 = ACTION) then ChosenPet = 0; else Popped = "P5"; end end,
                [16912845] = function (x) if (PET6 = ACTION) then ChosenPet = 0; else Popped = "P6"; end end,
            }

        until (GetMobAction(16912839) == ACTION_NONE) -- JoJ is dead

        -- Spawn the pet..
        local pet = SpawnMob(ChosenPet);
        pet:updateEnmity(target);
        pet:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());

        -- Update extra vars..
        mob:setLocalVar(Popped, 1);
        mob:setLocalVar(TIMER, 1);
    end

    -- Ensure all spawned pets are doing stuff..
    for pets = 16912840, 16912845 do
        if (GetMobAction(pets) == 16) then
            -- Send pet after current target..
            GetMobByID(pets):updateEnmity(target);
        end
    end
end
-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if (target:hasStatusEffect(EFFECT_POISON)) then
        target:delStatusEffect(EFFECT_POISON);
    end

    duration = 10 * applyResistanceAddEffect(mob, target, ELE_WATER, EFFECT_POISON)
    utils.clamp(duration,1,30);
    target:addStatusEffect(EFFECT_POISON, 50, 3, duration);
    mob:resetEnmity(target);
    return SUBEFFECT_POISON, 160, EFFECT_POISON;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;