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

function onMobDeath(mob, player, isKiller)

    if (isKiller == true) then
        local RND1 = math.random(1,8);
        if (RND1 == 1) then
            player:addTreasure(8919); -- Ifritear
        elseif (RND1 == 2) then
            player:addTreasure(8920); -- Leviatear
        elseif (RND1 == 3) then
            player:addTreasure(8921); -- Ramutear
        elseif (RND1 == 4) then
            player:addTreasure(8922); -- Garutear
        elseif (RND1 == 5) then
            player:addTreasure(8923); -- Titatear
        elseif (RND1 == 6) then
            player:addTreasure(8924); -- Shivatear
        elseif (RND1 == 7) then
            player:addTreasure(8925); -- Carbutear
        elseif (RND1 == 8) then
            player:addTreasure(8926); -- Fenritear
        end
    end

    if (player:hasKeyItem(INDIGO_STRATUM_ABYSSITE)) then -- Ushumgal Kill
        if (player:getMaskBit(player:getVar("INDIGO_STRATUM"), 1) == false) then
            player:setMaskBit(player:getVar("INDIGO_STRATUM"),"INDIGO_STRATUM",1,true);
        end

        if (player:isMaskFull(player:getVar("INDIGO_STRATUM"),2) == true) then
            player:addKeyItem(INDIGO_STRATUM_ABYSSITE_II);
            player:delKeyItem(INDIGO_STRATUM_ABYSSITE);
            player:setVar("INDIGO_STRATUM", 0);
            player:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE_II);
        end
    end

    player:addExp(10000);
end;