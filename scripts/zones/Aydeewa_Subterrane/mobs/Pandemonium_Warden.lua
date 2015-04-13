-----------------------------------
-- Area:
-- NPC:  Pandemonium_Warden
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 300);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 30);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,150);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
end;
-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)

    local mobHPP = mob:getHPP();
    local change = 0;
    local petIDs = {17056170,17056171,17056172,17056173,17056174,17056175,17056176,17056177};
    local petStatus = {GetMobAction(petIDs[1]),GetMobAction(petIDs[2]),GetMobAction(petIDs[3]),GetMobAction(petIDs[4]),GetMobAction(petIDs[5]),GetMobAction(petIDs[6]),GetMobAction(petIDs[7]),GetMobAction(petIDs[8])};

    if(mobHPP <= 15 and change == 13) then -- Final Form, pets take Dvger form as well
        mob:changeSkin(15);
        mob:useMobAbility(1857);
        mob:setLocalVar("change", 14);
        for i = 1,8 do
            GetMobByID(petIDs[i]):changeSkin(15);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 26 and change == 12) then -- Khim and Co.
        mob:changeSkin(14);
        mob:useMobAbility(1770);
        mob:setLocalVar("change", 13);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 28 and change == 11) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1858);
        mmob:setLocalVar("change", 12);
    elseif(mobHPP <= 38 and change == 10) then -- Hydra and Co.
        mob:changeSkin(13);
        mob:useMobAbility(1574);
        mmob:setLocalVar("change", 11);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(21);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 40 and change == 9) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1860);
        mmob:setLocalVar("change", 10);
    elseif(mobHPP <= 50 and change == 8) then -- Cerb and Co.
        mob:changeSkin(12);
        mob:useMobAbility(1534);
        mmob:setLocalVar("change", 9);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(20);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 52 and change == 7) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1861);
        mmob:setLocalVar("change", 8);
    elseif(mobHPP <= 62 and change == 6) then -- Troll and Co.
        mob:changeSkin(11);
        mob:useMobAbility(1551);
        mmob:setLocalVar("change", 7);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(19);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 64 and change == 5) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1862);
        mmob:setLocalVar("change", 6);
    elseif(mobHPP <= 74 and change == 4) then -- Lamia and Co.
        mob:changeSkin(10);
        mob:useMobAbility(1557);
        mmob:setLocalVar("change", 5);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(18);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 76 and change == 3) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1863);
        mmob:setLocalVar("change", 4);
    elseif(mobHPP <= 86 and change == 2) then -- Mamool and Co.
        mob:changeSkin(9);
        mob:useMobAbility(1541);
        mmob:setLocalVar("change", 3);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(17);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 88 and change == 1) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1857);
        mmob:setLocalVar("change", 2);
    elseif(mobHPP <= 98 and change == 0) then -- Chariots
        mob:changeSkin(8);
        mob:useMobAbility(1803);
        mmob:setLocalVar("change", 1);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(16);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    end



    ------------------------ Keep pets active ------------------------
    -- Pets probably shouldn't despawn for this, but proof otherwise should remove this code.

    for i = 1, 8 do
        if (petStatus[i] == 16 or petStatus[i] == 18) then -- idle or disengaging pet
            GetMobByID(petIDs[i]):updateEnmity(target);
        end
    end

    ------------------------ Despawn timer ------------------------
    if (os.time(t) > PWardenDespawnTime) then
        for i=17056170, 17056186 do
            DespawnMob(i);
        end
            printf("Timer expired at %i.  Despawning Pandemonium Warden.",PWardenDespawnTime);
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    -- local SPELL_ID = 742; -- Passing BLU Spell Bilgestorm once fixed
    -- local CHANCE = 15;
    -- if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(SPELL_ID) == false) then
        -- killer:addSpell(SPELL_ID);
    -- end

    mob:SpoofChatParty("This is the end. . .of nothing. . .Defeating me proves only that you harbor the seeds of evil within your trembling flesh. . .Someday. . .they shall come. . .into fruition. . .", MESSAGE_SAY)
    -- killer:addTitle(PANDEMONIUM_QUELLER); -- Not adding until after testing is done
end;