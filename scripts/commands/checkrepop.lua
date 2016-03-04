---------------------------------------------------------------------------------------------------
-- func: checkrepop
-- desc: checks NM repop data by reading server variables
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

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
    elseif (monster == "ada" or monster == "aspid" or monster == "adamantoise" or monster == "aspidochelone") then
        local AspDue = GetServerVariable("[POP]Aspidochelone");
        local AdaToD = GetServerVariable("Our_Adamantoise_ToD");
        local AdaKills = GetServerVariable("[PH]Aspidochelone");
        player:PrintToPlayer(string.format("Adamantoise Count: %u", AdaKills));
        player:PrintToPlayer(string.format("Last Adamantoise ToD: %u", AdaToD));
        player:PrintToPlayer(string.format("Next Aspidochelone due at: %u", AspDue));
    elseif (monster == "behe" or monster == "kb" or monster == "behemoth" or monster == "kingbehemoth" or monster == "king_behemoth") then
        local KBeDue = GetServerVariable("[POP]King_Behemoth");
        local BehToD = GetServerVariable("Our_Behemoth_ToD");
        local BehKills = GetServerVariable("[PH]King_Behemoth");
        player:PrintToPlayer(string.format("Behemoth Count: %u", BehKills));
        player:PrintToPlayer(string.format("Last Behemoth ToD: %u", BehToD));
        player:PrintToPlayer(string.format("Next King Behemoth due at: %u", KBeDue));
    else
        player:PrintToplayer("That monster isn't handled in this command at this time.");
    end

    player:PrintToPlayer(string.format("Current Time: %u", os.time(t)));
end;