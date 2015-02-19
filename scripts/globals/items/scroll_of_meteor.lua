-----------------------------------------
--	ID: 4851
--	Scroll of Meteor
--	Teaches the black magic Meteor
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
	-- return target:canLearnSpell(218);
	local hasSpell = true;
	if (target:hasSpell(218) == true) then
		return 96;
	elseif (target:getMainLvl() == 99 and target:getMainJob() == 4) then
		return 0;
	else
		return 95;
	end
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addSpell(218);
end;