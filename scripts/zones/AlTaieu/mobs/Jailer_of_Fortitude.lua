-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Fortitude
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local delay = mob:getLocalVar("delay");
    local LastCast = mob:getLocalVar("LAST_CAST");
    local spell = mob:getLocalVar("COPY_SPELL");
    if (mob:getLocalVar("cast") == 1) then
        if (mob:getBattleTime() - LastCast > 30) then
            mob:setLocalVar("COPY_SPELL", 0);
            mob:setLocalVar("delay", 0);
            mob:setLocalVar("cast", 0);
        end

        if (spell > 0 and mob:hasStatusEffect(EFFECT_SILENCE) == false) then
            if (delay >= 3) then
                mob:castSpell(spell);
                mob:setLocalVar("COPY_SPELL", 0);
                mob:setLocalVar("delay", 0);
                mob:setLocalVar("cast", 0);
            else
                mob:setLocalVar("delay", delay+1);
            end
        end
    end
end;

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
    if (spell:tookEffect() and (caster:isPC() or caster:isPet())) then
        target:setLocalVar("COPY_SPELL", spell:getID());
        target:setLocalVar("LAST_CAST", target:getBattleTime());
        target:setLocalVar("CAST", 1);
    end

    return 1;
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
end;