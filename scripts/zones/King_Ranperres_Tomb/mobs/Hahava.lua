-----------------------------------
-- Area: KRT
-- VWNM: Hahava
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
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
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
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_QUAD_ATTACK,25);

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
    -- local stance = mob:getLocalVar("stance");  -- Stance 1 = Raksha, Stance 0 = Yaksha

    if (os.time(t) > mob:getLocalVar("depopTime")) then
        if (mob:actionQueueEmpty() == true) then
            DespawnMob(mob:getID());

            -- Prevent moronic "bug" reports..
            mob:SpoofChatParty("You take to long, I'm outa here!", MESSAGE_SAY);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 252) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(252);
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_IV)) then
        if (killer:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
            if (killer:getMaskBit(killer:getVar("VW_3_NATIONS"), 2) == false) then
                killer:setMaskBit(killer:getVar("VW_3_NATIONS"),"VW_3_NATIONS",2,true);
            end
        end
        killer:addKeyItem(CRIMSON_STRATUM_ABYSSITE);
        killer:delKeyItem(CRIMSON_STRATUM_ABYSSITE_IV);
        killer:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE);
    end
    killer:addCurrency("bayld", 125);
    killer:addExp(10000);
end;