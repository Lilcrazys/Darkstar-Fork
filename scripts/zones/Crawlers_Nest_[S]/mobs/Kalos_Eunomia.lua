-----------------------------------
-- Area: EDIT ME
-- VWNM: Kalos Eunomia
-----------------------------------
package.loaded["scripts/zones/Crawlers_Nest_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Crawlers_Nest_[S]/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- setMod
    mob:setMod(MOD_REGEN, 120);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,1950); -- todo: convert to proper amount of addMod
    mob:setMod(MOD_MATT,100);  -- todo: convert to proper amount of addMod

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,10) > 4 or target:hasStatusEffect(EFFECT_ADDLE) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_ADDLE,10,0,10);
    end

    return SUBEFFECT_PARALYSIS,MSGBASIC_ADD_EFFECT_STATUS,EFFECT_ADDLE;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Kalos Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_II"), 3) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",3,true);
        end

        if (ally:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_II"),6) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                ally:setVar("WHITE_STRATUM_II", 0);
                ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_III);
            end
        end
    end

    ally:addCurrency("bayld", 200);
    ally:addExp(10000);
end;
