-----------------------------------
-- Area: ?
-- VWNM: Gaunab
-----------------------------------
package.loaded["scripts/zones/Vunkerl_Inlet_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Vunkerl_Inlet_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_AUTO_SPIKES,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,200);
    mob:addMod(MOD_ATT,150);

    -- Effects
    mob:addStatusEffect(EFFECT_BLAZE_SPIKES,75,0,0);
    mob:getStatusEffect(EFFECT_BLAZE_SPIKES):setFlag(32);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,75);
    mob:setMod(MOD_ACC,1950);

    -- Other
    mob:SetMobSkillAttack(true);
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9641,0,8919,50); -- Ifritear
        SetDropRate(9641,0,8920,0); -- Leviatear    
        SetDropRate(9641,0,8921,0); -- Ramutear    
        SetDropRate(9641,0,8922,0); -- Garutear    
        SetDropRate(9641,0,8923,0); -- Titatear    
        SetDropRate(9641,0,8924,0); -- Shivatear   
        SetDropRate(9641,0,8925,0); -- Carbutear
        SetDropRate(9641,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9641,0,8919,0); -- Ifritear
        SetDropRate(9641,0,8920,50); -- Leviatear    
        SetDropRate(9641,0,8921,0); -- Ramutear    
        SetDropRate(9641,0,8922,0); -- Garutear    
        SetDropRate(9641,0,8923,0); -- Titatear    
        SetDropRate(9641,0,8924,0); -- Shivatear   
        SetDropRate(9641,0,8925,0); -- Carbutear
        SetDropRate(9641,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9641,0,8919,0); -- Ifritear
        SetDropRate(9641,0,8920,0); -- Leviatear    
        SetDropRate(9641,0,8921,50); -- Ramutear    
        SetDropRate(9641,0,8922,0); -- Garutear    
        SetDropRate(9641,0,8923,0); -- Titatear    
        SetDropRate(9641,0,8924,0); -- Shivatear   
        SetDropRate(9641,0,8925,0); -- Carbutear
        SetDropRate(9641,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9641,0,8919,0); -- Ifritear
        SetDropRate(9641,0,8920,0); -- Leviatear    
        SetDropRate(9641,0,8921,0); -- Ramutear    
        SetDropRate(9641,0,8922,50); -- Garutear    
        SetDropRate(9641,0,8923,0); -- Titatear    
        SetDropRate(9641,0,8924,0); -- Shivatear   
        SetDropRate(9641,0,8925,0); -- Carbutear
        SetDropRate(9641,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9641,0,8919,0); -- Ifritear
        SetDropRate(9641,0,8920,0); -- Leviatear    
        SetDropRate(9641,0,8921,0); -- Ramutear    
        SetDropRate(9641,0,8922,0); -- Garutear    
        SetDropRate(9641,0,8923,50); -- Titatear    
        SetDropRate(9641,0,8924,0); -- Shivatear   
        SetDropRate(9641,0,8925,0); -- Carbutear
        SetDropRate(9641,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9641,0,8919,0); -- Ifritear
        SetDropRate(9641,0,8920,0); -- Leviatear    
        SetDropRate(9641,0,8921,0); -- Ramutear    
        SetDropRate(9641,0,8922,0); -- Garutear    
        SetDropRate(9641,0,8923,0); -- Titatear    
        SetDropRate(9641,0,8924,50); -- Shivatear   
        SetDropRate(9641,0,8925,0); -- Carbutear
        SetDropRate(9641,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9641,0,8919,0); -- Ifritear
        SetDropRate(9641,0,8920,0); -- Leviatear    
        SetDropRate(9641,0,8921,0); -- Ramutear    
        SetDropRate(9641,0,8922,0); -- Garutear    
        SetDropRate(9641,0,8923,0); -- Titatear    
        SetDropRate(9641,0,8924,0); -- Shivatear   
        SetDropRate(9641,0,8925,50); -- Carbutear
        SetDropRate(9641,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9641,0,8919,0); -- Ifritear
        SetDropRate(9641,0,8920,0); -- Leviatear    
        SetDropRate(9641,0,8921,0); -- Ramutear    
        SetDropRate(9641,0,8922,0); -- Garutear    
        SetDropRate(9641,0,8923,0); -- Titatear    
        SetDropRate(9641,0,8924,0); -- Shivatear   
        SetDropRate(9641,0,8925,0); -- Carbutear
        SetDropRate(9641,0,8926,50); -- Fenritear       
    end    
    
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);

    if (INT_diff > 20) then
        INT_diff = 20 + ((INT_diff - 20)*0.5); -- INT above 20 is half as effective.
    end

    local dmg = ((damage+INT_diff)*0.5); -- INT adjustment and base damage averaged together.
    local params = {};
    params.bonusmab = 0;
    params.includemab = false;
    dmg = addBonusesAbility(mob, ELE_FIRE, target, dmg, params);
    dmg = dmg * applyResistanceAddEffect(mob,target,ELE_FIRE,0);
    dmg = adjustForTarget(target,dmg,ELE_FIRE);
    dmg = finalMagicNonSpellAdjustments(mob,target,ELE_FIRE,dmg);

    -- Prevent player with high resist from 1 shotting self.
    if (dmg < 0) then
        dmg = 0;
    end

    return SUBEFFECT_BLAZE_SPIKES,44,dmg;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 600);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Gaunab Kill
        if (ally:getMaskBit(ally:getVar("JEUNO_VW"), 0) == false) then
           ally:setMaskBit(ally:getVar("JEUNO_VW"),"JEUNO_VW",0,true);
        end
        if (ally:isMaskFull(ally:getVar("JEUNO_VW"),5) == true) then
           ally:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        end
    end    
end;