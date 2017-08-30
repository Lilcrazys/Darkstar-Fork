---------------------------------------------------------------------------------------------------
-- func: !getmodel
-- desc: gets appearance of targeted entity
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
  if (player:getzoneID() == 49) then
    local target == player:getCursorTarget();
    if (target == nil) then
        player:PrintToPlayer("Must target with cursor first!");
        return;
    end
    player:PrintToPlayer("Model ID is: %d", target:getModelId());
  end
end;
