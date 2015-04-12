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
    mob:addMod(MOD_DEF,100);
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

    local mobID = mob:getID();
    local mobSkin = mob:getSkinID();
    local mobHPP = mob:getHPP();
    local mobMaxHP = mob:getMaxHP();
    local change = 0;
    local petIDs = {17056170,17056171,17056172,17056173,17056174,17056175,17056176,17056177};
    local petStatus = {GetMobAction(petIDs[1]),GetMobAction(petIDs[2]),GetMobAction(petIDs[3]),GetMobAction(petIDs[4]),GetMobAction(petIDs[5]),GetMobAction(petIDs[6]),GetMobAction(petIDs[7]),GetMobAction(petIDs[8])};

    if(mobHPP <= 15 and change == 14) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1857);
        mob:setLocalVar("change", 15);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 26 and change == 13) then -- Khim and Co.
        mob:changeSkin(14);
        mob:useMobAbility(1770);
        mob:setLocalVar("change", 14);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 28 and change == 12) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1858);
        mmob:setLocalVar("change", 13);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 38 and change == 11) then -- Hydra and Co.
        mob:changeSkin(13);
        mob:useMobAbility(1574);
        mmob:setLocalVar("change", 12);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(21);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 40 and change == 10) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1860);
        mmob:setLocalVar("change", 11);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 50 and change == 9) then -- Cerb and Co.
        mob:changeSkin(12);
        mob:useMobAbility(1534);
        mmob:setLocalVar("change", 10);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(20);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 52 and change == 8) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1861);
        mmob:setLocalVar("change", 9);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 62 and change <= 7) then -- Troll and Co.
        mob:changeSkin(11);
        mob:useMobAbility(1551);
        mmob:setLocalVar("change", 8);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(19);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 64 and change == 6) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1862);
        mmob:setLocalVar("change", 7);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 74 and change <= 5) then -- Lamia and Co.
        mob:changeSkin(10);
        mob:useMobAbility(1557);
        mmob:setLocalVar("change", 6);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(18);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 76 and change == 4) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1863);
        mmob:setLocalVar("change", 5);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 86 and change == 3) then -- Mamool and Co.
        mob:changeSkin(9);
        mob:useMobAbility(1541);
        mmob:setLocalVar("change", 4);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(17);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 88 and change == 2) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1857);
        mmob:setLocalVar("change", 3);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 98 and change == 1) then -- Chariots
        mob:changeSkin(8);
        mob:useMobAbility(1803);
        mmob:setLocalVar("change", 2);
        for i = 1, 8 do
            GetMobByID(petIDs[i]):changeSkin(16);
            if petStatus[i] == 0 then
                SpawnMob(petIDs[i]):updateEnmity(target);
            end
        end
    elseif(mobHPP <= 98 and change == 0) then -- Normal Form
        mob:changeSkin(15);
        mob:useMobAbility(1862);
        mmob:setLocalVar("change", 1);
            GetMobByID(petIDs[i]):changeSkin(22);
            if petStatus[i] == 0 then -- Dead pet, get it up.
                SpawnMob(petIDs[i]):updateEnmity(target);
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

    -- Very much early code.  Couldn't find a way to depop the mob after AF pacts had executed.  As such, doesn't work.
    -- Obviously, you have to move the Avatars to their own family, and give them access to AFlows via a new set of moves.
    -- Might be able to cheat by giving them a copy AFlow (change the name!) that despawns the mob once completed.
    -- Rearranging the skins may be necessary to use this trick efficiently on more SMNs.
    -- Either that, or probably somewhat complex core code.  Avatars may not always be mobid+1.
    -- It wasn't clear if the avatars were a separate pop, or if all dead lamps should revive, go avatar, and AFlow.

    --[[
    ------------------------ Astral Flow Logic ------------------------
    -- Missing the log message for players.  Needs to be handled in the core somehow.
    -- Possibly supposed to use twice per trigger?  Did not check too far on this.  Sounds fun.
    if (mobHP <= (mobMaxHP * 0.75) and target:getMaskBit(PWardenAstralFlows,3) == false) then
        for i=17056178, 17056186 do
            local rannum = math.random(0,7);
            local avatar = GetMobByID(i);
            avatar:changeSkin(23 + rannum); -- Random avatar skin
            SpawnMob(i):updateEnmity(target);
            avatar:useMobAbility(656);
            DespawnMob(i);
        end
        PWardenAstralFlows = PWardenAstralFlows + 4;
        -- 23 = Shiva, 628 Diamond Dust
        -- 24 = Ramuh, 637 Judgement Bolt
        -- 25 = Titan, 601 Earthen Fury
        -- 26 = Ifrit, 592 Inferno
        -- 27 = Leviathan, 610 Tidal Wave
        -- 28 = Garuda, 619 Aerial Blast
        -- 29 = Fenrir, 583 Howling Moon
        -- 30 = Carbuncle, 656 Searing Light
        -- 31 = Diabolos
        -- 646 = wyvern breath.  Need to find diabolos.

    elseif (mobHP <= (mobMaxHP * 0.5) and target:getMaskBit(PWardenAstralFlows,2) == false) then
        for i=17056178, 17056186 do
            local rannum = math.random(0,7);
            local avatar = GetMobByID(i);
            avatar:changeSkin(23 + rannum); -- Random avatar skin
            SpawnMob(i):updateEnmity(target);
            avatar:useMobAbility(656);
            DespawnMob(i);
        end
        PWardenAstralFlows = PWardenAstralFlows + 2;
    elseif (mobHP <= (mobMaxHP * 0.25) and target:getMaskBit(PWardenAstralFlows,1) == false) then
        for i=17056178, 17056186 do
            local rannum = math.random(0,7);
            local avatar = GetMobByID(i);
            avatar:changeSkin(23 + rannum); -- Random avatar skin
            SpawnMob(i):updateEnmity(target);
            avatar:useMobAbility(656);
            DespawnMob(i);
        end
        PWardenAstralFlows = PWardenAstralFlows + 1;
    end
    ]]--

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    -- TODO: Death speech.
    killer:addTitle(PANDEMONIUM_QUELLER);
end;