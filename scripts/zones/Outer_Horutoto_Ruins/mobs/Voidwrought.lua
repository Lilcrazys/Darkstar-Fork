-----------------------------------
-- Area: Outer Horutoto Ruins
-- VWNM: Voidwrought
-- @pos ? ? ? ?
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,80);
    mob:addMod(MOD_ATT,150);

    -- other
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,105);

    -- var
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

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(JADE_STRATUM_ABYSSITE_IV)) then
        if (killer:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
            if (killer:getMaskBit(killer:getVar("VW_3_NATIONS"), 0) == false) then
                killer:setMaskBit(killer:getVar("VW_3_NATIONS"),"VW_3_NATIONS",0,true);
            end
        end
        killer:addKeyItem(JADE_STRATUM_ABYSSITE);
        killer:delKeyItem(JADE_STRATUM_ABYSSITE_IV);
        killer:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE);
    end
    killer:addCurrency("bayld", 125);
    killer:addExp(10000);
end;