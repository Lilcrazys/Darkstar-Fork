----------------------------------
-- Area: Cape Teriggan
--  NM:  Tegmine
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------


-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 30)
    mob:addMod(MOD_ATT, 100);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC, 500); -- My mad ninja skills do not miss/resist!
    mob:setMod(MOD_MATT, 50); -- They don't hit very hard either though..
    -- Adjust MOD_MATT as needed, Tegmine's nin nuke should not land zero but not land over 50 dmg on an average lv99 either.
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob)
    if (mob:getLocalVar("GO_BOOM") == 0 and mob:getHPP() <= 20) then
        mob:setLocalVar("MagicAttackBonus", mob:getMod(MOD_MATT)); -- Store original amount of Magic Attack in a localVar
        mob:setMod(MOD_MATT, 99); -- Set new amount of Magic Attack
        mob:useMobAbility(475); -- I GOES BOOM NOW! (This may need tweaking, should land for around half players MaxHP).
        mob:setLocalVar("GO_BOOM", 1);
        mob:setMod(MOD_MATT, mob:getLocalVar("MagicAttackBonus")); -- Restore old amount of Magic Attack
    end
end;

-----------------------------------
-- onMonsterMagicPrepare
-----------------------------------
function onMonsterMagicPrepare(mob,target)
    local sumDumVar = math.random(1,100);

    if (mob:getHPP() >= 25) then -- Lets make Tegmine choose Katon more often above 25% and Hyoton more below 25%
        sumDumVar = sumDumVar + 20;
    end

    if (sumDumVar >= 33) then
        return 322; -- Katon: San, make target weak vs water.
    else
        return 325; -- Hyoton: San, make target weak vs fire.
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    -- Wiki says nothing about proc rate, going with 80% for now.
    -- I remember it going off every hit when I fought him.
    local chance = 90;
    local LV_diff = target:getMainLvl() - mob:getMainLvl();

    if (target:getMainLvl() > mob:getMainLvl()) then
        chance = chance - 5 * LV_diff;
        chance = utils.clamp(chance, 5, 95);
    end

    if (math.random(0,99) >= chance) then
        return 0,0,0;
    else
        local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
        local dmg = (INT_diff+LV_diff)*0.5;
        local params = {};
        params.bonusmab = 0;
        params.includemab = false;
        dmg = addBonusesAbility(mob, ELE_WATER, target, dmg, params);
        dmg = dmg * applyResistanceAddEffect(mob,target,ELE_WATER,0);
        dmg = adjustForTarget(target,dmg,ELE_WATER);

        if (dmg < 0) then
            dmg = 0;
        end

        dmg = finalMagicNonSpellAdjustments(mob,target,ELE_WATER,dmg);

        return SUBEFFECT_WATER_DAMAGE, MSGBASIC_ADD_EFFECT_DMG, dmg;
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    -- UpdateNMSpawnPoint(mob:getID());
    -- mob:setRespawnTime(math.random((7200),(7800))); -- 120 to 130 min
end;