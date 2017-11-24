-----------------------------------
-- Area: Al'Taieu
--  HNM: Absolute Virtue
-----------------------------------
require("scripts/zones/AlTaieu/MobIDs");
require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_DRAW_IN, 2); -- Alliance Draw In
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 5);
    mob:addMod(MOD_TRIPLE_ATTACK, 3);
    mob:addMod(MOD_MDEF,80);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- Set localVars for 2hr triggers
    mob:setLocalVar("combo1", math.random(50,66));
    mob:setLocalVar("combo2", math.random(33,45));
    mob:setLocalVar("combo3", math.random(15,25));
    mob:setLocalVar("combo4", math.random(6,12));

    -- setMod
    mob:setMod(MOD_REGEN, 500);
    mob:setMod(MOD_REFRESH, 50);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_STUNRES, 75);
    mob:setMod(MOD_PARALYZERES, 100);

    local JoL = GetMobByID(JAILER_OF_LOVE);
    -- Special check for regen modification by JoL pets killed
    if (JoL:getLocalVar("JoL_Qn_xzomit_Killed") == 9) then
        mob:addMod(MOD_REGEN, -130)
    end
    if (JoL:getLocalVar("JoL_Qn_hpemde_Killed") == 9) then
        mob:addMod(MOD_REGEN, -130)
    end
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local DID2HR = mob:getLocalVar("DID2HR");
    local RND = math.random(1,12);
    local AV2HR = nil;
    local popTime = mob:getLocalVar("lastPetPop");

    if (mob:getBattleTime() > 3600 and mob:getLocalVar("RAGED") == 0) then
        -- In retail, this is where it'd just depop instead..Except we'd be tracking it from JoL's pop time instead of BattleTime.
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end

    if (os.time() - popTime > 120) then
        for Helper = mob:getID()+1, mob:getID()+4 do
            if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                SpawnMob(Helper):updateEnmity(target);
                mob:setLocalVar("lastPetPop", os.time());
            end
        end


    else
        if (RND == 1) then
            AV2HR = 688;
        elseif (RND == 2) then
            AV2HR = 689;
        elseif (RND == 3) then
            AV2HR = 690;
        elseif (RND == 4) then
            AV2HR = 691;
        elseif (RND == 5) then
            AV2HR = 692;
        elseif (RND == 6) then
            AV2HR = 693;
        elseif (RND == 7) then
            AV2HR = 694;
        elseif (RND == 8) then
            AV2HR = 695;
        elseif (RND == 9) then
            AV2HR = 696;
        elseif (RND == 10) then
            AV2HR = 697;
        elseif (RND == 11) then
            AV2HR = 698;
        elseif (RND == 12) then
            AV2HR = 699;
        end

        if (AV2HR ~= nil) then
            if (mob:getHPP() <= 10 and DID2HR == 8) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 9);
            elseif (mob:getHPP() <= 20 and DID2HR == 7) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 8);
            elseif (mob:getHPP() <= 30 and DID2HR == 6) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 7);
            elseif (mob:getHPP() <= 40 and DID2HR == 5) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 6);
            elseif (mob:getHPP() <= 50 and DID2HR == 4) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 5);
            elseif (mob:getHPP() <= 60 and DID2HR == 3) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 4);
            elseif (mob:getHPP() <= 70 and DID2HR == 2) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 3);
            elseif (mob:getHPP() <= 80 and DID2HR == 1) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 2);
            elseif (mob:getHPP() <= 90 and DID2HR == 0) then
                mob:useMobAbility(AV2HR);
                mob:setLocalVar("DID2HR", 1);
            end
        end
    end
end;

------------------------------------
-- onSpellPrecast
------------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then -- Meteor
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280); -- AoE Meteor Animation
        spell:setMPCost(1);
    end
end;

------------------------------------
-- onMonsterMagicPrepare
------------------------------------

function onMonsterMagicPrepare(caster, target)
    local spellList =
    {
        [1] = 158, -- Aero 5
        [2] = 187, -- Aeroga 4
        [3] = 188, -- Aeroga 5
        [4] = 209, -- Tornado 2
        [5] = 219, -- Comet
        [6] = 218, -- Meteor
        [7] = 359, -- Silencega
        [8] = 360, -- Dispelga
        [9] = 466  -- Maidens Virelai
    }
    local spell = spellList[math.random(1,9)];
    if (caster:hasStatusEffect(EFFECT_Manafont)) then
        if (math.random(1,5) ~= 3) then
            return 218; -- Almost always Meteor
        else
            return 219; -- 1 in 5 chance of Comet
        end
    elseif (caster:hasStatusEffect(EFFECT_SOUL_VOICE)) then
        return 466; -- Always Virelai
    else
        return spell;
    end
end;

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
    local REGEN = target:getMod(MOD_REGEN);
    local DAY = VanadielDayElement();
    local ELEM = spell:getElement();
    if (GetServerVariable("AV_Regen_Reduction") < 60) then
        -- Had to serverVar the regen instead of localVar because localVar reset on claim loss.
        if (ELEM == DAY and (caster:isPC() or caster:isPet())) then
            SetServerVariable("AV_Regen_Reduction", 1+GetServerVariable("AV_Regen_Reduction"));
            target:addMod(MOD_REGEN, -2);
        end
    end
    return 1;
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 5 or target:hasStatusEffect(EFFECT_TERROR) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_TERROR,1,0,5);
        return SUBEFFECT_NONE,0,EFFECT_TERROR;
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(VIRTUOUS_SAINT);

    if (isKiller == true) then
        -- Get rid of AV's WynavID's
        for WynavID = mob:getID()+1, mob:getID()+4 do
            GetMobByID(WynavID):setHP(0); -- Just die already!
            -- DespawnMob(WynavID);
        end

        -- Begin huge section for custom loot..
        local abjurs =
        {
            [1] = 1315,  -- Dryadic Abjuration Body
            [2] = 1317,  -- Dryadic Abjuration Legs
            [3] = 1320,  -- Earthen Abjuration Body
            [4] = 1322,  -- Earthen Abjuration Legs
            [5] = 1325,  -- Aquarian Abjuration Body
            [6] = 1327,  -- Aquarian Abjuration Legs
            [7] = 1330,  -- Martial Abjuration Body
            [8] = 1332,  -- Martial Abjuration Legs
            [9] = 1335,  -- Wyrmal Abjuration Body
            [10] = 1337, -- Wyrmal Abjuration Legs
            [11] = 1340, -- Neptunal Abjuration Body
            [12] = 1342, -- Neptunal Abjuration Legs
        }
        player:addTreasure(abjurs[math.random(1,12)], mob); -- 100% chance of random body/leg abjuration
        player:addTreasure(28519, mob); -- 100% chance of Tripudio Earring

        local rings = nil;
        rings =
        {
            [1] = 27580,  -- Adoulin Ring
            [2] = 27581,  -- Woltaris Ring
            [3] = 27582,  -- Weather Ring
            [4] = 27583,  -- Janniston Ring
            [5] = 27584,  -- Renaye Ring
            [6] = 27585,  -- Gorney Ring
            [7] = 27586,  -- Haverton Ring
            [8] = 27587,  -- Karieyh Ring
            [9] = 27588,  -- Vocane Ring
            [10] = 27589, -- Thurandaut Ring
            [11] = 27590, -- Shneddick Ring
            [12] = 27591  -- Orvail Ring
        }

        -- Random for ring 1 of 4.
        local ringDrop = math.random(1, #rings); -- Select one
        if (math.random(1,100) > 85) then -- 15 in 100
            player:addTreasure(rings[ringDrop], mob);
            table.remove(rings, ringDrop); -- Remove this ring from result list before next roll.
        end

        -- Random for ring 2 of 4
        ringDrop = math.random(1, #rings); -- Select one
        if (math.random(1,100) > 88) then -- 12 in 100
            player:addTreasure(rings[ringDrop], mob);
            table.remove(rings, ringDrop); -- Remove this ring from result list before next roll.
        end

        -- Random for ring 3 of 4
        ringDrop = math.random(1, #rings); -- Select one
        if (math.random(1,100) > 90) then -- 9 in 100
            player:addTreasure(rings[ringDrop], mob);
            table.remove(rings, ringDrop); -- Remove this ring from result list before next roll.
        end

        -- Random for ring 4 of 4
        ringDrop = math.random(1, #rings); -- Select one
        if (math.random(1,100) > 94) then -- 6 in 100
            player:addTreasure(rings[ringDrop], mob);
        end
    end
end;
