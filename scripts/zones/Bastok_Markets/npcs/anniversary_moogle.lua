-- Bastok Markets Anniversary Moogle
-- anniversary band every day if not in inventory and free slot
-- Random effect applied once an hour when player talks to moogle
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/zones/Bastok_Markets/TextIDs");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc) 

    local annibuff = math.random(1,10);

    if (player:getFreeSlotsCount() >= 1) then
        if (player:getVar("ANNIRING_TIMER") < os.time()) then
            player:messageSpecial(ITEM_OBTAINED, 15793);
            player:addItem(15793, 1);
            player:setVar("ANNIRING_TIMER", os.time()+86400);
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 15793);
        end
    end

    if (player:getVar("ANNIBUFF_TIMER") < os.time()) then
        if (annibuff == 1) then
            player:addStatusEffect(EFFECT_FLEE,1,0,30);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
            -- add costume of something....??
        elseif (annibuff == 2) then
            player:addStatusEffect(EFFECT_REGEN, 10,1,30);
            player:addStatusEffect(EFFECT_REFRESH, 10,1,30);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 3) then
            player:addStatusEffect(EFFECT_REGAIN, 100,1,30);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 4) then
            player:addStatusEffect(EFFECT_MAX_HP_BOOST,40,0,30);
            player:addStatusEffect(EFFECT_MAX_MP_BOOST,40,0,30);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 5) then
            player:addStatusEffect(EFFECT_STR_BOOST,50,0,30);
            player:addStatusEffect(EFFECT_DEX_BOOST,50,0,30);
            player:addStatusEffect(EFFECT_VIT_BOOST,50,0,30);
            player:addStatusEffect(EFFECT_AGI_BOOST,50,0,30);
            player:addStatusEffect(EFFECT_INT_BOOST,50,0,30);
            player:addStatusEffect(EFFECT_MND_BOOST,50,0,30);
            player:addStatusEffect(EFFECT_CHR_BOOST,50,0,30);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 6) then
            player:addStatusEffect(EFFECT_CHAINSPELL, 1,0,15);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 7) then
            player:addStatusEffect(EFFECT_HUNDRED_FISTS,1,0,15);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 8) then
            player:addStatusEffect(EFFECT_MIGHTY_STRIKES,1,0,15);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 9) then
            player:addStatusEffect(EFFECT_MANAFONT,1,0,15);
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        elseif (annibuff == 10) then
            player:addStatusEffect(EFFECT_MAX_HP_BOOST,1000,0,15);
            player:addStatusEffect(EFFECT_MAX_MP_BOOST,1000,0,15);
            player:addStatusEffect(EFFECT_SENTINEL,100,0,15);
            player:addStatusEffect(EFFECT_MIGHTY_STRIKES,1,0,15);
            player:addStatusEffect(EFFECT_HUNDRED_FISTS,1,0,15);
            player:addStatusEffect(EFFECT_CHAINSPELL,1,0,15);
            player:addStatusEffect(EFFECT_PERFECT_DODGE,1,0,15);
            player:addStatusEffect(EFFECT_INVINCIBLE,1,0,15);
            player:addStatusEffect(EFFECT_MANAFONT,1,0,15);
            player:addStatusEffect(EFFECT_REGAIN,150,1,15);
            player:addStatusEffect(EFFECT_REFRESH,99,0,15);
            player:addStatusEffect(EFFECT_REGEN,99,0,15);
            player:addStatusEffectEx(EFFECT_SJCAP_BOOST,EFFECT_TRANSCENDENCY,1,0,15)
            player:setVar("ANNIBUFF_TIMER", os.time()+3600);
        end
    else
        player:SpoofChatPlayer("Check back later. Buffs are issued once an hour.");
    end
end;

