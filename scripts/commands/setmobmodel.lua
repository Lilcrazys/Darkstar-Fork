---------------------------------------------------------------------------------------------------
-- func: @setmobmodel <Model ID Here>
-- desc: attempts to change model for monster targeted by in game cursor
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "i"
};

function onTrigger(player,ID)
    local target = player:getCursorTarget();

    if ((target == nil or ID == nil)
    or (not(target:isMob() and player:getZoneID() == 49))) then
        player:PrintToPlayer("Must target a monster in zone 49.");
        return;
    end

    target:setModelId(ID);
end;
