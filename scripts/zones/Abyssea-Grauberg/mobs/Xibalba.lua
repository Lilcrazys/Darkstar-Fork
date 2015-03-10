-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Xibalba
-----------------------------------
require("scripts/zones/Abyssea-Grauberg/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MATT,25);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_DEF,-100);
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
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 3) or (target:hasStatusEffect(EFFECT_DOOM) == true)) then
        return 0,0,0;
    else
        local duration = 10;
        target:addStatusEffect(EFFECT_DOOM,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_DOOM;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(INDIGO_ABYSSITE_OF_MERIT) == false) then
        killer:addKeyItem(INDIGO_ABYSSITE_OF_MERIT);
        killer:messageSpecial(6385, INDIGO_ABYSSITE_OF_MERIT);
    end
end;

