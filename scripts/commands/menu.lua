---------------------------------------------------------------------------------------------------
-- func: menu test
-- desc: used to test menu's
---------------------------------------------------------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/conquest");



cmdprops =
{
    permission = 6,
    parameters = "i"
};

function onTrigger(player,menu)
    player:sendMenu(menu);
end;
