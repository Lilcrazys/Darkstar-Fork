---------------------------------------------------------------------------------------------------
-- func: getstats
-- desc: prints stats of cursor target into chatlog, for debugging.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    require("scripts/globals/status");
    require("scripts/globals/spoofchat");
    local target = player:getCursorTarget();
    if (target ~= nil) then
        player:SpoofChatPlayer(string.format("MainJob(jID:%s) Level: %s", target:getMainJob(), target:getMainLvl()), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("SubJob(jID:%s) Level: %s", target:getSubJob(), target:getSubLvl()), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Food Accuracy%% bonus: %s", target:getMod(MOD_FOOD_ACCP)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Accuracy bonus: %s", target:getMod(MOD_ACC)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("EVA Bonus: %s", target:getMod(MOD_EVA)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total STR: %s", target:getStat(MOD_STR)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total DEX: %s", target:getStat(MOD_DEX)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total VIT: %s", target:getStat(MOD_VIT)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total AGI: %s", target:getStat(MOD_AGI)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total MND: %s", target:getStat(MOD_MND)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total INT: %s", target:getStat(MOD_INT)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total CHR: %s", target:getStat(MOD_CHR)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Attack bonus: %s", target:getMod(MOD_ATT)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total Attack: %s", target:getStat(MOD_ATT)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Defense bonus: %s", target:getMod(MOD_DEF)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Total Defense: %s", target:getStat(MOD_DEF)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Magic Attack bonus: %s", target:getMod(MOD_MATT)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Magic Defense bonus: %s", target:getMod(MOD_MDEF)), MESSAGE_ECHO);
        player:SpoofChatPlayer(string.format("Magic Accuracy bonus: %s", target:getMod(MOD_MACC)), MESSAGE_ECHO);
        player:PrintToPlayer("Cannot accurately get Magic Evasion yet..Darkstar does it stupidly.");
    else
        player:PrintToPlayer("Target something first.");
    end
end;
