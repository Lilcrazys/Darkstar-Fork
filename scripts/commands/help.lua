---------------------------------------------------------------------------------------------------
-- func: help
-- desc: Lists available GM commands.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local gmlvl = player:getGMLevel();
    -- Displaying commands this player can use, sorted by GM tier, 3 at a time.
    if (gmlvl >= 0) then -- Regular non GM players
        player:PrintToPlayer("Commands available to all players:");
        player:PrintToPlayer("/? (displays client side commands)");
        player:PrintToPlayer("$ecv (displays the servers Expected Client Version)");
        player:PrintToPlayer("$where  $revision  $setmusic  $costume  $grats  $trial");
        player:PrintToPlayer("$shop  $ah  $tele  $atma  $regen (pre 75 only)");
    end

    -- Previous tiers are already displayed, don't duplicate!
    if (gmlvl >= 1) then -- POL icon GM (reduced powers)
        player:PrintToPlayer("Additional commands available to T1 GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end

    if (gmlvl >= 2) then -- Regular GM
        player:PrintToPlayer("Additional commands available to T2 GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end

    if (gmlvl >= 3) then -- Full GM
        player:PrintToPlayer("Additional commands available to T3 GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end

    if (gmlvl >= 4) then -- Senior GM
        player:PrintToPlayer("Additional commands available to T4 GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end

    if (gmlvl >= 5) then -- Lead GM
        player:PrintToPlayer("Additional commands available to T5 GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end
    -- Since each prints until reaching a gmlvl the player doesn't have, this tier sees ALL.
    if (gmlvl >= 6) then -- Developer
        player:PrintToPlayer("Additional commands available to to T6 GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end
    -- Although it IS technically possibly to create tiers as high as 255...
end;
