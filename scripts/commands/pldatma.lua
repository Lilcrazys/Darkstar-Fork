-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------
-- onEffectGain Action
-----------------------------------
cmdprops =
{
    permission = 1,
    parameters = "siii"
};
local atma = {801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,
			824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,
			847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,
			870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,
			893,894,895,896,897,898,899,900};
 -- -- -- -- -- -- atma effect -- -- -- -- -- --
 function onTrigger(player, effect)
	for i = 0, 100 do
		player:delStatusEffect(atma[i]);
	end
	player:addStatusEffectEx(EFFECT_ATMA_OF_THE_APOCALYPSE,EFFECT_ATMA,1,0,0);
	player:addStatusEffectEx(EFFECT_ATMA_OF_THE_RAZED_RUINS,EFFECT_ATMA,1,0,0);
	player:addStatusEffectEx(EFFECT_ATMA_OF_THE_STRONGHOLD,EFFECT_ATMA,1,0,0);
end;