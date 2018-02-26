---------------------------------------------------------------------------------------------------
-- func: message2self <optional MSG_TYPE> <MSG_TEXT>
-- desc: Spoofs a chat message to self for testing
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "issssssssssssssssssss"
};

require("scripts/globals/msg");

function onTrigger(player, MSG_TYPE, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
    -- Todo: replace this crap using 1 string parameter and doing a split at the 1st space.
    if (t == nil) then t = ""; end      if (s == nil) then s = ""; end
    if (r == nil) then r = ""; end      if (q == nil) then q = ""; end
    if (p == nil) then p = ""; end      if (o == nil) then o = ""; end
    if (n == nil) then n = ""; end      if (m == nil) then m = ""; end
    if (l == nil) then l = ""; end      if (k == nil) then k = ""; end
    if (j == nil) then j = ""; end      if (i == nil) then i = ""; end
    if (h == nil) then h = ""; end      if (g == nil) then g = ""; end
    if (f == nil) then f = ""; end      if (e == nil) then e = ""; end
    if (d == nil) then d = ""; end      if (c == nil) then c = ""; end
    if (b == nil) then b = ""; end      if (a == nil) then a = ""; end
    -- Seriously, the above was a crappy hacky way to get it done in a hurry.
    local MSG_TEXT = table.concat(
    {
        a, " ", b, " ", c, " ", d, " ", e, " ", f, " ", g, " ",
        h, " ", i, " ", j, " ", k, " ", l, " ", m, " ", n, " ",
        o, " ", p, " ", q, " ", r, " ", s, " ", t
    });

    if ((MSG_TYPE == nil or tonumber(MSG_TYPE) == nil) or MSG_TEXT == nil) then
        -- player:PrintToPlayer("message2self <MSG_TYPE> <message text spaces are allowed>");
        player:PrintToPlayer("Didn't see a valid MSG_TYPE, so printing available types at you!");
        player:PrintToPlayer("Say = 0", 0);
        player:PrintToPlayer("Shout = 1", 1);
        player:PrintToPlayer("Tell = 2", 2);
        player:PrintToPlayer("Party = 4", 4);
        player:PrintToPlayer("1st LS = 5", 5);
        player:PrintToPlayer("System message = 6 or 7", 6);
        player:PrintToPlayer("Emote = 8", 8);
        player:PrintToPlayer("Say with no name = 13", 13);
        player:PrintToPlayer("Shout with no name = 14", 14);
        player:PrintToPlayer("Party with no name = 15", 15);
        player:PrintToPlayer("1st LS with no name = 16", 16);
        player:PrintToPlayer("Yell = 26", 26);
        player:PrintToPlayer("2nd LS = 27", 27);
        player:PrintToPlayer("2nd LS with no name = 28", 28);
        player:PrintToPlayer("Echo/system3", 29);
        player:PrintToPlayer("Unity = 33", 33);
    else
        player:PrintToPlayer(MSG_TEXT, MSG_TYPE, player:getName());
    end
end;
