-----------------------------------
-- Area: EDIT ME
-- VWNM: Smierc
-----------------------------------
package.loaded["scripts/zones/Tahrongi_Canyon/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Tahrongi_Canyon/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,100);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950); -- needs changed to a proper addMod in onMobInit
    mob:setMod(MOD_MATT,90);   -- needs changed to a proper addMod in onMobInit
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9640,0,8919,50); -- Ifritear
        SetDropRate(9640,0,8920,0); -- Leviatear
        SetDropRate(9640,0,8921,0); -- Ramutear
        SetDropRate(9640,0,8922,0); -- Garutear
        SetDropRate(9640,0,8923,0); -- Titatear
        SetDropRate(9640,0,8924,0); -- Shivatear
        SetDropRate(9640,0,8925,0); -- Carbutear
        SetDropRate(9640,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9640,0,8919,0); -- Ifritear
        SetDropRate(9640,0,8920,50); -- Leviatear
        SetDropRate(9640,0,8921,0); -- Ramutear
        SetDropRate(9640,0,8922,0); -- Garutear
        SetDropRate(9640,0,8923,0); -- Titatear
        SetDropRate(9640,0,8924,0); -- Shivatear
        SetDropRate(9640,0,8925,0); -- Carbutear
        SetDropRate(9640,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9640,0,8919,0); -- Ifritear
        SetDropRate(9640,0,8920,0); -- Leviatear
        SetDropRate(9640,0,8921,50); -- Ramutear
        SetDropRate(9640,0,8922,0); -- Garutear
        SetDropRate(9640,0,8923,0); -- Titatear
        SetDropRate(9640,0,8924,0); -- Shivatear
        SetDropRate(9640,0,8925,0); -- Carbutear
        SetDropRate(9640,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9640,0,8919,0); -- Ifritear
        SetDropRate(9640,0,8920,0); -- Leviatear
        SetDropRate(9640,0,8921,0); -- Ramutear
        SetDropRate(9640,0,8922,50); -- Garutear
        SetDropRate(9640,0,8923,0); -- Titatear
        SetDropRate(9640,0,8924,0); -- Shivatear
        SetDropRate(9640,0,8925,0); -- Carbutear
        SetDropRate(9640,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9640,0,8919,0); -- Ifritear
        SetDropRate(9640,0,8920,0); -- Leviatear
        SetDropRate(9640,0,8921,0); -- Ramutear
        SetDropRate(9640,0,8922,0); -- Garutear
        SetDropRate(9640,0,8923,50); -- Titatear
        SetDropRate(9640,0,8924,0); -- Shivatear
        SetDropRate(9640,0,8925,0); -- Carbutear
        SetDropRate(9640,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9640,0,8919,0); -- Ifritear
        SetDropRate(9640,0,8920,0); -- Leviatear
        SetDropRate(9640,0,8921,0); -- Ramutear
        SetDropRate(9640,0,8922,0); -- Garutear
        SetDropRate(9640,0,8923,0); -- Titatear
        SetDropRate(9640,0,8924,50); -- Shivatear
        SetDropRate(9640,0,8925,0); -- Carbutear
        SetDropRate(9640,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9640,0,8919,0); -- Ifritear
        SetDropRate(9640,0,8920,0); -- Leviatear
        SetDropRate(9640,0,8921,0); -- Ramutear
        SetDropRate(9640,0,8922,0); -- Garutear
        SetDropRate(9640,0,8923,0); -- Titatear
        SetDropRate(9640,0,8924,0); -- Shivatear
        SetDropRate(9640,0,8925,50); -- Carbutear
        SetDropRate(9640,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9640,0,8919,0); -- Ifritear
        SetDropRate(9640,0,8920,0); -- Leviatear
        SetDropRate(9640,0,8921,0); -- Ramutear
        SetDropRate(9640,0,8922,0); -- Garutear
        SetDropRate(9640,0,8923,0); -- Titatear
        SetDropRate(9640,0,8924,0); -- Shivatear
        SetDropRate(9640,0,8925,0); -- Carbutear
        SetDropRate(9640,0,8926,50); -- Fenritear
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
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then -- comet
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
    elseif (spell:getID() == 503) then -- Kaustra
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(218);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,10) > 4 or target:hasStatusEffect(EFFECT_CURSE_I) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_CURSE_I,40,0,10);
        return SUBEFFECT_CURSE, MSGBASIC_ADD_EFFECT_STATUS, EFFECT_CURSE_I;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_V)) then -- Smierc Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_V"), 2) == false) then
            ally:setMaskBit(ally:getVar("WHITE_STRATUM_V"),"WHITE_STRATUM_V",2,true);
        end
        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_V"),3) == true) then
            ally:addKeyItem(WHITE_STRATUM_ABYSSITE_VI);
            ally:delKeyItem(WHITE_STRATUM_ABYSSITE_V);
            ally:setVar("WHITE_STRATUM_V", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_VI);
        end
    end

    ally:addCurrency("bayld", 400);
    ally:addExp(10000);
end;