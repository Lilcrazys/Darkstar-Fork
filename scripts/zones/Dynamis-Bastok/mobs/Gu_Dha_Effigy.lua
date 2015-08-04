-----------------------------------
-- Area: Dynamis Bastok
-- NPC:  Gu'Dha Effigy
-- Mega Boss
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/dynamis");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
	if (killer:hasKeyItem(HYDRA_CORPS_EYEGLASS) == false) then
		killer:setVar("DynaBastok_Win",1);
		killer:addKeyItem(HYDRA_CORPS_EYEGLASS);
		killer:messageSpecial(KEYITEM_OBTAINED,HYDRA_CORPS_EYEGLASS);
	end

	if (mob:isInBattlefieldList() == false) then
		mob:addInBattlefieldList();

		killer:addTimeToDynamis(30); -- Add + 30min

		killer:addTitle(DYNAMISBASTOK_INTERLOPER); -- Add title

		local npc = GetNPCByID(17539323); -- Spawn ???
		npc:setPos(mob:getXPos(),mob:getYPos(),mob:getZPos());
		npc:setStatus(0);

		killer:launchDynamisSecondPart(); -- Spawn dynamis second part
	end

end;