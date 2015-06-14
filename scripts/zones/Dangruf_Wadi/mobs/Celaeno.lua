-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Lorbulcrud
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


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
    mob:setMod(MOD_MATT,125);


    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,250);
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
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
    local Paramount_Harpeia_2hr_Used = 0;
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end

    if (mob:getLocalVar("Paramount_Harpeia_2hr_Used") ~= nil) then
        Paramount_Harpeia_2hr_Used = mob:getLocalVar("Paramount_Harpeia_2hr_Used");
    end

    if (mob:getHPP() <= 15) then
        if (Paramount_Harpeia_2hr_Used == 2) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Paramount_Harpeia_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 40) then
        if (Paramount_Harpeia_2hr_Used == 1) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Paramount_Harpeia_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Paramount_Harpeia_2hr_Used == 0) then
            mob:useMobAbility(433); -- Ben
            mob:setLocalVar("Paramount_Harpeia_2hr_Used", 1);
        end
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    if (killer:hasKeyItem(INDIGO_STRATUM_ABYSSITE_IV)) then -- Celano Kill
        if  (killer:getMaskBit(killer:getVar("INDIGO_STRATUM_IV"), 1) == false) then
	       killer:setMaskBit(killer:getVar("INDIGO_STRATUM_IV"),"INDIGO_STRATUM_IV",1,true);
        end
    end
    killer:addCurrency("bayld", 125);
    killer:addExp(10000);
end;