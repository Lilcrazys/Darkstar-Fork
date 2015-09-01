-----------------------------------
-- Area: EDIT ME
-- VWNM: ME TO
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 35);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,150);
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
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- var
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
    if (os.time(t) > depopTime) then
       DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 650);
    killer:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);

    if (killer:hasKeyItem(ASHEN_STRATUM_ABYSSITE_II)) then -- Mimic King Kill
        if (killer:getMaskBit(killer:getVar("ASHEN_STRATUM_II"), 2) == false) then
           killer:setMaskBit(killer:getVar("ASHEN_STRATUM_II"),"ASHEN_STRATUM_II",2,true);
        end
        if (killer:isMaskFull(killer:getVar("ASHEN_STRATUM_II"),3) == true) then
           killer:addKeyItem(ASHEN_STRATUM_ABYSSITE_III);
           killer:delKeyItem(ASHEN_STRATUM_ABYSSITE_II);
           killer:setVar("ASHEN_STRATUM_II", 0);
        end
    end;
end;