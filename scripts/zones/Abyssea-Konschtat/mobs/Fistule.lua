-----------------------------------
-- Area: Abyssea - Konschtat (15)
--  Mob: Fistule
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/abyssea");

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
    mob:setMod(MOD_REGAIN,25);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK,25);
    mob:addMod(MOD_MATT,100);
    mob:addMod(MOD_MACC,200);

    -- temp
    mob:hideName(false);
    mob:untargetable(false);
end;

-----------------------------------
-- OnMobRoam
-----------------------------------

function onMobRoam(mob)
    --[[ Need way to force target these NMs with insta kill TP attack liek retail.
    local BLOODGUZZLER = GetMobByID(16838899);
    local GUIMAUVE = GetMobByID(16838912);

    if (BLOODGUZZLER ~= nil) then
        if (mob:checkDistance(BLOODGUZZLER) < 6) then
            mob:hideName(false);
            mob:untargetable(false);
        end
    end

    if (GUIMAUVE ~= nil) then
        if mob:checkDistance(GUIMAUVE) < 6) then
            mob:hideName(false);
            mob:untargetable(false);
        end
    end
    ]]
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
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(TURBID_SLIME_OIL) == false) then
        ally:addKeyItem(TURBID_SLIME_OIL);
        ally:messageSpecial(6385, TURBID_SLIME_OIL);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_VICISSITUDE) == false) then
        ally:addKeyItem(ATMA_OF_VICISSITUDE);
        ally:messageSpecial(6385, ATMA_OF_VICISSITUDE);
    end
end;