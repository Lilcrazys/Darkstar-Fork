---------------------------------------------------------------------------------------------------
-- func: party
-- auth: <Unknown>
-- desc: Spawns an NPC.
---------------------------------------------------------------------------------------------------
require("scripts/globals/common");
require("scripts/globals/status");
require("scripts/globals/pets");
require("scripts/globals/summon");
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iii"
};

function onTrigger(player,npc) 
    player:spawnPet(0);
	local skin = 21
    local pet = player:getPetID();
	player:spawnPet(0);
	pet:changeSkin(skin);
end;