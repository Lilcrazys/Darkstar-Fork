-----------------------------------
-- Area: EDIT ME
-- VWNM: Ocythoe
-----------------------------------
package.loaded["scripts/zones/Grauberg_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Grauberg_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_ATT,100);
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
    mob:setMod(MOD_MATT,85);

    -- var
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

    local Ocythoe = mob:getLocalVar("Ocythoe");

    if (mob:getHPP() <= 15) then
        if (Ocythoe_Used == 2) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 3);
        end
    elseif (mob:getHPP() <= 40) then
        if (Ocythoe_Used == 1) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Ocythoe_Used == 0) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(50,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,30);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Ocythoe Kill
        if (player:getMaskBit(player:getVar("JEUNO_VW"), 1) == false) then
            player:setMaskBit(player:getVar("JEUNO_VW"),"JEUNO_VW",1,true);
        end

        if (player:isMaskFull(player:getVar("JEUNO_VW"),5) == true) then
            player:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
            player:addKeyItem(WHITE_STRATUM_ABYSSITE);
        end
    end

    player:addCurrency("bayld", 600);
    player:addExp(3000);
end;