-----------------------------------------
--  ID: 4692
--  Scroll of Haste II
--  Teaches Haste II RDM 96
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
	return target:canLearnSpell(511);
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addSpell(511);
end;
