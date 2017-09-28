---------------------------------------------------------------------------------------------------
-- func: exec
-- desc: Allows you to execute a Lua string directly from chat.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!exec <Lua string>");
end;

function onTrigger(player, str)
    -- Ensure a command was given..
    if (str == nil or string.len(str) == 0) then
        error(player, "You must enter a string to execute.");
        return;
    end

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/exec.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "string: ".. str,
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();


    --[ Anti-Fucked Checks ]------------------------------------------------------------------------
    local test = string.lower(str);
    if (string.find(test, 'io.popen')) then
        player:PrintToPlayer("No.");
        return;
    end
    if (string.find(test, 'powershell')) then
        player:PrintToPlayer("No.");
        return;
    end
    if (string.find(test, '-command')) then
        player:PrintToPlayer("No.");
        return;
    end
    if (string.find(test, 'Invoke-WebRequest')) then
        player:PrintToPlayer("No.");
        return;
    end
    ------------------------------------------------------------------------------------------------


    -- For safety measures we will nuke the os table..
    local old_os = os;
    os = nil;

    -- Ensure the command compiles / is valid..
    local scriptObj, err = loadstring(str);
    if (scriptObj == nil) then
        player:PrintToPlayer("Failed to load the given string.");
        player:PrintToPlayer(err);
        os = old_os;
        return;
    end

    -- Execute the string..
    local status, err = pcall(scriptObj);
    if (status == false) then
        player:PrintToPlayer(err);
    end

    -- Restore the os table..
    os = old_os;
end