-----------------------------------
-- Area: EDIT ME
-- VWNM: Goji
-----------------------------------
package.loaded["scripts/zones/Sauromugue_Champaign/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Sauromugue_Champaign/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,20);
    mob:addMod(MOD_DEF,80);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950); -- This needs converted to proper addmod
    mob:setMod(MOD_MATT,125);  -- This needs converted to proper addmod
    mob:setMod(MOD_DARK_AFFINITY_DMG, 300);
    mob:setMod(MOD_DARK_AFFINITY_ACC, 300);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    mob:delStatusEffect(EFFECT_ALL_MISS);

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
    local BT = mob:getBattleTime();
    local CT = mob:getLocalVar("changeTime");

    if (mob:actionQueueEmpty() == true) then
        -- subanimation 0 is only ever used before any flight happens
        if (mob:AnimationSub() == 0 and BT - CT > 180) then
            mob:AnimationSub(1);
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            -- record the time this phase was started
            mob:setLocalVar("changeTime", mob:getBattleTime());
        -- subanimation 1 is flight, so check if she should land
        elseif (mob:AnimationSub() == 1 and BT - CT > 180) then
            mob:useMobAbility(1282);
            mob:setLocalVar("changeTime", mob:getBattleTime());
        -- subanimation 2 is grounded mode, so check if she should take off
        elseif (mob:AnimationSub() == 2 and BT - CT > 180) then
            mob:AnimationSub(1);
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            -- record the time this phase was started
            mob:setLocalVar("changeTime", mob:getBattleTime());
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    if (isKiller == true) then
        local RND1 = math.random(1,8);
        if (RND1 == 1) then
            player:addTreasure(8919, mob); -- Ifritear
        elseif (RND1 == 2) then
            player:addTreasure(8920, mob); -- Leviatear
        elseif (RND1 == 3) then
            player:addTreasure(8921, mob); -- Ramutear
        elseif (RND1 == 4) then
            player:addTreasure(8922, mob); -- Garutear
        elseif (RND1 == 5) then
            player:addTreasure(8923, mob); -- Titatear
        elseif (RND1 == 6) then
            player:addTreasure(8924, mob); -- Shivatear
        elseif (RND1 == 7) then
            player:addTreasure(8925, mob); -- Carbutear
        elseif (RND1 == 8) then
            player:addTreasure(8926, mob); -- Fenritear
        end
    end

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Goji Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM"), 0) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM"),"WHITE_STRATUM",0,true);
        end
        if (player:isMaskFull(player:getVar("WHITE_STRATUM"),6) == true) then
            player:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
            player:delKeyItem(WHITE_STRATUM_ABYSSITE);
            player:setVar("WHITE_STRATUM", 0);
            player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_II);
        end
    end;

    player:addCurrency("bayld", 100);
    player:addExp(3000);
end;
