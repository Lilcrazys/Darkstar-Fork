-----------------------------------
-- Area: ?
-- VWNM: Lorbulcrud
-- @pos ? ? ? ?
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
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
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_QUAD_ATTACK,25);

    -- Vars
    mob:setLocalVar("depopTimer", os.time());
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
    local stance = mob:getLocalVar("stance");  -- Stance 1 = Raksha, Stance 0 = Yaksha

    if (os.time() - mob:getLocalVar("depopTimer") > 1800) then
        -- despawn in 30 min
        DespawnMob(mob:getID());
        break;
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
    if (player:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
        if (killer:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_IV)) then
            if (killer:getMaskBit(killer:getVar("VW_3_NATIONS"), 2) == false) then
               killer:setMaskBit(killer:getVar("VW_3_NATIONS"),"VW_3_NATIONS",2,true);
            end
        end
    end
    killer:addCurrency("bayld", 125);
    killer:addExp(10000);
end;