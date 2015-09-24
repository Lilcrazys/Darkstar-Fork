-----------------------------------
-- Area: EDIT ME
-- VWNM: Goji
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,20);
    mob:addMod(MOD_DEF,80);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DARK_AFFINITY,300);

    -- var
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end

    local Wings = mob:getLocalVar("Wings");

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 180) then
        if (mob:AnimationSub() == 1) then
           mob:AnimationSub(0); -- fly
           mob:setLocalVar("Wings", mob:getBattleTime());
        elseif (mob:AnimationSub() == 0) then
           mob:AnimationSub(1); -- fly
           mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 180);
           mob:setLocalVar("Wings", mob:getBattleTime());
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addCurrency("bayld", 100);
    killer:addExp(10000);

    if (killer:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Goji Kill
        if (killer:getMaskBit(killer:getVar("WHITE_STRATUM"), 0) == false) then
           killer:setMaskBit(killer:getVar("WHITE_STRATUM"),"WHITE_STRATUM",0,true);
        end
        if (killer:isMaskFull(killer:getVar("WHITE_STRATUM"),6) == true) then
           killer:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
           killer:delKeyItem(WHITE_STRATUM_ABYSSITE);
           killer:setVar("WHITE_STRATUM", 0);
        end
    end;
end;