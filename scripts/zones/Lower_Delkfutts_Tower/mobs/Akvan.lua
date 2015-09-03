-----------------------------------
-- Area: ?
-- VWNM: Akvan
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,200);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,75);

    -- Vars
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_STUN) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_STUN,1,0,5);
    end
    return SUBEFFECT_STUN,163,EFFECT_STUN;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 450);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE_III)) then -- Akvan Kill
        if (killer:getMaskBit(killer:getVar("WHITE_STRATUM_III"), 1) == false) then
           killer:setMaskBit(killer:getVar("WHITE_STRATUM_III"),"WHITE_STRATUM_III",1,true);
        end
        if (player:getQuestStatus(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY) == QUEST_COMPLETED) then
            if (killer:isMaskFull(killer:getVar("WHITE_STRATUM_III"),3) == true) then
               killer:addKeyItem(WHITE_STRATUM_ABYSSITE_IV);
               killer:delKeyItem(WHITE_STRATUM_ABYSSITE_III);
               killer:setVar("WHITE_STRATUM_III", 0);
            end
        end
    end
end;