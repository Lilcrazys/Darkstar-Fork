-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'hpemde
-- Jailor of Love Pet version
-----------------------------------
require("scripts/zones/AlTaieu/MobIDs");
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,40);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
    mob:addMod(MOD_ACC,225);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_ACC,100);

    -- Other
    mob:AnimationSub(6); -- Mouth Closed
end;

function onMobFight(mob, target)
    local changeTime = mob:getLocalVar("changeTime");

    if (mob:AnimationSub() == 6 and mob:getBattleTime() - changeTime > 30) then
        mob:AnimationSub(3); -- Mouth Open
        mob:addMod(MOD_ATTP, 100);
        mob:addMod(MOD_DEFP, -50);
        mob:addMod(MOD_DMGMAGIC, -50);
        mob:setLocalVar("changeTime", mob:getBattleTime());

    elseif (mob:AnimationSub() == 3 and mob:getBattleTime() - changeTime > 30) then
        mob:AnimationSub(6); -- Mouth Closed
        mob:addMod(MOD_ATTP, -100);
        mob:addMod(MOD_DEFP, 50);
        mob:addMod(MOD_DMGMAGIC, 50);
        mob:setLocalVar("changeTime", mob:getBattleTime());
    end
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    local JoL = GetMobByID(JAILER_OF_LOVE);
    local HPEMDES = JoL:getLocalVar("JoL_Qn_hpemde_Killed");
    JoL:setLocalVar("JoL_Qn_hpemde_Killed", HPEMDES+1);
end;