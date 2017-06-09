-----------------------------------
-- Area: ?
-- VWNM: Gaunab
-----------------------------------
package.loaded["scripts/zones/Vunkerl_Inlet_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Vunkerl_Inlet_[S]/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_AUTO_SPIKES,mob:getShortID());

    -- setMod
    mob:setMod(MOD_MACC,1950); -- Todo: convert to proper amount of addMod..
    mob:setMod(MOD_MATT,75);   -- Todo: convert to proper amount of addMod..
    mob:setMod(MOD_ACC,1950);  -- Todo: convert to proper amount of addMod..

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

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    -- Other
    mob:SetMobSkillAttack(4171);

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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then
        if (player:getMaskBit(player:getVar("JEUNO_VW"), 0) == false) then
            player:setMaskBit(player:getVar("JEUNO_VW"),"JEUNO_VW",0,true);
        end
        if (player:isMaskFull(player:getVar("JEUNO_VW"),5) == true) then
            player:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
            player:addKeyItem(WHITE_STRATUM_ABYSSITE);
            player:setVar("JEUNO_VW", 0);
            player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE);
        end
    end

    player:addCurrency("bayld", 600);
    player:addExp(3000);
end;
