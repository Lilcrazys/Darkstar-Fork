-----------------------------------
-- Area: Attohwa Chasm
-- NPC:  Tiamat
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_DMGMAGIC, -50);
    mob:addMod(MOD_DMGRANGE, -50);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1925);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_FIRE_AFFINITY,10);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,50);
    mob:setMod(MOD_PARALYZE,30);
end;


-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    -- Wiki says nothing about proc rate, going with 80% for now.
    -- I remember it going off every hit when I fought him.
    local chance = 35;
    local LV_diff = target:getMainLvl() - mob:getMainLvl();

    if (target:getMainLvl() > mob:getMainLvl()) then
        chance = chance - 5 * LV_diff;
        chance = utils.clamp(chance, 5, 95);
    end

    if (math.random(0,99) >= chance) then
        return 0,0,0;
    else
         local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);

         if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20) / 2;
         end

         local dmg = INT_diff+LV_diff+damage/2;
         local params = {};
         params.bonusmab = 0;
         params.includemab = false;
         dmg = addBonusesAbility(mob, ELE_FIRE, target, dmg, params);
         dmg = dmg * applyResistanceAddEffect(mob,target,ELE_FIRE,0);
         dmg = adjustForTarget(target,dmg,ELE_FIRE);

         if (dmg < 0) then
            dmg = 10
         end

         dmg = finalMagicNonSpellAdjustments(mob,target,ELE_FIRE,dmg);

         return SUBEFFECT_FIRE_DAMAGE,163,dmg;
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(TIAMAT_TROUNCER);
    mob:setRespawnTime(math.random((75600),(86400)));   -- 21 to 24 hours
end;