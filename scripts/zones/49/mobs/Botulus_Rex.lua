-----------------------------------
-- Area: VoiddWatch NM
-- NPC: Botulus Rex
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

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
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,105);


    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_DMGPHYS,-25);
    mob:addMod(MOD_DMGMAGIC,64);
    mob:SetMobSkillAttack(true);
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
    local Book_2hr_Used = mob:getLocalVar("Book_2hr");

    -- if (os.time(t) > mob:getLocalVar("depopTime")) then
       -- DespawnMob(mob:getID());
    -- end
    if (mob:getHPP() <= 80) then
        if (Book_2hr_Used == 0) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Book_2hr", 1);
        end
    elseif (mob:getHPP() <= 60) then
        if (Book_2hr_Used == 1) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Book_2hr", 2);
        end
    elseif (mob:getHPP() <= 40) then
        if (Book_2hr_Used == 2) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Book_2hr", 3);
        end
    elseif (mob:getHPP() <= 20) then
        if (Book_2hr_Used == 3) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Book_2hr", 4);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;