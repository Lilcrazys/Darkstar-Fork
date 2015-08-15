-----------------------------------------------
-- func: @checktrial <target>
-- desc: checks custom trial progress.
-----------------------------------------------
require("scripts/globals/custom_trials");
-- require("scripts/globals/spoofchat");
-----------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)
    if (player:getGMLevel() == 0 or player:getVar("AssistantGM") == 0)
        -- No message so reg plays can't even tell it exists!
        return;
    end

    if (target == nil) then
        player:PrintToPlayer("You must specify the player to check, while on the same map server.");
        return;
    end

    local thisDude = nil;

    if (GetPlayerByName(target) == nil) then
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        player:PrintToPlayer("Make sure the target is online and you are on the same map server.");
        return;
    else
        thisDude = GetPlayerByName(target);
    end

    local TRIAL = thisDude:getVar("C_TRIAL_ITEM");
    local RELIC_LV = getCurrentStage(RELIC, TRIAL);
    local MYTHIC_LV = getCurrentStage(MYTHIC, TRIAL);

    if (TRIAL == 0 or TRIAL == nil) then
        player:PrintToPlayer("Target doesn't appear to have an active trial.");
    else
        player:PrintToPlayer(string.format("Trial ID : %u", TRIAL));
        player:PrintToPlayer(string.format("Completion status : %u", thisDude:getVar("C_TRIAL_COMPLETE")));
        if (RELIC_LV == 1) then
            player:PrintToPlayer(string.format("Seww the Squidlimbed : %u of 4", thisDude:getVar("C_TRIAL_OBJ_1")));
            player:PrintToPlayer(string.format("Megalobugard : %u of 4", thisDude:getVar("C_TRIAL_OBJ_2")));
            player:PrintToPlayer(string.format("Dune Widow : %u of 3", thisDude:getVar("C_TRIAL_OBJ_3")));
            player:PrintToPlayer(string.format("Mischievous Micholas : %u of 4", thisDude:getVar("C_TRIAL_OBJ_4")));
            player:PrintToPlayer(string.format("Intulo : %u of 4", thisDude:getVar("C_TRIAL_OBJ_5")));
            player:PrintToPlayer(string.format("Keeper of Halidom : %u of 4", thisDude:getVar("C_TRIAL_OBJ_6")));
        elseif (RELIC_LV == 2) then
            player:PrintToPlayer(string.format("Adamantoise : %u of 7", thisDude:getVar("C_TRIAL_OBJ_1")));
            player:PrintToPlayer(string.format("Behemoth : %u of 7", thisDude:getVar("C_TRIAL_OBJ_2")));
            player:PrintToPlayer(string.format("Fafnir : %u of 7", thisDude:getVar("C_TRIAL_OBJ_3")));
        elseif (RELIC_LV == 3) then
            player:PrintToPlayer(string.format("Juggler Hecatomb : %u of 4", thisDude:getVar("C_TRIAL_OBJ_1")));
            player:PrintToPlayer(string.format("Ash Dragon : %u of 4", thisDude:getVar("C_TRIAL_OBJ_2")));
            player:PrintToPlayer(string.format("Aspidochelone : %u of 4", thisDude:getVar("C_TRIAL_OBJ_3")));
            player:PrintToPlayer(string.format("King Behemoth : %u of 4", thisDude:getVar("C_TRIAL_OBJ_4")));
            player:PrintToPlayer(string.format("Nidhogg : %u of 4", thisDude:getVar("C_TRIAL_OBJ_5")));
        elseif (RELIC_LV == 4) then
            player:PrintToPlayer(string.format("Tanzenite Jewels delivered : %u of 50", thisDude:getVar("C_TRIAL_OBJ_1")));
        elseif (MYTHIC_LV == 1) then
            player:PrintToPlayer(string.format("Brass Borer : %u of 5", thisDude:getVar("C_TRIAL_OBJ_1")));
            player:PrintToPlayer(string.format("Iriz Irma : %u of 5", thisDude:getVar("C_TRIAL_OBJ_2")));
            player:PrintToPlayer(string.format("Velionis : KILLS %u of 5", thisDude:getVar("C_TRIAL_OBJ_3")));
            player:PrintToPlayer(string.format("Zareehkl the Jubilant : %u of 5", thisDude:getVar("C_TRIAL_OBJ_4")));
            player:PrintToPlayer(string.format("Dextrose KILLS : %u of 5", thisDude:getVar("C_TRIAL_OBJ_5")));
            player:PrintToPlayer(string.format("Iriri Samariri : %u of 5", thisDude:getVar("C_TRIAL_OBJ_6")));
        elseif (MYTHIC_LV == 2) then
            player:PrintToPlayer(string.format("Achamoth : %u of 4", thisDude:getVar("C_TRIAL_OBJ_1")));
            player:PrintToPlayer(string.format("Armed Gears : %u of 4", thisDude:getVar("C_TRIAL_OBJ_2")));
            player:PrintToPlayer(string.format("Nosferatu : %u of 4", thisDude:getVar("C_TRIAL_OBJ_3")));
            player:PrintToPlayer(string.format("Experimental Lamia : %u of 4", thisDude:getVar("C_TRIAL_OBJ_4")));
        elseif (MYTHIC_LV == 3) then
            player:PrintToPlayer(string.format("Hydra : %u of 3", thisDude:getVar("C_TRIAL_OBJ_1")));
            player:PrintToPlayer(string.format("Cerberus : %u of 3", thisDude:getVar("C_TRIAL_OBJ_2")));
            player:PrintToPlayer(string.format("Khimara : %u of 3", thisDude:getVar("C_TRIAL_OBJ_3")));
            player:PrintToPlayer(string.format("Gulool Ja Ja : %u of 3", thisDude:getVar("C_TRIAL_OBJ_4")));
            player:PrintToPlayer(string.format("Gurfurlur the Menacing : %u of 3", thisDude:getVar("C_TRIAL_OBJ_5")));
            player:PrintToPlayer(string.format("Medusa : %u of 3", thisDude:getVar("C_TRIAL_OBJ_6")));
        elseif (MYTHIC_LV == 4) then
            player:PrintToPlayer(string.format("Tanzenite Jewels delivered : %u of 50", thisDude:getVar("C_TRIAL_OBJ_1")));
        else
            player:PrintToPlayer("Target has an Trial active, but it is one not handled by this command.");
        end
    end
end;