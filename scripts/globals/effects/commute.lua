-----------------------------------
--
-- EFFECT_COMMUTE
--
-----------------------------------
require("scripts/globals/teleports");
require("scripts/globals/conquest");
require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    local place = effect:getPower();
    if (target:isMob()) then
        DespawnMob(target:getID())
    elseif (target:getVar("inJail") > 0 or (target:getZoneID() == 131 and target:getGMLevel() == 0)) then
        target:PrintTotarget("CANNOT TELEPORT JAILED CHARACTER!");
    elseif (place == nil or place == COMMUTE.ERROR) then
        target:PrintTotarget("ERROR! EFFECT_COMMUTE didn't know where to send you!");
    elseif (place == COMMUTE.OP_SANDORIA) then
        target:setPos(49, -1 , 29, 164, 231);
    elseif (place == COMMUTE.OP_BASTOK) then
        target:setPos(89, 0 , -66, 0, 234);
    elseif (place == COMMUTE.OP_WINDURST) then
        target:setPos(193, -12 , 220, 64, 240);
    --[[
        reserved
    ]]
    elseif (place == COMMUTE.OP_RONFAURE) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_ZULKHEIM) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_NORVALLEN) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_GUSTABERG) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_DERFLAND) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_SARUTABARUTA) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_KOLSHUSHU) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_ARAGONEU) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_FAUREGANDI) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_VALDEAUNIA) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_QUFIM) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_LITELOR) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_KUZOTZ) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_VOLLBOW) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_ELSHIMO_LOWLANDS) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_ELSHIMO_UPLANDS) then
        toOutpost(target,place)
    elseif (place == COMMUTE.OP_SKY) then
        toOutpost(target,place)
    --[[
        COMMUTE.OP_MOVOPOLIS
    ]]
    elseif (place == COMMUTE.OP_TAVNAZIA) then
        toOutpost(target,place)
    elseif (place == COMMUTE.AISHIP_TO_SANDORIA) then
        target:setPos(-30,-2,42,0,232);
    elseif (place == COMMUTE.AISHIP_TO_BASTOK) then
        target:setPos(-68,2,-36,170,236);
    elseif (place == COMMUTE.AISHIP_TO_WINDURST) then
        target:setPos(222,-6,92,164,240);
    elseif (place == COMMUTE.AISHIP_TO_JEUNO_S) then
        target:setPos(-90,12,120,64,246);
    elseif (place == COMMUTE.AISHIP_TO_JEUNO_B) then
        target:setPos(-48,12,-120,192,246);
    elseif (place == COMMUTE.AISHIP_TO_JEUNO_W) then
        target:setPos(16,12,-120,192,246);
    elseif (place == COMMUTE.AISHIP_TO_JEUNO_K) then
        target:setPos(-26,12,120,64,246);
    elseif (place == COMMUTE.AISHIP_TO_KAZHAM) then
        target:setPos(-9,-4,-1,65,250);
    elseif (place == COMMUTE.SHIP_TO_SELBINA) then
        target:setPos(22,-2,-47,194,248);
    elseif (place == COMMUTE.SHIP_TO_MHAURA) then
        target:setPos(13,-4,18,194,249);
    --[[
    elseif (place == COMMUTE.SHIP_TO_PIRATES_SELBINA) then
        --
    elseif (place == COMMUTE.SHIP_TO_PIRATES_MHAURA) then
        --
    ]]
    elseif (place == COMMUTE.SHIP_TO_WHITEGATE_M) then
        target:setPos(-11,2,-142,192,50);
    elseif (place == COMMUTE.SHIP_TO_WHITEGATE_N) then
        target:setPos(12,2,140,64,50);
    elseif (place == COMMUTE.SHIP_TO_NASHMAU) then
        target:setPos(12,2,-100,192,53);
    elseif (place == COMMUTE.SHIP_TO_NORG) then
        target:setPos(-74,-1,30,192,252);
    --[[
    elseif (place == COMMUTE.SHIP_TO_JEUNO) then
        target:setPos(27,4,-37,0,246);
    ]]
    elseif (place == COMMUTE.FERRY_PURGONORGO) then
        target:setPos(-393.5,-3,-387,64,4);
    elseif (place == COMMUTE.FERRY_BIBIKIBAY) then
        target:setPos(489.5,-3,712,192,4);
    elseif (place == COMMUTE.BCNM_GHELSBA_OUTPOST) then
        toGhelsba(target);
    elseif (place == COMMUTE.BCNM_HORLOISE_PEAK) then
        target:setPos(0, 0, 0, 0, 139);
    elseif (place == COMMUTE.BCNM_WAUGHROON_SHRINE) then
        target:setPos(0, 0, 0, 0, 144);
    elseif (place == COMMUTE.BCNM_BALGAS_DIAS) then
        target:setPos(0, 0, 0, 0, 146);
    elseif (place == COMMUTE.BCNM_CHAMBER_OF_ORACLES) then
        target:setPos(0, 0, 0, 0, 168);
    elseif (place == COMMUTE.BCNM_QUBIA_ARENA) then
        target:setPos(0, 0, 0, 0, 206);
    elseif (place == COMMUTE.TELE_KAZHAM) then
        target:setPos(-29, -2, -14, 62, 250);
    elseif (place == COMMUTE.TELE_JEUNO) then
        target:setPos(0, 9, -33, 192, 243);
    elseif (place == COMMUTE.TELE_LAYPOINT) then
        target:setPos(-200.116, -10, 79.879, 213, 51);
    elseif (place == COMMUTE.GM_TO_KIRIN and target:getGMLevel() > 0) then
        target:setPos(-79, 32, -1, 192, 178);
    end
end;
