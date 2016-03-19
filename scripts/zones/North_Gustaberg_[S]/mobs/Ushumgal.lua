-----------------------------------
-- Area: ?
-- VWNM: Ushumgal
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/North_Gustaberg_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ACC,200);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 25);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9601,8919,50); -- Ifritear
        SetDropRate(9601,8920,0); -- Leviatear
        SetDropRate(9601,8921,0); -- Ramutear
        SetDropRate(9601,8922,0); -- Garutear
        SetDropRate(9601,8923,0); -- Titatear
        SetDropRate(9601,8924,0); -- Shivatear
        SetDropRate(9601,8925,0); -- Carbutear
        SetDropRate(9601,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9601,8919,0); -- Ifritear
        SetDropRate(9601,8920,50); -- Leviatear
        SetDropRate(9601,8921,0); -- Ramutear
        SetDropRate(9601,8922,0); -- Garutear
        SetDropRate(9601,8923,0); -- Titatear
        SetDropRate(9601,8924,0); -- Shivatear
        SetDropRate(9601,8925,0); -- Carbutear
        SetDropRate(9601,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9601,8919,0); -- Ifritear
        SetDropRate(9601,8920,0); -- Leviatear
        SetDropRate(9601,8921,50); -- Ramutear
        SetDropRate(9601,8922,0); -- Garutear
        SetDropRate(9601,8923,0); -- Titatear
        SetDropRate(9601,8924,0); -- Shivatear
        SetDropRate(9601,8925,0); -- Carbutear
        SetDropRate(9601,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9601,8919,0); -- Ifritear
        SetDropRate(9601,8920,0); -- Leviatear
        SetDropRate(9601,8921,0); -- Ramutear
        SetDropRate(9601,8922,50); -- Garutear
        SetDropRate(9601,8923,0); -- Titatear
        SetDropRate(9601,8924,0); -- Shivatear
        SetDropRate(9601,8925,0); -- Carbutear
        SetDropRate(9601,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9601,8919,0); -- Ifritear
        SetDropRate(9601,8920,0); -- Leviatear
        SetDropRate(9601,8921,0); -- Ramutear
        SetDropRate(9601,8922,0); -- Garutear
        SetDropRate(9601,8923,50); -- Titatear
        SetDropRate(9601,8924,0); -- Shivatear
        SetDropRate(9601,8925,0); -- Carbutear
        SetDropRate(9601,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9601,8919,0); -- Ifritear
        SetDropRate(9601,8920,0); -- Leviatear
        SetDropRate(9601,8921,0); -- Ramutear
        SetDropRate(9601,8922,0); -- Garutear
        SetDropRate(9601,8923,0); -- Titatear
        SetDropRate(9601,8924,50); -- Shivatear
        SetDropRate(9601,8925,0); -- Carbutear
        SetDropRate(9601,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9601,8919,0); -- Ifritear
        SetDropRate(9601,8920,0); -- Leviatear
        SetDropRate(9601,8921,0); -- Ramutear
        SetDropRate(9601,8922,0); -- Garutear
        SetDropRate(9601,8923,0); -- Titatear
        SetDropRate(9601,8924,0); -- Shivatear
        SetDropRate(9601,8925,50); -- Carbutear
        SetDropRate(9601,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9601,8919,0); -- Ifritear
        SetDropRate(9601,8920,0); -- Leviatear
        SetDropRate(9601,8921,0); -- Ramutear
        SetDropRate(9601,8922,0); -- Garutear
        SetDropRate(9601,8923,0); -- Titatear
        SetDropRate(9601,8924,0); -- Shivatear
        SetDropRate(9601,8925,0); -- Carbutear
        SetDropRate(9601,8926,50); -- Fenritear
    end
    
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
    local depopTime = mob:getLocalVar("depopTime");

end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 10 or target:hasStatusEffect(EFFECT_SLOW) == true) then
        return 0,0,0;
    else
        local duration = 15;
        target:addStatusEffect(EFFECT_SLOW,10,0,duration);
        return SUBEFFECT_NONE,0,EFFECT_SLOW;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE)) then -- Ushumgal Kill
        if (ally:getMaskBit(ally:getVar("INDIGO_STRATUM"), 1) == false) then
            ally:setMaskBit(ally:getVar("INDIGO_STRATUM"),"INDIGO_STRATUM",1,true);
        end

        if (ally:isMaskFull(ally:getVar("INDIGO_STRATUM"),2) == true) then
            ally:addKeyItem(INDIGO_STRATUM_ABYSSITE_II);
            ally:delKeyItem(INDIGO_STRATUM_ABYSSITE);
            ally:setVar("INDIGO_STRATUM", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE_II);
        end
    end

    ally:addExp(10000);
end;