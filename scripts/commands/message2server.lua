---------------------------------------------------------------------------------------------------
-- func: @message2server <MSG_TEXT> <optional MSG_TYPE>
-- desc: Spoofs a chat message to the entire server. Max 20 words.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "issssssssssssssssssss"
};

require("scripts/globals/spoofchat");

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
    local MSG_TEXT = table.concat(
    {
        a, " ", b, " ", c, " ", d, " ", e, " ", f, " ", g, " ",
        h, " ", i, " ", j, " ", k, " ", l, " ", m, " ", n, " ",
        o, " ", p, " ", q, " ", r, " ", s, " ", t
    });

    if ((MSG_TYPE == nil or tonumber(MSG_TYPE) == nil) or MSG_TEXT == nil) then
        -- player:PrintToPlayer("@message2server <MSG_TYPE> <message text spaces are allowed>");
        player:PrintToPlayer("Didn't see a valid MSG_TYPE, so printing available types at you!");
        player:SpoofMsg("Say = 0", nil, 0, nil, nil);
        player:SpoofMsg("Shout = 1", nil, 1, nil, nil);
        player:SpoofMsg("Tell = 2", nil, 2, nil, nil);
        player:SpoofMsg("Party = 4", nil, 4, nil, nil);
        player:SpoofMsg("1st LS = 5", nil, 5, nil, nil);
        player:SpoofMsg("System message = 6 or 7", nil, 6, nil, nil);
        player:SpoofMsg("Emote = 8", nil, 8, nil, nil);
        player:SpoofMsg("Say with no name = 13", nil, 13, nil, nil);
        player:SpoofMsg("Shout with no name = 14", nil, 14, nil, nil);
        player:SpoofMsg("Party with no name = 15", nil, 15, nil, nil);
        player:SpoofMsg("1st LS with no name = 16", nil, 16, nil, nil);
        player:SpoofMsg("Yell = 26", nil, 26, nil, nil);
        player:SpoofMsg("2nd LS = 27", nil, 27, nil, nil);
        player:SpoofMsg("2nd LS with no name = 28", nil, 28, nil, nil);
        player:SpoofMsg("Echo/system3", nil, 29, nil, nil);
        player:SpoofMsg("Unity = 33", nil, 33, nil, nil);
    else
        player:SpoofMsg(MSG_TEXT, player, MSG_TYPE, 6);
    end
end;