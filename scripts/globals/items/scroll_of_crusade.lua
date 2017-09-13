-----------------------------------------
--  ID: 5103
--  Scroll of Crusade
--  Teaches Crusade PLD 88
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
	return target:canLearnSpell(476);
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addSpell(476);
end;
