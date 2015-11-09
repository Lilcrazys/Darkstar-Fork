-----------------------------------
-- Area: ?
-- VWNM: Bismark
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);


    -- addMod
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_CRITHITRATE,25);
    mob:SetMobSkillAttack(true);

end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local popTime = mob:getLocalVar("lastPetPop");

    if (os.time() - popTime > 240) then
        local alreadyPopped = false;
        for Helper = mob:getID()+1, mob:getID()+10 do
            if (alreadyPopped == true) then
                break;
            else
                if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                    SpawnMob(Helper, 300):updateEnmity(target);
                    helper:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
                    mob:setLocalVar("lastPetPop", os.time());
                    alreadyPopped = true;
                end
            end
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(75,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,30);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 1000);
    killer:addExp(10000);
    if (killer:hasKeyItem(HYACINTH_STRATUM_ABYSSITE_II)) then -- Bismark Kill
       killer:completeQuest(OTHER_AREAS, VW_OP_004_BIBIKI_BOMBARDMENT);
       killer:delKeyItem(HYACINTH_STRATUM_ABYSSITE_II);
    end
end;