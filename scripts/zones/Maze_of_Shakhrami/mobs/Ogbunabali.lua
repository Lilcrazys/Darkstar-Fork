-----------------------------------
-- Area: ?
-- VWNM: Ogbunabali
-----------------------------------
package.loaded["scripts/zones/Maze_of_Shakhrami/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Maze_of_Shakhrami/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/keyitems");
mixins = {require("scripts/mixins/families/antlion_ambush")}

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

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
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);
    mob:setMod(MOD_HASTE_ABILITY, 35);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 7 or target:hasStatusEffect(EFFECT_PETRIFICATION) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_PETRIFICATION,10,0,15);
        return SUBEFFECT_PETRIFY,163,EFFECT_PETRIFICATION;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:hasKeyItem(JADE_STRATUM_ABYSSITE_II)) then -- Ogbunabali Kill
        player:addKeyItem(JADE_STRATUM_ABYSSITE_III);
        player:delKeyItem(JADE_STRATUM_ABYSSITE_II);
        player:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_III);
    end

    player:addCurrency("bayld", 50);
    player:addExp(10000);
end;