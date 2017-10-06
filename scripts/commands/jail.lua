---------------------------------------------------------------------------------------------------
-- func: jail
-- desc: Sends the target player to jail. (Mordion Gaol)
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "sis"
};

function doLogging(player,target,cellId,reason)
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/jail.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. target,
    "\n", "Jail cell: ".. cellId,
    "\n", "Reason: ".. reason,
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();
end;

function onTrigger(player, target, cellId, reason)
    if (target == nil) then
        player:PrintToPlayer("You must enter a valid player name.");
        return;
    end

    local jailCells =
    {
        -- Floor 1 (Bottom)
        {-620, 11,  660, 0},  {-180, 11,  660, 0}, {260, 11,  660, 0}, {700, 11,  660, 0},
        {-620, 11,  220, 0},  {-180, 11,  220, 0}, {260, 11,  220, 0}, {700, 11,  220, 0},
        {-620, 11, -220, 0},  {-180, 11, -220, 0}, {260, 11, -220, 0}, {700, 11, -220, 0},
        {-620, 11, -620, 0},  {-180, 11, -620, 0}, {260, 11, -620, 0}, {700, 11, -620, 0},

        -- Floor 2 (Top)
        {-620, -400,  660, 0},  {-180, -400,  660, 0}, {260, -400,  660, 0}, {700, -400,  660, 0},
        {-620, -400,  220, 0},  {-180, -400,  220, 0}, {260, -400,  220, 0}, {700, -400,  220, 0},
        {-620, -400, -220, 0},  {-180, -400, -220, 0}, {260, -400, -220, 0}, {700, -400, -220, 0},
        {-620, -400, -620, 0},  {-180, -400, -620, 0}, {260, -400, -620, 0}, --{700, -400, -620, 0}, cell32 reserved for auto jail
    };

    -- Validate the target..
    local targ = GetPlayerByName(target);
    --[[
    if (targ == nil) then
        player:PrintToPlayer( string.format( "Invalid player '%s' given.", target ) );
        return;
    end
    ]]

    -- Validate the cell id..
    if (cellId == nil or cellId == 0 or cellId > 31) then
        cellId = 1;
    end

    -- Validate the reason..
    if (reason == nil) then
        reason = "Unspecified.";
    end

    local dest = jailCells[ cellId ];

    -- Check if target is online, decide which jail command to try
  if (targ == nil) then
    -- Offline or wrong name: jailOffline() returns a bool for the latter case
    if (player:offlineJail(target, cellId, dest[1], dest[2], dest[3])) then
        -- Print that we have jailed someone..
        local message = string.format("%s jailed %s into cell %d. Reason: %s", player:getName(), target, cellId, reason);
        player:PrintToPlayer(message);
        printf(message);
    else
        player:PrintToPlayer("Offline Jail Command Failed!");
    end
  else
    -- Print that we have jailed someone..
    local message = string.format( '%s jailed %s(%d) into cell %d. Reason: %s', player:getName(), target, targ:getID(), cellId, reason );
    player:PrintToPlayer(message);
    printf( message );

    -- Send the target to jail..
    targ:setVar( "inJail", cellId );
    targ:setPos( dest[1], dest[2], dest[3], dest[4], 131 );
  end
    doLogging(player,target,cellId,reason)
end