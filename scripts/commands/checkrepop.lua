---------------------------------------------------------------------------------------------------
-- func: checkrepop
-- desc: checks NM repop data by reading server variables
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "s"
};

local function secondsToTime(sec)
    local seconds = tonumber(sec);

    if (seconds <= 0) then
        return '00:00:00';
    end

    local h = string.format('%02.f', math.floor(seconds / 3600));
    local m = string.format('%02.f', math.floor(seconds / 60 - (h * 60)));
    local s = string.format('%02.f', math.floor(seconds - h * 3600 - m * 60));

    return string.format('%s:%s:%s', h, m, s);
end

function onTrigger(player, monster)
    if (monster == nil) then
        player:PrintToPlayer("specify a monster to check, by name, in lowercase.");
    elseif (monster == "faf" or monster == "nid" or monster == "fafnir" or monster == "nidhogg") then
        local NidDue = GetServerVariable("[POP]Nidhogg");
        local FafToD = GetServerVariable("Our_Fafnir_ToD");
        local FafKills = GetServerVariable("[PH]Nidhogg");
        player:PrintToPlayer(string.format("Fafnir Count: %u", FafKills));
        player:PrintToPlayer(string.format("Last Fafnir ToD: %u", FafToD));
        player:PrintToPlayer(string.format("Next Nidhogg due at: %u", NidDue));

        local t1 = FafToD;
        local t2 = os.time(t);
        local t3 = os.difftime(t2,t1);
        player:PrintToPlayer('Time Since Last Fafnir: ' .. secondsToTime(t3));
    elseif (monster == "ada" or monster == "aspid" or monster == "adamantoise" or monster == "aspidochelone") then
        local AspDue = GetServerVariable("[POP]Aspidochelone");
        local AdaToD = GetServerVariable("Our_Adamantoise_ToD");
        local AdaKills = GetServerVariable("[PH]Aspidochelone");
        player:PrintToPlayer(string.format("Adamantoise Count: %u", AdaKills));
        player:PrintToPlayer(string.format("Last Adamantoise ToD: %u", AdaToD));
        player:PrintToPlayer(string.format("Next Aspidochelone due at: %u", AspDue));

        local t1 = AdaToD;
        local t2 = os.time(t);
        local t3 = os.difftime(t2,t1);
        player:PrintToPlayer('Time Since Last Adamantoise: ' .. secondsToTime(t3));
    elseif (monster == "behe" or monster == "kb" or monster == "behemoth" or monster == "kingbehemoth" or monster == "king_behemoth") then
        local KBeDue = GetServerVariable("[POP]King_Behemoth");
        local BehToD = GetServerVariable("Our_Behemoth_ToD");
        local BehKills = GetServerVariable("[PH]King_Behemoth");
        player:PrintToPlayer(string.format("Behemoth Count: %u", BehKills));
        player:PrintToPlayer(string.format("Last Behemoth ToD: %u", BehToD));
        player:PrintToPlayer(string.format("Next King Behemoth due at: %u", KBeDue));

        local t1 = BehToD;
        local t2 = os.time(t);
        local t3 = os.difftime(t2,t1);
        player:PrintToPlayer('Time Since Last Behemoth: ' .. secondsToTime(t3));
    else
        player:PrintToplayer("That monster isn't handled in this command at this time.");
    end

    player:PrintToPlayer(string.format("Current Time: %u", os.time(t)));
end;