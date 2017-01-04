-----------------------------------------
-- ID: 11538
-- Item: Nexus Cape
-- Enchantment: "Teleport" (Party Leader)
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/teleports");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 56; -- Default is fail.
    local leader = target:getPartyLeader();
    -- In a party and we were able to find the leader
    -- (currently fails in cross map server situations)
    if (leader ~= nil) then
        -- Don't try to teleport to self!
        if (target:getID() ~= leader:getID()) then
            local leaderZone = leader:getZoneID();
            local validZoneList =
            {
                -- Custom list of zones allowed:
                2,4,7,11,12,24,25,26,27,48,50,51,52,53,54,61,62,65,68,79,80,81,
                82,83,84,87,88,89,90,91,94,95,96,97,98,109,120,121,122,125,130,136,
                137,138,140,141,142,143,145,147,149,151,153,154,155,157,158,159,160,
                161,162,163,164,166,167,168,169,171,172,173,174,175,176,177,178,184,
                190,191,192,193,194,195,196,197,198,200,204,205,208,212,213,

                -- List of zones Retail allowed:
                005,007,100,101,102,103,104,105,106,107,108,110,111,112,113,114,
                115,116,117,118,119,120,123,124,126,127,128,230,231,232,234,235,
                236,238,239,240,241,243,244,245,246,247,248,249,250,252,257
            }
            -- Make sure we can actually tele to that zone..
            for _, validZone in ipairs(validZoneList) do
                if (validZone == leaderZone) then
                    result = 0;
                end
            end
        end
    end

    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    local timeCheck = os.date("*t")
    local month = timeCheck.month;
    if (month < 10) then month = tostring("0"..month); end
    local day = timeCheck.day;
    if (day < 10) then day = tostring("0"..day); end
    print(target:getName().." used Nexus Cape");
    target:setVar("NexusCapeDATE", timeCheck.year .. month .. day);
    target:setVar("NexusCapeHOUR", timeCheck.hour);
    target:setVar("NexusCapeMINUTE", timeCheck.min);
    target:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_TO_LEADER,0,1);
end;