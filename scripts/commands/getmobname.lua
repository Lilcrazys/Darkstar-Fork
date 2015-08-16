---------------------------------------------------------------------------------------------------
-- func: @getmobname
-- auth: TeoTwawki
-- desc: Prints the database/script name of the targetted monster.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    local targ = player:fetchTargetsID();
    if (targ ~= nil) then
        local name = GetMobByID(targ):getName();
        if (name ~= nil) then
            player:PrintToPlayer(string.format("Selected Target's name is: %s ", name));
        else
            player:PrintToPlayer("Name was not found.");
        end
    else
        player:PrintToPlayer("Must select a target using in game cursor first.");
    end
end;