-----------------------------------
-- Global version of onMobDeath
-----------------------------------
package.loaded["scripts/globals/conquest"] = nil;
-----------------------------------
require("scripts/globals/conquest");
require("scripts/globals/missions");
require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/msg");
-- require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeathEx
-----------------------------------

function onMobDeathEx(mob, player, isKiller, isWeaponSkillKill)

    -- Things that happen only to the person who landed killing blow
    if (isKiller == true) then
        -- DRK quest - Blade Of Darkness
        local BladeofDarkness = player:getQuestStatus(BASTOK, BLADE_OF_DARKNESS);
        local BladeofDeath = player:getQuestStatus(BASTOK, BLADE_OF_DEATH);
        local ChaosbringerKills = player:getVar("ChaosbringerKills");
        if (BladeofDarkness == QUEST_ACCEPTED or BladeofDeath == QUEST_ACCEPTED) then
            if (player:getEquipID(SLOT_MAIN) == 16607 and isWeaponSkillKill == false) then
                if (ChaosbringerKills < 200) then
                    player:setVar("ChaosbringerKills", ChaosbringerKills + 1);
                    if (ChaosbringerKills == 1) then
                        player:SpoofMsg(string.format("has felled %u foe using the Chaosbringer...", ChaosbringerKills + 1), nil, chatType.EMOTION, nil);
                    else
                        player:SpoofMsg(string.format("has felled %u foes using the Chaosbringer...", ChaosbringerKills + 1), nil, chatType.EMOTION, nil);
                    end
                end
            end
        end
    end

    -- Things that happen to any player in the party/alliance
    if (player:getCurrentMission(WINDURST) == A_TESTING_TIME) then
        if (player:hasCompletedMission(WINDURST,A_TESTING_TIME) and player:getZoneID() == 118) then
            player:setVar("testingTime_crea_count",player:getVar("testingTime_crea_count") + 1);
        elseif (player:hasCompletedMission(WINDURST,A_TESTING_TIME) == false and player:getZoneID() == 117) then
            player:setVar("testingTime_crea_count",player:getVar("testingTime_crea_count") + 1);
        end
    end
end

-- is a lottery NM already spawned or primed to pop?
function lotteryPrimed(phList)
    local nm;
    for k,v in pairs(phList) do
        nm = GetMobByID(v);
        if (nm ~= nil and (nm:isSpawned() or nm:getRespawnTime() ~= 0)) then
            return true;
        end
    end
    return false;
end

-- potential lottery placeholder was killed
function phOnDespawn(ph,phList,chance,cooldown)
    local phId = ph:getID();
    local nmId = phList[phId];
    if (nmId ~= nil) then
        local nm = GetMobByID(nmId);
        if (nm ~= nil) then
            local pop = nm:getLocalVar("pop");
            if (os.time() > pop and not lotteryPrimed(phList) and math.random(100) <= chance) then

                -- on PH death, replace PH repop with NM repop
                -- print(string.format("ph %i winner! nm %i will pop in place",phId,nmId));
                DisallowRespawn(phId, true);
                DisallowRespawn(nmId, false);
                UpdateNMSpawnPoint(nmId);
                nm:setRespawnTime(GetMobRespawnTime(phId));

                nm:addListener("DESPAWN", "DESPAWN_"..nmId, function(m)
                    -- on NM death, replace NM repop with PH repop
                    -- print(string.format("nm %i died. ph %i will pop in place",nmId,phId));
                    DisallowRespawn(nmId, true);
                    DisallowRespawn(phId, false);
                    GetMobByID(phId):setRespawnTime(GetMobRespawnTime(phId));
                    m:setLocalVar("pop", os.time() + cooldown);
                    m:removeListener("DESPAWN_"..nmId);
                end);

            end
        end
    end
end


    -----------------------------------
    -- Legion XI custom section
    -----------------------------------

    -- Custom trials
    --[[if (player:getVar("customtrial") ~= nil) then
        -- doCustomTrial(mob, player, isKiller, killType);
        doCustomTrial(mob, player, isKiller, isWeaponSkillKill);
    end]]

    -- Bonus points
    if (mob:getSystem() == SYSTEM_BEASTMEN) then
        local curReg = player:getCurrentRegion();
        -- Bonus Imperial Standing for ToAU beastmen
        if (player:hasStatusEffect(EFFECT_SANCTION) and curReg >= 28 and curReg <= 32 ) then
            if (player:checkValorCredit(mob) == true) then -- mob must give exp to get full bonus
                player:addCurrency("imperial_standing", 1+mob:getMainLvl()*0.5);
            else -- Not an exp mob, no soup and only 1 point for you!
                player:addCurrency("imperial_standing", 1);
            end
        -- Bonus Allied notes for WotG beastmen
        elseif (player:hasStatusEffect(EFFECT_SIGIL) and curReg >= 33 and curReg <= 40 ) then
            if (player:checkValorCredit(mob) == true) then -- mob must give exp to get full bonus
                player:addCurrency("allied_notes", 1+mob:getMainLvl()*0.5);
            else -- Not an exp mob, no soup and only 1 point for you!
                player:addCurrency("allied_notes", 1);
            end
        end
    end

    -- Work around for effing limbus issues
    if (player:getCurrentRegion() == 27) then -- 27 = REGION_LIMBUS
        bonusLimbusDrop(player);
    end

    -- Torture SoftBanned player
    if (player:getVar("SoftBan") > 0) then
        local magnitude = 1+player:getVar("SoftBan");
        if (mob:isNM() and math.random(1,10) <= magnitude) then
            -- Crash client here using bad menu packet
            player:sendMenu(2);
        end
    end
end;

function bonusLimbusDrop(player)
    local itemRate = 25;
    local itemID = 0;
    local itemList =
    {
        [1] = 1930, [2] = 1931, [3] = 1932,
        [4] = 1933, [5] = 1934, [6] = 1935,
        [7] = 1936, [8] = 1937, [9] = 1938,
        [10] = 1939, [11] = 1940, [12] = 1941,
        [13] = 1942, [14] = 1943, [15] = 1944,
        [16] = 1945, [17] = 1946, [18] = 1947,
        [19] = 1948, [20] = 1949, [21] = 1950,
        [22] = 1951, [23] = 1954, [24] = 1955,
        [25] = 1956, [26] = 1957, [27] = 1958,
        [28] = 1959, [29] = 2656, [30] = 2657,
        [31] = 2658, [32] = 2659, [33] = 2660,
        [34] = 2661, [35] = 2714, [36] = 2715,
        [37] = 2716, [38] = 2717 -- Big damn thing ain't it?
    };

    if (itemRate > math.random(0,99)) then
        itemID = itemList[math.random(1,38)];
    end

    if (itemID > 0) then
        local TextIDs = "scripts/zones/" .. player:getZoneName() .. "/TextIDs";
        package.loaded[TextIDs] = nil;
        require(TextIDs);

        if (player:getFreeSlotsCount() > 0) then
            player:addItem(itemID);
            player:messageSpecial(ITEM_OBTAINED,itemID);
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,itemID);
        end
    end
end;