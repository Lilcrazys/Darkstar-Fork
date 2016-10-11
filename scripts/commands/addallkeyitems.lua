---------------------------------------------------------------------------------------------------
-- func: @addallkeyitems
-- desc: Bravely tries to give every existing KI..which may break missions and quests
---------------------------------------------------------------------------------------------------

cmdprops=
{
    permission = 6,
    parameters = ""
}
function onTrigger(player)
    require("scripts/globals/keyitems");
    z=1;
    while z <= 2544 do
        player:addKeyItem(z);
        z = z + 1;
    end
end