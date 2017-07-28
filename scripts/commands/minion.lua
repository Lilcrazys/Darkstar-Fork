---------------------------------------------------------------------------------------------------
-- func: @minion <sub command>
-- desc: temp code for Teo's temporary minions, as needed.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ssss"
};

function onTrigger(player, subcom, param, param2, param3)
    -- Force arguments to uppercase..
    if (subcom ~= nil) then subcom = string.upper(subcom); end
    if (param ~= nil) then param = string.upper(param); end
    if (param2 ~= nil) then param2 = string.upper(param2); end
    if (param3 ~= nil) then param3 = string.upper(param3); end

    -- Set muh variables!
    local minionLV = player:getVar("_isMinion_");
    local MINION_FLAG = 0x00010000; -- POL icon (Blue Ball)
    local tierIndex =
    {
        ["HELP"]     = {tier=1},
        ["TOGGLE"]   = {tier=1},
        ["QUIT"]     = {tier=1},
        ["WARP"]     = {tier=1},
        ["ZONELIST"] = {tier=1},
        ["ZONE"]     = {tier=1},
        ["TEST1"]    = {tier=1},
        ["TEST2"]    = {tier=2},
        ["TEST3"]    = {tier=3},
        ["TEST4"]    = {tier=4},
        ["TEST5"]    = {tier=5}
    };
    local getTiers = tierIndex[subcom];
    if (getTiers == nil) then return end -- Prevent typo & such from generating BS console log errors
    local isLegit = getTiers.tier;

    if (minionLV == 0 or minionLV < isLegit) then
        player:PrintToPlayer("SHENANIGANS DETECTED!");
        return;
    end

    if (subcom == nil or subcom == "HELP") then
        if (param == nil) then
            player:PrintToPlayer("$minion <subcommand> <parameters, parameters, parameters>");
            player:PrintToPlayer("For specific commands: $minion <help> <command>");
        else
            local getHelpTiers = tierIndex[param];
            if (getHelpTiers == nil) then return end -- prevent BS errors again..
            local isHelpLegit = getHelpTiers.tier;
            if (minionLV >= isHelpLegit) then
                if (param == "HELP" or param == "42") then
                    player:PrintToPlayer(string.format("Very funny. Move along minion number %d ! ", ((player:getID()+50000)/500)+1));
                elseif (param == "TOGGLE") then
                    player:PrintToPlayer("Toggles minion icon on and off. ");
                elseif (param == "QUIT") then
                    player:PrintToPlayer("Voluntarily quit being a minion, forever. ");
                    player:PrintToPlayer("$minion quit I-am-sure ");
                elseif (param == "WARP") then
                    player:PrintToPlayer("Exactly what it says on the tin (It's Warp). ");
                elseif (param == "ZONELIST") then
                    player:PrintToPlayer("Displays a list of zones and their IDs.");
                    player:PrintToPlayer("Unfinished command. ");
                elseif (param == "ZONE") then
                    player:PrintToPlayer("Jump to specified zone. ");
                    player:PrintToPlayer("Unfinished command. ");
                end
            end
        end
    else
        if (subcom == "TOGGLE") then
            if (player:checkNameFlags(MINION_FLAG)) then
                player:setFlag(MINION_FLAG);
            else
                if (minionLV > 0) then
                    player:setFlag(MINION_FLAG);
                end
            end
        elseif (subcom == "QUIT" and param == "I-AM-SURE") then
            if (player:checkNameFlags(MINION_FLAG)) then
                player:setFlag(MINION_FLAG);
            end
            player:setVar("_isMinion_", 0);
            player:PrintToPlayer("You are longer a Minion. ");
        elseif (subcom == "WARP") then
            if (player:getVar("inJail") == 0 and player:getZoneID() ~= 131) then
                require("scripts/globals/status");
                require("scripts/globals/teleports");
                player:injectActionPacket(4, 261, 0, 0, 0);
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,4);
            else
                player:PrintToPlayer("CANNOT TELEPORT JAILED CHARACTER! ");
            end
        elseif (subcom == "ZONELIST") then
            player:PrintToPlayer("Unfinished command. ");
        elseif (subcom == "ZONE") then
        end
    end
end;
