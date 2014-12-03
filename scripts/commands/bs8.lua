---------------------------------------------------------------------------------------------------
-- func: @bs1 -- Spawns 1st wave of besieged
-- auth: <Unknown> :: Modded by Tagban
-- desc: Allows GM's to trigger NMs that are commonly requested. Add more if you tell me!
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiii"
};
function onTrigger(player)
    SpawnMob('16974061'); --Assault_Draugar
	SpawnMob('16974062'); --Assault_Draugar
	SpawnMob('16974063'); --Assault_Draugar
	SpawnMob('16974064'); --Assault_Draugar
	SpawnMob('16974065'); --Draugar_Wyvern
	SpawnMob('16974066'); --Assault_Bhoot
	SpawnMob('16974067'); --Assault_Bhoot
	SpawnMob('16974068'); --Assault_Bhoot
	SpawnMob('16974069'); --Assault_Bhoot
    SpawnMob('16974070'); --Assault_Bhoot
	SpawnMob('16974071'); --Qutrub_Extortionist
	SpawnMob('16974072'); --Qutrub_Extortionist
	SpawnMob('16974073'); --Qutrub_Extortionist
	SpawnMob('16974074'); --Qutrub_Extortionist
	SpawnMob('16974075'); --Qutrub_Wastrel
	SpawnMob('16974076'); --Qutrub_Wastrel
	SpawnMob('16974077'); --Qutrub_Wastrel
	SpawnMob('16974078'); --Qutrub_Wastrel
	SpawnMob('16974079'); --Expunger
	SpawnMob('16974080'); --Expunger
	SpawnMob('16974081'); --Expunger
	SpawnMob('16974082'); --Expunger
	SpawnMob('16974083'); --Expunger
	SpawnMob('16974084'); --Bhoot_Invader
	SpawnMob('16974085'); --Bhoot_Invader
	SpawnMob('16974086'); --Bhoot_Invader
	SpawnMob('16974087'); --Bhoot_Invader
	SpawnMob('16974088'); --Bhoot_Invader
	SpawnMob('16974089'); --Bhoot_Invader
	SpawnMob('16974090'); --Bhoot_Invader
	SpawnMob('16974091'); --Bhoot_Invader
	SpawnMob('16974092'); --Bhoot_Invader
	SpawnMob('16974093'); --Bhoot_Invader
end
