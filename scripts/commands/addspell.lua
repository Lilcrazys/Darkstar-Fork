---------------------------------------------------------------------------------------------------
-- func: addspell <spellID> <player>
-- desc: adds the ability to use a spell to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@addspell <spellID> {player}");
end;

function onTrigger(player, spellId, target)
    -- validate spellId
    if (spellId == nil) then
        error(player, "Invalid spellID.");
        return;
    end

    -- validate target
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target));
            return;
        end
    end

    -- add spell
    targ:addSpell(spellId);
    player:PrintToPlayer(string.format("Added spell %i to %s.",spellId,targ:getName()));

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/addspell.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "ID of spell given: ".. spellId,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;