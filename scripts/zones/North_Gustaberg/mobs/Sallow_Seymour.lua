-----------------------------------
-- Area: ?
-- VWNM: Sallow_Seymour
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/North_Gustaberg/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 2); -- Alliance Draw In
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_ACC,180);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1900); -- This needs converted to proper addmod
    mob:setMod(MOD_MATT,105);  -- This needs converted to proper addmod

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9600,8919,50); -- Ifritear
        SetDropRate(9600,8920,0); -- Leviatear
        SetDropRate(9600,8921,0); -- Ramutear
        SetDropRate(9600,8922,0); -- Garutear
        SetDropRate(9600,8923,0); -- Titatear
        SetDropRate(9600,8924,0); -- Shivatear
        SetDropRate(9600,8925,0); -- Carbutear
        SetDropRate(9600,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9600,8919,0); -- Ifritear
        SetDropRate(9600,8920,50); -- Leviatear
        SetDropRate(9600,8921,0); -- Ramutear
        SetDropRate(9600,8922,0); -- Garutear
        SetDropRate(9600,8923,0); -- Titatear
        SetDropRate(9600,8924,0); -- Shivatear
        SetDropRate(9600,8925,0); -- Carbutear
        SetDropRate(9600,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9600,8919,0); -- Ifritear
        SetDropRate(9600,8920,0); -- Leviatear
        SetDropRate(9600,8921,50); -- Ramutear
        SetDropRate(9600,8922,0); -- Garutear
        SetDropRate(9600,8923,0); -- Titatear
        SetDropRate(9600,8924,0); -- Shivatear
        SetDropRate(9600,8925,0); -- Carbutear
        SetDropRate(9600,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9600,8919,0); -- Ifritear
        SetDropRate(9600,8920,0); -- Leviatear
        SetDropRate(9600,8921,0); -- Ramutear
        SetDropRate(9600,8922,50); -- Garutear
        SetDropRate(9600,8923,0); -- Titatear
        SetDropRate(9600,8924,0); -- Shivatear
        SetDropRate(9600,8925,0); -- Carbutear
        SetDropRate(9600,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9600,8919,0); -- Ifritear
        SetDropRate(9600,8920,0); -- Leviatear
        SetDropRate(9600,8921,0); -- Ramutear
        SetDropRate(9600,8922,0); -- Garutear
        SetDropRate(9600,8923,50); -- Titatear
        SetDropRate(9600,8924,0); -- Shivatear
        SetDropRate(9600,8925,0); -- Carbutear
        SetDropRate(9600,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9600,8919,0); -- Ifritear
        SetDropRate(9600,8920,0); -- Leviatear
        SetDropRate(9600,8921,0); -- Ramutear
        SetDropRate(9600,8922,0); -- Garutear
        SetDropRate(9600,8923,0); -- Titatear
        SetDropRate(9600,8924,50); -- Shivatear
        SetDropRate(9600,8925,0); -- Carbutear
        SetDropRate(9600,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9600,8919,0); -- Ifritear
        SetDropRate(9600,8920,0); -- Leviatear
        SetDropRate(9600,8921,0); -- Ramutear
        SetDropRate(9600,8922,0); -- Garutear
        SetDropRate(9600,8923,0); -- Titatear
        SetDropRate(9600,8924,0); -- Shivatear
        SetDropRate(9600,8925,50); -- Carbutear
        SetDropRate(9600,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9600,8919,0); -- Ifritear
        SetDropRate(9600,8920,0); -- Leviatear
        SetDropRate(9600,8921,0); -- Ramutear
        SetDropRate(9600,8922,0); -- Garutear
        SetDropRate(9600,8923,0); -- Titatear
        SetDropRate(9600,8924,0); -- Shivatear
        SetDropRate(9600,8925,0); -- Carbutear
        SetDropRate(9600,8926,50); -- Fenritear
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
    -- local depopTime = mob:getLocalVar("depopTime");
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(2389); -- Mud_Stream
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE)) then -- Sallow Seymour Kill
        if (ally:getMaskBit(ally:getVar("INDIGO_STRATUM"), 0) == false) then
            ally:setMaskBit(ally:getVar("INDIGO_STRATUM"),"INDIGO_STRATUM",0,true);
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