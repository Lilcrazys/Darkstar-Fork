---------------------------------------------------------------------------------------------------
-- func: cureall
-- desc: Cures the users alliance to full hp and mp.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = ""
};

function onTrigger(player)
    local p = player:getAlliance();
    if (p ~= nil) then
        for _, member in pairs(p) do
            if (member:isPC() and member:getHP() > 0) then
                member:setHP(9999);
                member:setMP(9999);
            end
        end
    end
end