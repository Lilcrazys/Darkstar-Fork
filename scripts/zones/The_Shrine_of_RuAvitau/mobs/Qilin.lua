-----------------------------------
-- Area: ?
-- VWNM:
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,25);
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

end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local XuanWu = mob:getLocalVar("XuanWu");
    local QingLong = mob:getLocalVar("QingLong");
    local BaiHu = mob:getLocalVar("BaiHu");
    local ZhuQue = mob:getLocalVar("ZhuQue");

    if (mob:getHPP() < 90) then
        if (XuanWu == 0) then
            SpawnMob(17506685):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("XuanWu", 1);
        end
    elseif (mob:getHPP() < 70) then
        if (QingLong == 0) then
            SpawnMob(17506683):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("QingLong", 1);
        end
    elseif (mob:getHPP() < 50) then
        if (BaiHu == 0) then
            SpawnMob(17506682):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("BaiHu", 1);
        end
    elseif (mob:getHPP() < 30) then
        if (ZhuQue == 0) then
            SpawnMob(17506684):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("ZhuQue", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);
    DespawnMob(mob:getID()+3);
    DespawnMob(mob:getID()+4);

    if (isKiller == true) then
        local RND1 = math.random(1,8);
        if (RND1 == 1) then
            player:addTreasure(8919, mob); -- Ifritear
        elseif (RND1 == 2) then
            player:addTreasure(8920, mob); -- Leviatear
        elseif (RND1 == 3) then
            player:addTreasure(8921, mob); -- Ramutear
        elseif (RND1 == 4) then
            player:addTreasure(8922, mob); -- Garutear
        elseif (RND1 == 5) then
            player:addTreasure(8923, mob); -- Titatear
        elseif (RND1 == 6) then
            player:addTreasure(8924, mob); -- Shivatear
        elseif (RND1 == 7) then
            player:addTreasure(8925, mob); -- Carbutear
        elseif (RND1 == 8) then
            player:addTreasure(8926, mob); -- Fenritear
        end
    end

    if (player:hasKeyItem(ASHEN_STRATUM_ABYSSITE_III)) then -- Qilin Kill
        if (player:getMaskBit(player:getVar("ZILART_VW"), 1) == false) then
            player:setMaskBit(player:getVar("ZILART_VW"),"ZILART_VW",1,true);
        end

        if (player:isMaskFull(player:getVar("ZILART_VW"),3) == true) then
            player:completeQuest(OUTLANDS, SKYWARD_HO_VOIDWATCHER);
            player:addKeyItem(ASHEN_STRATUM_ABYSSITE); -- Cycle back to T1, add questCompleted check here later.
            player:delKeyItem(ASHEN_STRATUM_ABYSSITE_III);
            player:setVar("ZILART_VW",0);
        end
    end

    player:addCurrency("bayld", 750);
    player:addExp(3000);
end;