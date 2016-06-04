-----------------------------------------
--    ID: 6183
--    Item: Pluton Box (6183)
--    When used, you will obtain a random number of plutons
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:getFreeSlotsCount() == 0) then
        result = 308;
    end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	local pluton = (math.random(15,30));
   target:addItem(4059,pluton);
end;