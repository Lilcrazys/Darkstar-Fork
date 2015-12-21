-----------------------------------
-- Area: ?
-- VWNM: Kaggen
-----------------------------------
package.loaded["scripts/zones/Qufim_Island/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Qufim_Island/TextIDs");
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

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,90);
    mob:SetMobSkillAttack(true);
    mob:setMod(MOD_ACC,1600);

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
    local Boost_Used = mob:getLocalVar("Boost");

    if (mob:getHPP() <= 40) then
        if (Boost_Used == 0) then
            mob:addMod(MOD_EVASION, 100);
            mob:setLocalVar("Boost", 1);
        end
    end

    -- Check for timed depop
    if (os.time(t) > mob:getLocalVar("depopTime")) then
        if (mob:actionQueueEmpty() == true) then
            DespawnMob(mob:getID());

            -- Prevent moronic "bug" reports..
            mob:SpoofChatParty("You take to long, I'm outa here!", MESSAGE_SAY);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 450);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_III)) then -- Kaggen Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_III"), 0) == false) then
            ally:setMaskBit(ally:getVar("WHITE_STRATUM_III"),"WHITE_STRATUM_III",0,true);
        end

        if (ally:getQuestStatus(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_III"),3) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_IV);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_IV);
                ally:setVar("WHITE_STRATUM_III", 0);
            end
        end
    end
end;