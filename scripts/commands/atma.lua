---------------------------------------------------------------------------------------------------
-- func: @atma <option>
-- desc: save or restore an ATMA set. Only works in Abyssea.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, option)
    if (player:getCurrentRegion() ~= 41) then
        player:PrintToPlayer("Cannot use this command outside of Abyssea!");
        return
    end

    if (option == "show") then
        player:PrintToPlayer("Not yet implemented.");
    elseif (option == "restore") then
        if (player:hasStatusEffect(EFFECT_ATMA) or player:getVar("ACTIVE_ATMA_COUNT") > 0) then
            player:PrintToPlayer("You seem to already have an ATMA effect present..");
            return
        else
            -- Loading saved ATMA
            require("scripts/globals/atma");

            if (player:getVar("PREV_ATMA_1") == 0) then
                player:PrintToPlayer("Saved ATMA set not found. You must first record a set to use.");
            else
                if (player:getVar("PREV_ATMA_1") > 0) then
                    applyATMA(player, player:getVar("PREV_ATMA_1"))
                end
                if (player:getVar("PREV_ATMA_2") > 0) then
                    applyATMA(player, player:getVar("PREV_ATMA_2"))
                end
                if (player:getVar("PREV_ATMA_3") > 0) then
                    applyATMA(player, player:getVar("PREV_ATMA_3"))
                end
            end
        end
    elseif (option == "save") then
        -- Saving current ATMA to player variables.
        if (player:getVar("ACTIVE_ATMA_COUNT") > 0) then
            if (player:hasStatusEffect(EFFECT_ATMA)) then
                player:setVar("PREV_ATMA_1", player:getStatusEffect(EFFECT_ATMA):getPower())
            end
            if (player:hasStatusEffect(EFFECT_ATMA_2)) then
                player:setVar("PREV_ATMA_2", player:getStatusEffect(EFFECT_ATMA_2):getPower())
            end
            if (player:hasStatusEffect(EFFECT_ATMA_3)) then
                player:setVar("PREV_ATMA_3", player:getStatusEffect(EFFECT_ATMA_3):getPower())
            end
            player:PrintToPlayer("ATMA set has been recorded.");
        else
            player:PrintToPlayer("Must have 1 or more active ATMA effects to record!");
        end
    else
        player:PrintToPlayer("usage:  @atma save  OR  @atma restore");
    end
end;