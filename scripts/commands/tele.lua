---------------------------------------------------------------------------------------------------
-- func: @tele <destination> <player>
-- auth: TeoTwawki
-- desc: Warps GM or target player to Tele Crags and select other locations...
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ss"
};

function onTrigger(player,tele,target)
    -- Validate a location was given
    if (tele == nil) then
        player:PrintToPlayer("You must enter a valid Teleport location.");
        player:PrintToPlayer("@tele <destination> <player>");
        return;
    end
    -- Validate the target..
    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
    -- Parse the Teleports
        if(tele == "dem" or tele == "Dem") then
            targ:setPos(221,19,302,190,108);
        elseif(tele == "holla" or tele == "Holla" or tele == "hol" or tele == "Hol") then
            targ:setPos(422,19,23,199,102);
        elseif(tele == "mea" or tele == "Mea") then
            targ:setPos(97,35,341,128,117);
        elseif(tele == "vahzl" or tele == "Vahzl" or tele == "vahz" or tele == "Vahz" or tele == "vah" or tele == "Vah") then
            targ:setPos(155,-20,-41,95,112);
        elseif(tele == "yhoat" or tele == "Yhoat" or tele == "yho" or tele == "Yho") then
            targ:setPos(-277,0,-150,186,124);
        elseif(tele == "altep" or tele == "Altep" or tele == "altepa" or tele == "Altepa" or tele == "alt" or tele == "Alt") then
            targ:setPos(-57,3,224,194,114);
        elseif(tele == "jugner" or tele == "Jugner") then
            targ:setPos(-119,0,-158,160,82);
        elseif(tele == "pashh" or tele == "Pashh" or tele == "pashow" or tele == "Pashow") then
            targ:setPos(342,24,-113,60,90);
        elseif(tele == "meriph" or tele == "Meriph" or tele == "meriphataud" or tele == "Meriphataud") then
            targ:setPos(307,-11,31,44,97);
        elseif(tele == "Jeuno" or tele == "jeuno") then
            targ:setPos(0,9,-33,192,243);
        elseif(tele == "Kazham" or tele == "kazham" or tele == "kaz" or tele == "Kaz") then
            targ:setPos(-29,-2,-14,62,250);
        elseif(tele == "Kirin!") then
            targ:setPos(-79,32,-1,192,178);
        else
            player:PrintToPlayer( string.format( "Invalid Tele location '%s' given.", tele ) );
            player:PrintToPlayer("@tele <destination> <player>");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        player:PrintToPlayer("@tele <destination> <player>");
    end
end;