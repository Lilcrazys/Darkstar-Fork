---------------------------------------------------------------------------------------------------
-- func: spawnmob
-- desc: Spawns a mob.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "iii"
};

function onTrigger(player, mobId, despawntime, respawntime)
    if (mobId == nil) then
        return;
    end
    SpawnMob( mobId, despawntime, respawntime );

    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/spawnmob.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Mob ID: ".. mobId,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end