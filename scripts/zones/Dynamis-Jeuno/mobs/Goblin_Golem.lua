-----------------------------------
-- Area: Dynamis Jeuno
-- NPC:  Goblin Golem
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/dynamis");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
	if (player:hasKeyItem(HYDRA_CORPS_TACTICAL_MAP) == false)then
		player:setVar("DynaJeuno_Win",1);
		player:addKeyItem(HYDRA_CORPS_TACTICAL_MAP);
		player:messageSpecial(KEYITEM_OBTAINED,HYDRA_CORPS_TACTICAL_MAP);
	end

	killer:addTitle(DYNAMISJEUNO_INTERLOPER); -- Add title

	local npc = GetNPCByID(17547510); -- Spawn ???
	npc:setPos(mob:getXPos(),mob:getYPos(),mob:getZPos());
	npc:setStatus(0);

	killer:launchDynamisSecondPart(); -- Spawn dynamis second part

end;