---------------------------------------------------------------------------------------------------
-- func: @checkcustomtrial
-- desc: opens the Auction House menu anywhere in the world just to see if we can
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player,target)
    local targ = GetPlayerByName( target );
    if (targ == nil) then
        player:PrintToPlayer("Didn't find that target.");
        return;
    end

    local TRIAL = targ:getVar("CustomTrial");
    if (TRIAL == 0 or TRIAL == nil) then
        player:PrintToPlayer("The 'CustomTrial' variable is missing!");
    else
        local Relic1 = {18318, 15070, 18336, 18306, 18294, 18330, 18276, 18342, 18300, 18288, 18312, 18270, 18324, 18282, 18264, 18348}
        local Relic2 = {18646, 16196, 18649, 18644, 18642, 18648, 18639, 18578, 18643, 18641, 18645, 18638, 18647, 18640, 18637, 18650}
        local Relic3 = {18674, 16198, 18677, 18672, 18670, 18676, 18667, 18580, 18671, 18669, 18673, 18666, 18675, 18668, 18665, 18678}
        local Mythic1 = {18999, 18997, 19000, 18991, 19007, 19001, 18992, 19002, 18994, 18998, 18995, 19003, 19005, 19004, 18989, 19006, 18990}
        local Mythic2 = {19088, 19086, 19089, 19080, 19096, 19090, 19081, 19091, 19803, 19087, 19084, 19092, 19094, 19093, 19098, 19095, 19099}
        local Mythic3 = {19718, 19716, 19719, 19710, 19726, 19720, 19711, 19721, 19713, 19717, 19714, 19722, 19724, 19723, 19728, 19725, 19729}

        player:PrintToPlayer(string.format("Trial ID: %u", TRIAL));
        player:PrintToPlayer(string.format("Completion status: %u", targ:getVar("TRIAL_COMPLETE")));

        if (utils.inTable(Relic1, targ:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Megalobugard_KILLS %u", targ:getVar("Megalobugard_KILLS")));
            player:PrintToPlayer(string.format("Intulo_KILLS %u", targ:getVar("Intulo_KILLS")));
            player:PrintToPlayer(string.format("Keeper_of_Halidom_KILLS %u", targ:getVar("Keeper_of_Halidom_KILLS")));
            player:PrintToPlayer(string.format("Dune_Widow_KILLS %u", targ:getVar("Dune_Widow_KILLS")));
            player:PrintToPlayer(string.format("Seww_the_Squidlimbed_KILLS %u", targ:getVar("Seww_the_Squidlimbed_KILLS")));
            player:PrintToPlayer(string.format("Mischievous_Micholas_KILLS %u", targ:getVar("Mischievous_Micholas_KILLS")));
        elseif (utils.inTable(Relic2, targ:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Adamantoise_KILLS %u", targ:getVar("Adamantoise_KILLS")));
            player:PrintToPlayer(string.format("Behemoth_KILLS %u", targ:getVar("Behemoth_KILLS")));
            player:PrintToPlayer(string.format("Fafnir_KILLS %u", targ:getVar("Fafnir_KILLS")));
        elseif (utils.inTable(Relic3, targ:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Aspidochelone_KILLS %u", targ:getVar("Aspidochelone_KILLS")));
            player:PrintToPlayer(string.format("King_Behemoth_KILLS %u", targ:getVar("King_Behemoth_KILLS")));
            player:PrintToPlayer(string.format("Juggler_Hecatomb_KILLS %u", targ:getVar("Juggler_Hecatomb_KILLS")));
            player:PrintToPlayer(string.format("Ash_Dragon_KILLS %u", targ:getVar("Ash_Dragon_KILLS")));
            player:PrintToPlayer(string.format("Nidhogg_KILLS %u", targ:getVar("Nidhogg_KILLS")));
        elseif (utils.inTable(Mythic1, targ:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Zareehkl_the_Jubilant_KILLS %u", targ:getVar("Zareehkl_the_Jubilant_KILLS")));
            player:PrintToPlayer(string.format("Brass_Borer_KILLS %u", targ:getVar("Brass_Borer_KILLS")));
            player:PrintToPlayer(string.format("Iriri_Samariri_KILLS %u", targ:getVar("Iriri_Samariri_KILLS")));
            player:PrintToPlayer(string.format("Dextrose_KILLS %u", targ:getVar("Dextrose_KILLS")));
            player:PrintToPlayer(string.format("Velionis_KILLS %u", targ:getVar("Velionis_KILLS")));
            player:PrintToPlayer(string.format("Iriz_Irma_KILLS %u", targ:getVar("Iriz_Irma_KILLS")));
        elseif (utils.inTable(Mythic2, targ:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Experimental_Lamia_KILLS %u", targ:getVar("Experimental_Lamia_KILLS")));
            player:PrintToPlayer(string.format("Nosferatu_KILLS %u", targ:getVar("Nosferatu_KILLS")));
            player:PrintToPlayer(string.format("Armed_Gears_KILLS %u", targ:getVar("Armed_Gears_KILLS")));
            player:PrintToPlayer(string.format("Achamoth_KILLS %u", targ:getVar("Achamoth_KILLS")));
        elseif (utils.inTable(Mythic3, targ:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Gurfurlur_the_Menacing_KILLS %u", targ:getVar("Gurfurlur_the_Menacing_KILLS")));
            player:PrintToPlayer(string.format("Gulool_Ja_Ja_KILLS %u", targ:getVar("Gulool_Ja_Ja_KILLS")));
            player:PrintToPlayer(string.format("Cerberus_KILLS %u", targ:getVar("Cerberus_KILLS")));
            player:PrintToPlayer(string.format("Khimara_KILLS %u", targ:getVar("Khimara_KILLS")));
            player:PrintToPlayer(string.format("Medusa_KILLS %u", targ:getVar("Medusa_KILLS")));
            player:PrintToPlayer(string.format("Hydra_KILLS %u", targ:getVar("Hydra_KILLS")));
        else
            player:PrintToPlayer("Target has a CustomTriakl variable set, but it is one not handled by this command.");
        end
    end
end;