-----------------------------------
-- Area: Behemoths Dominion
-- VWNM: Pil
-----------------------------------
package.loaded["scripts/zones/Behemoths_Dominion/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Behemoths_Dominion/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 35);

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,2250);
    mob:setMod(MOD_ACC,2250);
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_DMGMAGIC, -10);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;


-----------------------------------
-- onMobRoam Action
-----------------------------------

function onMobRoam(mob)
    if (mob:getLocalVar("RAGED") == 1 and mob:getLocalVar("RAGE_TIME") < os.time()) then
        mob:setLocalVar("RAGED", 0);
    end
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobDisengage Action
-----------------------------------

function onMobDisengage(mob)
    if (mob:getLocalVar("RAGED") == 1) then
        mob:setLocalVar("RAGE_TIME", os,time()+30);
    end
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- 45 min passed and its not already raged
    if (BattleTime - os.time() > 2700 and mob:getLocalVar("RAGED") == 0) then
        mob:setLocalVar("RAGED", 1);
        -- Now lets make claim holder's eat SH and die.
        mob:addMod(MOD_ATTP, 999);
        mob:addMod(MOD_DEFP, 999);
        mob:addMod(MOD_ACC, 9999);
        mob:addMod(MOD_EVA, 9999);
        mob:addMod(MOD_MOD_STR, 999);
        mob:addMod(MOD_MOD_DEX, 999);
        mob:addMod(MOD_MOD_VIT, 999);
        mob:addMod(MOD_MOD_AGI, 999);
        mob:addMod(MOD_MOD_INT, 999);
        mob:addMod(MOD_MOD_MND, 999);
        mob:addMod(MOD_MOD_CHR, 999);
        mob:addMod(MOD_CRITHITRATE, 50);
        mob:addMod(MOD_HASTE_MAGIC, 50);
        mob:addMod(MOD_MOVE, 50);
        mob:addMod(MOD_DMGRANGE, -50);
        mob:addMod(MOD_UDMGPHYS, -50);
        mob:addMod(MOD_UDMGBREATH, -50);
        mob:addMod(MOD_UDMGMAGIC, -50);
        mob:addMod(MOD_UDMGRANGE, -50);
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local spellTable =
    {
        -- [spellID] = animationID, -- Spell Name
        [502] = 242, -- Kaustra
        [219] = 280, -- Comet
        [215] = 820, -- Flood 2
        [213] = 824, -- Burst 2
        [211] = 819, -- Quake 2
        [209] = 822, -- Tornado 2
        [207] = 823, -- Freeze2
        [205] = 821  -- Flare2
    }
    if (spellTable[spell:getID()] ~= nil) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(spellTable[spell:getID()]);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (isKiller == true) then
        local tearsTable =
        {
            [1] = 8919, -- Ifritear
            [2] = 8920, -- Leviatear
            [3] = 8921, -- Ramutear
            [4] = 8922, -- Garutear
            [5] = 8923, -- Titatear
            [6] = 8924, -- Shivatear
            [7] = 8925, -- Carbutear
            [8] = 8926  -- Fenritear
        }
        player:addTreasure(tearsTable[math.random(1,8)], mob); -- 100% drop of one of eight elemental tears
    end

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_III)) then -- Pil Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_III"), 2) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM_III"),"WHITE_STRATUM_III",2,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY) == QUEST_COMPLETED) then
            if (player:isMaskFull(player:getVar("WHITE_STRATUM_III"),3) == true) then
                player:addKeyItem(WHITE_STRATUM_ABYSSITE_IV);
                player:delKeyItem(WHITE_STRATUM_ABYSSITE_III);
                player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_IV);
                player:setVar("WHITE_STRATUM_III", 0);
            end
        end
    end

    player:addCurrency("bayld", 450);
    player:addExp(3000);
end;
