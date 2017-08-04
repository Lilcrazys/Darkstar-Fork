---------------------------------------------------------------------------------------------------
-- func: costume
-- desc: Sets the players current costume.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@costume <costumeID>");
end;

function onTrigger(player, costumeId)
  local ZoneID = player:getZoneID();
  local RegionID = player:getCurrentRegion();
  if ((player:getGMLevel() >= 4) or (ZoneID >= 247 and ZoneID <= 250) or (ZoneID == 0 or ZoneID == 214) or
  (ZoneID == 48 or ZoneID == 50 or ZoneID == 252 or ZoneID == 256 or ZoneID == 257 or ZoneID == 280)
  or (RegionID == 19 or RegionID == 20 or RegionID == 21 or RegionID == 22)) then

    -- validate costumeId
    if (costumeId == nil or costumeId < 0) then
        error(player, "Invalid costumeID.");
        return;
    end
    
    -- put on costume
    player:costume( costumeId );
  else
    player:PrintToPlayer("@costume cannot be used in this area for server stability reasons.");
  end
end