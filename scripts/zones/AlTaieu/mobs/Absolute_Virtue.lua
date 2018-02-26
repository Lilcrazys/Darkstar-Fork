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

-- Ability ID definitions.
local abilityList =
{
    [1]  = {MightyStrikes = 688},
    [2]  = {Benediction   = 689},
    [3]  = {HundredFists  = 690},
    [4]  = {Manafont      = 691},
    [5]  = {Chainspell    = 692},
    [6]  = {PerfectDodge  = 693},
    [7]  = {Invincible    = 694},
    [8]  = {BloodWeapon   = 695},
    [9]  = {SoulVoice     = 696},
    [10] = {Familiar      = 740},
    [11] = {MeikyoShisui  = 730},
    [12] = {MijinGakure   = 731},
    [13] = {EagleEyeShot  = 1019},
    [14] = {CallWyvern    = 1022},
    [15] = {AstralFlow    = 1023}
}
local MightyStrikes = 688;
local Benediction   = 689;
local HundredFists  = 690;
local Manafont      = 691;
local Chainspell    = 692;
local PerfectDodge  = 693;
local Invincible    = 694;
local BloodWeapon   = 695;
local SoulVoice     = 696;
local Familiar      = 740;
local MeikyoShisui  = 730;
local MijinGakure   = 731;
-- local CallBeast     = 1017;
local EagleEyeShot  = 1019;
local CallWyvern    = 1022;
local AstralFlow    = 1023;
--[[ ..DSP prolly has wrong anim IDsfor the copies AV should use so I use diff ones above instead..And have to use that table. UGH.
local MightyStrikes = 1008;
local HundredFists  = 1009;
local Benediction   = 1010;
local Manafont      = 1011;
local Chainspell    = 1012;
local PerfectDodge  = 1013;
local Invincible    = 1014;
local BloodWeapon   = 1015;
local Familiar      = 1016;
local CallBeast     = 1017;
local SoulVoice     = 1018;
local EagleEyeShot  = 1019;
local MeikyoShisui  = 1020;
local MijinGakure   = 1021;
local CallWyvern    = 1022;
local AstralFlow    = 1023;
]]

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

function onMobEngaged(mob, target)
end;

function onMobDisEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

function onMobFight(mob, target)
    mob:setMod(MOD_REFRESH, 0);
    mob:setMod(MOD_MEVA, 0);
    mob:setMod(MOD_MDEF, 0);
    local combo1 = mob:getLocalVar("combo1");
    local combo2 = mob:getLocalVar("combo2");
    local combo3 = mob:getLocalVar("combo3");
    local combo4 = mob:getLocalVar("combo4");
    local comboCount = mob:getLocalVar("comboCount");
    local abilityCount = mob:getLocalVar("abilityCount");
    local braceletMode = mob:AnimationSub();
    local HPP = mob:getHPP();
    local lastCallBeast = mob:getLocalVar("lastCallBeast");

    if (braceletMode ~= 2 and HPP <= 75) then
        mob:AnimationSub(2);
    elseif (braceletMode ~= 2 and abilityCount == 2 and HPP < 80) then
        print("Ability!")
        doAbility(mob, target);
    elseif (braceletMode ~= 2 and abilityCount == 1 and HPP < 85) then
        print("Ability!")
        doAbility(mob, target);
    elseif (braceletMode ~= 2 and abilityCount == 0 and HPP < 90) then
        print("Ability!")
        doAbility(mob, target);
    elseif (braceletMode == 2 and comboCount == 3 and HPP < combo4) then
        print("Combo!")
        doCombo(mob, target, mob:getLocalVar("selectCombo"));
    elseif (braceletMode == 2 and comboCount == 2 and HPP < combo3) then
        print("Combo!")
        doCombo(mob, target, mob:getLocalVar("selectCombo"));
    elseif (braceletMode == 2 and comboCount == 1 and HPP < combo2) then
        print("Combo!")
        doCombo(mob, target, mob:getLocalVar("selectCombo"));
    elseif (braceletMode == 2 and comboCount == 0 and HPP < combo1) then
        print("Combo!")
        doCombo(mob, target, mob:getLocalVar("selectCombo"));
    elseif (os.time() - lastCallBeast > 120) then
        for WynavID = mob:getID()+1, mob:getID()+4 do
            if (GetMobByID(WynavID):isDead()) then
                SpawnMob(WynavID):updateEnmity(target);
                mob:setLocalVar("lastCallBeast", os.time());
                break;
            end
        end
    end
end;

-- custom function for one off abilities 16912876
function doAbility(mob, target)
    print("Ability count: " .. mob:getLocalVar("abilityCount"))
    local abilityID = abilityList[math.random(1,15)];
    print("Ability ID: " .. abilityID)
    if (abilityID == CallWyvern) then
        -- mob:useMobAbility(CallWyvern);
        for WynavID = mob:getID()+1, mob:getID()+4 do
            if (GetMobByID(WynavID):isSpawned() == false) then
                SpawnMob(WynavID):updateEnmity(target);
            end
        end
    elseif (abilityID == AstralFlow) then
        -- If AV has no WynavIDs out, players just lucked out and AV wasted a 2hr
        if (mob:hasPet()) then
            mob:useMobAbility(abilityID);
        end
    elseif (abilityID == Familiar) then
        -- If AV has no WynavIDs out, players just lucked out and AV wasted a 2hr
        if (mob:hasPet()) then
            for WynavID = mob:getID()+1, mob:getID()+4 do
                if (GetMobByID(WynavID):isAlive()) then
                    WynavID:addStatusEffect(EFFECT_MAX_HP_BOOST,10,0,0);
                    WynavID:addStatusEffect(EFFECT_ACCURACY_BOOST,10,0,0);
                    WynavID:addStatusEffect(EFFECT_ATTACK_BOOST,10,0,0);
                    WynavID:addStatusEffect(EFFECT_EVASION_BOOST,10,0,0);
                    WynavID:addStatusEffect(EFFECT_DEFENSE_BOOST,10,0,0);
                end
            end
            mob:useMobAbility(abilityID);
        end
    else
        mob:useMobAbility(abilityID);
    end
    mob:setLocalVar("abilityCount", mob:getLocalVar("abilityCount")+1);
end;

-- Custom function for ability Combinations
function doCombo(mob, target, selectCombo)
    print("Combo count: " .. mob:getLocalVar("comboCount"))
    local abilityUsed = mob:getLocalVar("abilityUsed");

    if (selectCombo == 0 or selectCombo == nil) then
        selectCombo = math.random(1,5);
        mob:setLocalVar("selectCombo", selectCombo);
    end
    print(selectCombo);

    if (selectCombo == 1) then
        if (abilityUsed == Chainspell) then
            if (math.random(1,3) ~= 2) then
                mob:setLocalVar("abilityUsed", Manafont);
                mob:setLocalVar("comboCount", mob:getLocalVar("comboCount")+1);
                mob:useMobAbility(Manafont);
            else
                mob:setLocalVar("abilityUsed", SoulVoice);
                mob:setLocalVar("comboCount", mob:getLocalVar("comboCount")+1);
                mob:useMobAbility(SoulVoice);
            end
        else
            mob:setLocalVar("abilityUsed", Chainspell);
            mob:useMobAbility(Chainspell);
        end
    elseif (selectCombo == 2) then
        if (abilityUsed == MightyStrikes) then
            mob:setLocalVar("abilityUsed", HundredFists);
            mob:useMobAbility(HundredFists);
            mob:setLocalVar("comboCount", mob:getLocalVar("comboCount")+1);
        else
            mob:setLocalVar("abilityUsed", MightyStrikes);
            mob:useMobAbility(MightyStrikes);
        end
    elseif (selectCombo == 3) then
        if (abilityUsed == MeikyoShisui) then
            if (mob:getLocalVar("EagleEyeShotCount") < 3) then
                mob:setLocalVar("EagleEyeShotCount", mob:getLocalVar("EagleEyeShotCount")+1);
                mob:useMobAbility(EagleEyeShot);
            else
                mob:setLocalVar("comboCount", mob:getLocalVar("comboCount")+1);
                mob:setLocalVar("EagleEyeShotCount", 0);
            end
        else
            mob:setLocalVar("abilityUsed", MeikyoShisui);
            mob:useMobAbility(MeikyoShisui);
        end
    elseif (selectCombo == 4) then
        -- Benediction unused here because players do not yet have the ability to lock AV form using it, AND because custom max HP value..
        if (abilityUsed == Invincible) then
            mob:setLocalVar("abilityUsed", MijinGakure);
            mob:setLocalVar("comboCount", mob:getLocalVar("comboCount")+1);
            mob:useMobAbility(MijinGakure);
        else
            mob:setLocalVar("abilityUsed", Invincible);
            mob:useMobAbility(Invincible);
        end
    elseif (selectCombo == 5) then
        if (abilityUsed == CallWyvern) then
            mob:setLocalVar("abilityUsed", Familiar);
            if (mob:hasPet()) then
                for WynavID = mob:getID()+1, mob:getID()+4 do
                    if (GetMobByID(WynavID):isAlive()) then
                        GetMobByID(WynavID):addStatusEffect(EFFECT_MAX_HP_BOOST,10,0,0);
                        GetMobByID(WynavID):addStatusEffect(EFFECT_ACCURACY_BOOST,10,0,0);
                        GetMobByID(WynavID):addStatusEffect(EFFECT_ATTACK_BOOST,10,0,0);
                        GetMobByID(WynavID):addStatusEffect(EFFECT_EVASION_BOOST,10,0,0);
                        GetMobByID(WynavID):addStatusEffect(EFFECT_DEFENSE_BOOST,10,0,0);
                    end
                end
                mob:useMobAbility(Familiar);
            end
        elseif (abilityUsed == Familiar) then
            mob:setLocalVar("abilityUsed", AstralFlow);
            mob:setLocalVar("comboCount", mob:getLocalVar("comboCount")+1);
            if (mob:hasPet()) then
                mob:useMobAbility(AstralFlow);
            end
        else
            mob:setLocalVar("abilityUsed", CallWyvern);
            -- mob:useMobAbility(CallWyvern);
            for WynavID = mob:getID()+1, mob:getID()+4 do
                if (GetMobByID(WynavID):isDead()) then
                    SpawnMob(WynavID):updateEnmity(target);
                end
            end
        end
    end
end;

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then -- Meteor
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280); -- AoE Meteor Animation
        spell:setMPCost(1);
    end
end;

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

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,15) ~= 5 or target:hasStatusEffect(EFFECT_TERROR) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_TERROR,1,0,5);
        return SUBEFFECT_NONE,0,EFFECT_TERROR;
    end
end;

function onMobDespawn(mob)
end;

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
