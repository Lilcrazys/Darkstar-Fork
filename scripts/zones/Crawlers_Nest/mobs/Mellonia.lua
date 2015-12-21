-----------------------------------
-- Area: EDIT ME
-- VWNM: Mellonia
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,30);
    mob:addMod(MOD_DEF,80);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,80);

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
    local Gnat_2hr_Used = mob:getLocalVar("Gnat_2hr")

    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end

    if (mob:getHPP() <= 40) then
        if (Gnat_2hr_Used == 0) then
            mob:useMobAbility(436); -- Chainspell
            mob:setLocalVar("Gnat_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    local RND = math.random(1,3);
    local EFFECT = EFFECT_NONE;

    if (RND == 1) then
        EFFECT = EFFECT_AMNESIA;
        target:addStatusEffect(EFFECT_AMNESIA,1,0,10);
    elseif (RND == 2) then
        EFFECT = EFFECT_SILENCE;
        target:addStatusEffect(EFFECT_SILENCE,1,0,10);
    elseif (RND == 3) then
        EFFECT = EFFECT_BIO;
        target:addStatusEffect(EFFECT_BIO,100,3,5);
    end

    return SUBEFFECT_POISON,163,EFFECT;
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 200);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Mellonia Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_II"), 2) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",2,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_II"),6) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                ally:setVar("WHITE_STRATUM_II", 0);
            end
        end
    end
end;