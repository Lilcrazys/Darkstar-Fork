-----------------------------------
-- Area: Someplace
-- CNM : Umagrhk
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 25);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,2500);
    mob:setMod(MOD_MATT,100);
    -- mob:SetMobSkillAttack(LIST_ID_HERE);
    mob:setMod(MOD_HUMANOID_KILLER,8);
    mob:setMod(MOD_HASTE_ABILITY, 30);
    mob:setMod(MOD_STUNRES,30);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_TERRORRES, 100);

    mob:addMod(MOD_DMGMAGIC, 15);

end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local BattleTime = mob:getBattleTime();

    if (BattleTime - os.time() > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    mob:useMobAbility(2926); -- Beastruction
end;

-----------------------------------
-- onSpellCast
-----------------------------------

function onSpellCast(caster,target,spell)
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;