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
    -- mob:changeSkin(1839);
    -- setMod
    mob:setMod(MOD_REGEN, 300);
    mob:setMod(MOD_REFRESH, 250);
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
    -- GetMobByID(petIDs[i]):changeSkin(1841);
    -- SpawnMob(petIDs[i]):updateEnmity(target);
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
        -- mob:changeSkin(1839);
        mob:setLocalVar("change", 14);
        mob:useMobAbility(1857);
        for i = 1,8 do
            GetMobByID(petIDs[i]):changeSkin(15);
            -- GetMobByID(petIDs[i]):changeSkin(1840);
            if petStatus[i] == 0 then -- Dead pet, get it up.
               SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 26 and change == 12) then -- Khim and Co.
        mob:changeSkin(14);
        -- mob:changeSkin(1805);
        mob:setLocalVar("change", 13);
        mob:useMobAbility(1770);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(22);
            -- GetMobByID(petIDs[i]):changeSkin(1746);
            if petStatus[i] == 0 then -- Dead pet, get it up.
               SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 28 and change == 11) then -- Normal Form
        mob:changeSkin(15);
        -- mob:changeSkin(1839);
        mob:setLocalVar("change", 12);
        mob:useMobAbility(1858);
    elseif(mobHPP <= 38 and change == 10) then -- Hydra and Co.
        mob:changeSkin(13);
        -- mob:changeSkin(1796);
        mob:setLocalVar("change", 11);
        mob:useMobAbility(1574);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(21);
            -- GetMobByID(petIDs[i]):changeSkin(421);
            if petStatus[i] == 0 then
               SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 40 and change == 9) then -- Normal Form
        mob:changeSkin(15);
        -- mob:changeSkin(1839);
        mob:setLocalVar("change", 10);
        mob:useMobAbility(1860);
    elseif(mobHPP <= 50 and change == 8) then -- Cerb and Co.
        mob:changeSkin(12);
        -- mob:changeSkin(1793);
        mob:setLocalVar("change", 9);
        mob:useMobAbility(1534);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(20);
            -- GetMobByID(petIDs[i]):changeSkin(281);
            if petStatus[i] == 0 then
               SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 52 and change == 7) then -- Normal Form
        mob:changeSkin(15);
        -- mob:changeSkin(1839);
        mob:setLocalVar("change", 8);
        mob:useMobAbility(1861);
    elseif(mobHPP <= 62 and change == 6) then -- Troll and Co.
        mob:changeSkin(11);
        -- mob:changeSkin(1867);
        mob:setLocalVar("change", 7);
        mob:useMobAbility(1551);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(19);
            -- GetMobByID(petIDs[i]):changeSkin(1680);
            if petStatus[i] == 0 then
               SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 64 and change == 5) then -- Normal Form
        mob:changeSkin(15);
        -- mob:changeSkin(1839);
        mob:setLocalVar("change", 6);
        mob:useMobAbility(1862);
    elseif(mobHPP <= 74 and change == 4) then -- Lamia and Co.
        mob:changeSkin(10);
        -- mob:changeSkin(1865);
        mob:setLocalVar("change", 5);
        mob:useMobAbility(1557);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(18);
            -- GetMobByID(petIDs[i]):changeSkin(1643);
            if petStatus[i] == 0 then
               SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 76 and change == 3) then -- Normal Form
        mob:changeSkin(15);
        -- mob:changeSkin(1839);
        mob:setLocalVar("change", 4);
        mob:useMobAbility(1863);
    elseif(mobHPP <= 86 and change == 2) then -- Mamool and Co.
        mob:changeSkin(9);
        -- mob:changeSkin(1863);
        mob:setLocalVar("change", 3);
        mob:useMobAbility(1541);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(17);
            -- GetMobByID(petIDs[i]):changeSkin(1639);
            if petStatus[i] == 0 then
               SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 88 and change == 1) then -- Normal Form
        mob:changeSkin(15);
        -- mob:changeSkin(1839);
        mob:setLocalVar("change", 2);
        mob:useMobAbility(1857);
    elseif(mobHPP <= 98 and change == 0) then -- Chariots
        mob:changeSkin(8);
        -- mob:changeSkin(1825);
        mob:setLocalVar("change", 1);
        mob:useMobAbility(1803);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(16);
            -- GetMobByID(petIDs[i]):changeSkin(1820);
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

    -- mob:SpoofChatParty("This is the end. . .of nothing. . .", MESSAGE_SAY)
    -- mob:SpoofChatParty("Defeating me proves only that you harbor the seeds of evil within your trembling flesh. . .", MESSAGE_SAY)
    -- mob:SpoofChatParty("Someday. . .they shall come. . .into fruition. . .", MESSAGE_SAY)
    -- killer:addTitle(PANDEMONIUM_QUELLER); -- Not adding until after testing is done
end;