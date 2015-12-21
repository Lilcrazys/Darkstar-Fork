-----------------------------------
-- Area: ?
-- VWNM: Lancing Lamorak
-----------------------------------
package.loaded["scripts/zones/West_Ronfaure/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/West_Ronfaure/TextIDs");
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
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
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
    local SHADOWCOUNT = math.random(10,14);
    mob:addStatusEffect(EFFECT_BLINK, SHADOWCOUNT, 0, 0);
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

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 300);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_IV)) then -- Lancing Lamorak Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_IV"), 0) == false) then
            ally:setMaskBit(ally:getVar("WHITE_STRATUM_IV"),"WHITE_STRATUM_IV",0,true);
        end

        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_IV"),3) == true) then
            ally:addKeyItem(WHITE_STRATUM_ABYSSITE_V);
            ally:delKeyItem(WHITE_STRATUM_ABYSSITE_IV);
            ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
            ally:setVar("WHITE_STRATUM_IV", 0);
        end
    end;
end;