---------------------------------------------------------------------------------------------------
-- func: additem <itemId> <quantity> <aug1> <v1> <aug2> <v2> <aug3> <v3> <aug4> <v4> <trial>
-- desc: Adds an item to the GMs inventory.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "iiiiiiiiiii"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!additem <itemId> {quantity} {aug1} {v1} {aug2} {v2} {aug3} {v3} {aug4} {v4} {trial}");
end;

function onTrigger(player, itemId, quantity, aug0, aug0val, aug1, aug1val, aug2, aug2val, aug3, aug3val, trialId)
    -- Load needed text ids for players current zone..
    local TextIDs = "scripts/zones/" .. player:getZoneName() .. "/TextIDs";
    package.loaded[TextIDs] = nil;
    require(TextIDs); 

    -- validate itemId
    if (itemId == nil or tonumber(itemId) == nil or tonumber(itemId) == 0) then
        error(player, "Invalid itemId.");
        return;
    end
    
    -- Ensure the GM has room to obtain the item...
    if (player:getFreeSlotsCount() == 0) then
        player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, itemId );
        return;
    end
    
    -- Give the GM the item...
    player:addItem( itemId, quantity, aug0, aug0val, aug1, aug1val, aug2, aug2val, aug3, aug3val, trialId );
    player:messageSpecial( ITEM_OBTAINED, itemId );

    -- Log it
    local a_var = amount or 1;
    local b_var = aug0 or 0;
    local c_var = aug0val or 0;
    local d_var = aug1 or 0;
    local e_var = aug1val or 0;
    local f_var = aug2 or 0;
    local g_var = aug2val or 0;
    local h_var = aug3 or 0;
    local i_var = aug3val or 0;
    local j_var = trialId or 0;
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/additem.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "ID of item given: ".. itemId,
    "\n", "Amount given:     ".. a_var,
    "\n", "Augment ID 1:     ".. b_var,
    "\n", "Augment Tier 1:   ".. c_var,
    "\n", "Augment ID 2:     ".. d_var,
    "\n", "Augment Tier 2:   ".. e_var,
    "\n", "Augment ID 3:     ".. f_var,
    "\n", "Augment Tier 3:   ".. g_var,
    "\n", "Augment ID 4:     ".. h_var,
    "\n", "Augment Tier 4:   ".. i_var,
    "\n", "Magian Trial ID:  ".. j_var,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end