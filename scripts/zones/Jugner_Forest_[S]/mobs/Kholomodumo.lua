-----------------------------------
-- Area: ?
-- VWNM: Kholomodumo
-----------------------------------
package.loaded["scripts/zones/Jugner_Forest_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Jugner_Forest_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_AUTO_SPIKES, mob:getShortID());
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
    mob:setMod(MOD_STUNRES, 75);
    mob:setMod(MOD_PARALYZERES, 100);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9612,8919,50); -- Ifritear
        SetDropRate(9612,8920,0); -- Leviatear
        SetDropRate(9612,8921,0); -- Ramutear
        SetDropRate(9612,8922,0); -- Garutear
        SetDropRate(9612,8923,0); -- Titatear
        SetDropRate(9612,8924,0); -- Shivatear
        SetDropRate(9612,8925,0); -- Carbutear
        SetDropRate(9612,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9612,8919,0); -- Ifritear
        SetDropRate(9612,8920,50); -- Leviatear
        SetDropRate(9612,8921,0); -- Ramutear
        SetDropRate(9612,8922,0); -- Garutear
        SetDropRate(9612,8923,0); -- Titatear
        SetDropRate(9612,8924,0); -- Shivatear
        SetDropRate(9612,8925,0); -- Carbutear
        SetDropRate(9612,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9612,8919,0); -- Ifritear
        SetDropRate(9612,8920,0); -- Leviatear
        SetDropRate(9612,8921,50); -- Ramutear
        SetDropRate(9612,8922,0); -- Garutear
        SetDropRate(9612,8923,0); -- Titatear
        SetDropRate(9612,8924,0); -- Shivatear
        SetDropRate(9612,8925,0); -- Carbutear
        SetDropRate(9612,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9612,8919,0); -- Ifritear
        SetDropRate(9612,8920,0); -- Leviatear
        SetDropRate(9612,8921,0); -- Ramutear
        SetDropRate(9612,8922,50); -- Garutear
        SetDropRate(9612,8923,0); -- Titatear
        SetDropRate(9612,8924,0); -- Shivatear
        SetDropRate(9612,8925,0); -- Carbutear
        SetDropRate(9612,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9612,8919,0); -- Ifritear
        SetDropRate(9612,8920,0); -- Leviatear
        SetDropRate(9612,8921,0); -- Ramutear
        SetDropRate(9612,8922,0); -- Garutear
        SetDropRate(9612,8923,50); -- Titatear
        SetDropRate(9612,8924,0); -- Shivatear
        SetDropRate(9612,8925,0); -- Carbutear
        SetDropRate(9612,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9612,8919,0); -- Ifritear
        SetDropRate(9612,8920,0); -- Leviatear
        SetDropRate(9612,8921,0); -- Ramutear
        SetDropRate(9612,8922,0); -- Garutear
        SetDropRate(9612,8923,0); -- Titatear
        SetDropRate(9612,8924,50); -- Shivatear
        SetDropRate(9612,8925,0); -- Carbutear
        SetDropRate(9612,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9612,8919,0); -- Ifritear
        SetDropRate(9612,8920,0); -- Leviatear
        SetDropRate(9612,8921,0); -- Ramutear
        SetDropRate(9612,8922,0); -- Garutear
        SetDropRate(9612,8923,0); -- Titatear
        SetDropRate(9612,8924,0); -- Shivatear
        SetDropRate(9612,8925,50); -- Carbutear
        SetDropRate(9612,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9612,8919,0); -- Ifritear
        SetDropRate(9612,8920,0); -- Leviatear
        SetDropRate(9612,8921,0); -- Ramutear
        SetDropRate(9612,8922,0); -- Garutear
        SetDropRate(9612,8923,0); -- Titatear
        SetDropRate(9612,8924,0); -- Shivatear
        SetDropRate(9612,8925,0); -- Carbutear
        SetDropRate(9612,8926,50); -- Fenritear
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
    local depopTime = mob:getLocalVar("depopTime");

end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    if (mob:hasStatusEffect(EFFECT_CURSE_SPIKES)) then
        -- EFFECT_CURSE_II is not implemented (prevents cure/healing)
        -- target:addStatusEffect(EFFECT_CURSE_II, 25, 0, 30);
        target:addStatusEffect(EFFECT_CURSE_I, 25, 0, 30);
        return SUBEFFECT_CURSE_SPIKES, 0, 0; -- Zero'd because effing message doesn't work for any status effect spikes.
        -- return SUBEFFECT_CURSE_SPIKES, 166, EFFECT_CURSE_II);
    elseif (mob:hasStatusEffect(EFFECT_DAMAGE_SPIKES) or mob:hasStatusEffect(EFFECT_BLAZE_SPIKES)) then
        return SUBEFFECT_BLAZE_SPIKES, 44, damage;
    else
        return 0, 0, 0;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_III)) then -- Kholomodumo Kill
        if (player:getMaskBit(player:getVar("CRIMSON_STRATUM_III"), 1) == false) then
            player:setMaskBit(player:getVar("CRIMSON_STRATUM_III"),"CRIMSON_STRATUM_III",1,true);
        end

        if (player:isMaskFull(player:getVar("CRIMSON_STRATUM_III"),2) == true) then
            player:addKeyItem(CRIMSON_STRATUM_ABYSSITE_IV);
            player:delKeyItem(CRIMSON_STRATUM_ABYSSITE_III);
            player:setVar("CRIMSON_STRATUM_III", 0);
            player:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE_IV);
        end
    end;

    player:addCurrency("bayld", 75);
    player:addExp(10000);
end;