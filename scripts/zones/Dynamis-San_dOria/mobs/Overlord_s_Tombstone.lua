-----------------------------------
-- Area: Dynamis San d'Oria
--  MOB: Overlord's Tombstone
-----------------------------------

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

    SpawnMob(17535350):updateEnmity(target); -- 110
    SpawnMob(17535351):updateEnmity(target); -- 111
    SpawnMob(17535352):updateEnmity(target); -- 112
    SpawnMob(17535354):updateEnmity(target); -- 114
    SpawnMob(17534978):updateEnmity(target); -- Battlechoir Gitchfotch
    SpawnMob(17534979):updateEnmity(target); -- Soulsender Fugbrag

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
	if (ally:hasKeyItem(HYDRA_CORPS_COMMAND_SCEPTER) == false)then
		ally:setVar("DynaSandoria_Win",1);
		ally:addKeyItem(HYDRA_CORPS_COMMAND_SCEPTER);
		ally:messageSpecial(KEYITEM_OBTAINED,HYDRA_CORPS_COMMAND_SCEPTER);
	end

    if (alreadyReceived(killer,8) == false) then
        addDynamisList(killer,128);

        ally:addTitle(DYNAMISSAN_DORIA_INTERLOPER); -- Add title

        local npc = GetNPCByID(17535224); -- Spawn ???
        npc:setPos(mob:getXPos(),mob:getYPos(),mob:getZPos());
        npc:setStatus(0);

        ally:launchDynamisSecondPart(); -- Spawn dynamis second part
    end

    for i = 17534978, 17534979 do
      if (GetMobAction(i) ~= 0) then
         DespawnMob(i);
      end
    end

end;