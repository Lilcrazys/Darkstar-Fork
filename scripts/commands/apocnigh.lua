--------------------------------------------------------------
-- func: apocnigh
-- desc: opens a custom shop to access buying the apoc nigh earrings.
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

require("scripts/globals/missions");
require("scripts/globals/titles");

function onTrigger(player)
    -- Prevent jail usage..
    if (player:getVar("inJail") > 0 and player:getZoneID() == 131) then
        return;
    end

    -- Must have RoZ and CoP done and rank 9.. (To what Legion can do currently, edit this later as needed.)
    local Zilart_clear = player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS);
    local Chains_clear = player:hasCompletedMission(COP,WHEN_ANGELS_FALL);
    local current_rank = player:getRank();

    if (Zilart_clear == true and Chains_clear == true and current_rank >= 9) then

        local stock = { 
            15965, 5000000, -- Ethereal Earring
            15964, 5000000, -- Hallow Earring
            15963, 5000000, -- Magnetic Earring
            15962, 5000000, -- Static Earring
        };

        if (player:getName() == 'Nyaarun') then -- LOL
            stock = { 
                15965, 999999999, -- Ethereal Earring
                15964, 999999999, -- Hallow Earring
                15963, 999999999, -- Magnetic Earring
                15962, 999999999, -- Static Earring
            };
        end

        showShop(player, STATIC, stock);
        player:PrintToPlayer("You have proven your worth, enjoy the rewards..");

    else
        player:PrintToPlayer("You are not worthy..");
    end
end