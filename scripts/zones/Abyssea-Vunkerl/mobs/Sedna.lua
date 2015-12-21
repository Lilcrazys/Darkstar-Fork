-----------------------------------
-- Area: Abyssea - Vunkerl (217)
--  NM:  Sedna
-----------------------------------

require("scripts/zones/Abyssea-Vunkerl/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,110);
    mob:setMod(MOD_MACC,1700);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local CHANCE = 15;
    local SPELL_CHANCE = 40;

    ally:addTitle(SEDNA_TUSKBREAKER);

    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_THE_TUSKED_TERROR) == false) then
        ally:addKeyItem(ATMA_OF_THE_TUSKED_TERROR);
        ally:messageSpecial(6385, ATMA_OF_THE_TUSKED_TERROR);
    end
    if (math.random(0,99) < SPELL_CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(654) == false) then
        ally:addSpell(654);
    end
end;