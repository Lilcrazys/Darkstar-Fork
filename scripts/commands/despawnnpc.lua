---------------------------------------------------------------------------------------------------
-- func: despawnnpc
-- desc: Spawns an NPC.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "i"
};

function onTrigger(player, npcId)
    local npc = GetNPCByID(npcId);
    if (npc == nil) then
        player:PrintToPlayer( string.format( "NPC with ID '%i' not found!", npcId ) );
        return;
    end

    if (npc:isNPC()) then
        require("scripts/globals/status");
        npc:setStatus(STATUS_DISAPPEAR);
    else
        player:PrintToPlayer( string.format( "NPC with ID '%i' not found!", npcId ) );
    end
end