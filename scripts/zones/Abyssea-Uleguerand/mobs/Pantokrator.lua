-----------------------------------
--  Area: Abyssea - Uleguerand (253)
--   Mob: Pantokrator
-----------------------------------
require("scripts/zones/Abyssea-Uleguerand/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20)
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MATT,25);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-100);
    mob:addMod(MOD_ACC,150);
    mob:addMod(MOD_REGAIN,33);
    mob:addMod(MOD_DOUBLE_ATTACK,35)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    mob:setMod(MOD_SLASHRES,300);
    mob:setMod(MOD_PIERCERES,300);
    mob:setMod(MOD_IMPACTRES,300);
    mob:setMod(MOD_HTHRES,300);
    for n =1,table.getn (resistMod),1 do
         mob:setMod(resistMod[n],-50);
    end

    for n =1,table.getn (defenseMod),1 do
         mob:setMod(defenseMod[n],-50);
    end

end;

-----------------------------------
-- onMobFight
-----------------------------------
--, 17813914, 17813918
function onMobFight(mob,target)
    local mobHP = mob:getHPP();
    -- local action = mob:getCurrentAction();
    -- local magic = ACTION_MAGIC_CASTING;
    -- local tpmove = ACTION_MOBABILITY_USING;

    -- if ((action == magic) == true) then
        -- mob:addMod(MOD_MAGIC_ABSORB,0,300);
    -- elseif ((action == magic) == false) then
        -- mob:delMod(MOD_MAGIC_ABSORB,0,300);
    -- elseif ((action == tpmove) == true) then
        -- mob:addMod(MOD_MAGIC_ABSORB,0,300);
    -- elseif ((action == tpmove) == false) then
        -- mob:delMod(MOD_MAGIC_ABSORB,0,300);
    -- end

    if(mobHP > 70) then
        mob:AnimationSub(1);
        mob:setMod(MOD_SLASHRES,1400);
        mob:setMod(MOD_PIERCERES,1400);
        mob:setMod(MOD_IMPACTRES,1400);
        mob:setMod(MOD_HTHRES,1400);
        for n =1,table.getn (resistMod),1 do
        mob:setMod(resistMod[n],100);
        end
        for n =1,table.getn (defenseMod),1 do
        mob:setMod(defenseMod[n],100);
        end
    elseif(mobHP < 70 and mobHP > 55)then
        mob:AnimationSub(2);
        mob:setMod(MOD_SLASHRES,1450);
        mob:setMod(MOD_PIERCERES,1450);
        mob:setMod(MOD_IMPACTRES,1450);
        mob:setMod(MOD_HTHRES,1450);
        for n =1,table.getn (resistMod),1 do
        mob:setMod(resistMod[n],-50);
        end
        for n =1,table.getn (defenseMod),1 do
        mob:setMod(defenseMod[n],-50);
        end
    elseif(mobHP < 55 and mobHP > 45)then
        mob:AnimationSub(1);
        mob:setMod(MOD_SLASHRES,1400);
        mob:setMod(MOD_PIERCERES,1400);
        mob:setMod(MOD_IMPACTRES,1400);
        mob:setMod(MOD_HTHRES,1400);
        for n =1,table.getn (resistMod),1 do
        mob:setMod(resistMod[n],100);
        end
        for n =1,table.getn (defenseMod),1 do
        mob:setMod(defenseMod[n],100);
        end
    elseif(mobHP < 45 and mobHP > 25)then
        mob:AnimationSub(2);
        mob:setMod(MOD_SLASHRES,1450);
        mob:setMod(MOD_PIERCERES,1450);
        mob:setMod(MOD_IMPACTRES,1450);
        mob:setMod(MOD_HTHRES,1450);
        for n =1,table.getn (resistMod),1 do
        mob:setMod(resistMod[n],-50);
        end
        for n =1,table.getn (defenseMod),1 do
        mob:setMod(defenseMod[n],-50);
        end
    elseif(mobHP < 25 and mobHP > 20)then
        mob:AnimationSub(1);
        mob:setMod(MOD_SLASHRES,1400);
        mob:setMod(MOD_PIERCERES,1400);
        mob:setMod(MOD_IMPACTRES,1400);
        mob:setMod(MOD_HTHRES,1400);
        mob:addStatusEffect(EFFECT_CHAINSPELL,1,0,15);
        for n =1,table.getn (resistMod),1 do
        mob:setMod(resistMod[n],100);
        end
        for n =1,table.getn (defenseMod),1 do
        mob:setMod(defenseMod[n],100);
        end
    elseif(mobHP < 10 and mobHP > 8)then
        mob:AnimationSub(2);
        mob:setMod(MOD_SLASHRES,1450);
        mob:setMod(MOD_PIERCERES,1450);
        mob:setMod(MOD_IMPACTRES,1450);
        mob:setMod(MOD_HTHRES,1450);
        mob:addStatusEffect(EFFECT_HUNDRED_FISTS,1,0,15);
        mob:addStatusEffect(EFFECT_REGAIN,7,3,0);
        for n =1,table.getn (resistMod),1 do
        mob:setMod(resistMod[n],-50);
        end
        for n =1,table.getn (defenseMod),1 do
        mob:setMod(defenseMod[n],-50);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_OMNIPOTENT) == false) then
        killer:addKeyItem(ATMA_OF_THE_OMNIPOTENT);
        killer:messageSpecial(6385, ATMA_OF_THE_OMNIPOTENT);
    end
end;

