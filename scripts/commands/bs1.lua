---------------------------------------------------------------------------------------------------
-- func: @bs1 -- Spawns 1st wave of besieged Trolls
-- auth: Signature
-- desc: Allows GM's to spawn Besieged Mobs in Al Zhabi!
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiii"
};
function onTrigger(player)
       SpawnMob('16974001'); -- Slaughterous Scorpion 	GrpId=1572------PoolId=3664
   SpawnMob('16974002'); -- Gurlufur The Menacing		GrpId=1518		PoolId=1851
   SpawnMob('16974003'); -- Gere------------------------GrpId=1513------PoolId=1498
   SpawnMob('16974004'); -- Girzorhor The Imprudent		GrpId=1515		PoolId=1608
   SpawnMob('16974005'); -- Surmerdar-------------------GrpId=1574------PoolId=3812
   SpawnMob('16974006'); -- Dartorgor-------------------GrpId=1499		PoolId=3664
   SpawnMob('16974007'); -- Vorporlor					GrpId=1589------PoolId=922
   SpawnMob('16974008'); -- Vorjirzur-------------------GrpId=1588		PoolId=4255
   SpawnMob('16974009'); -- Worbordor					GrpId=1595------PoolId=4373
       SpawnMob('16974010'); -- Cobalt sentinel			GrpId=1498		PoolId=754
   SpawnMob('16974011'); -- White sentinel	------------GrpId=1594------PoolId=4335
   SpawnMob('16974012'); -- Hazel Sentinel				GrpId-1519		PoolId=1904
   SpawnMob('16974013'); -- Carmine Sentinel------------GrpId=1497------PoolId=643
   SpawnMob('16974014'); -- Xarhorkur the Claviger		GrpId=1596		PoolId=4393
   SpawnMob('16974015'); -- Zurmurwur The ruthless  	GrpId=1598------PoolId=4524
   SpawnMob('16974016'); -- Troll destroyer 			GrpID=1578		PoolId=4014
   SpawnMob('16974017'); -- Troll destroyer
   SpawnMob('16974018'); -- Troll destroyer
   SpawnMob('16974019'); -- Troll destroyer
   SpawnMob('16974020'); -- Troll destroyer
   SpawnMob('16974021'); -- Troll destroyer
end
