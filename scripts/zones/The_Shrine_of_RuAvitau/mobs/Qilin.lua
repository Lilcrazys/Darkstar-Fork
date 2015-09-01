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

function onMobFight(mob, target)
    local XuanWu = mob:getLocalVar("XuanWu");
    local QingLong = mob:getLocalVar("QingLong");
    local BaiHu = mob:getLocalVar("BaiHu");
    local ZhuQue = mob:getLocalVar("ZhuQue");

    if (mob:getHPP() < 90) then
        if (XuanWu == 0) then
            SpawnMob(17261049, 300):updateEnmity(player);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("XuanWu", 1);
        end
    elseif (mob:getHPP() < 70) then
        if (QingLong == 0) then
            SpawnMob(17506683, 300):updateEnmity(player);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("QingLong", 1);
        end
    elseif (mob:getHPP() < 50) then
        if (BaiHu == 0) then
            SpawnMob(17506682, 300):updateEnmity(player);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("BaiHu", 1);
        end
    elseif (mob:getHPP() < 30) then
        if (ZhuQue == 0) then
            SpawnMob(17506684, 300):updateEnmity(player);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("ZhuQue", 1);
        end
    end
end;

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