-----------------------------------
-- Area: Mount Zhayolm
--  ZNM: Brass Borer
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-- TODO: Damage resistances in streched and curled stances. Halting movement during stance change.

-----------------------------------
-- OnMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:setLocalVar("formTime", os.time() + math.random(43,47));
end;

-----------------------------------
-- onMobRoam Action
-- Autochange stance
-----------------------------------

function onMobRoam(mob)
    local roamTime = mob:getLocalVar("formTime");
    if (mob:AnimationSub() == 0 and os.time() > roamTime) then
        mob:AnimationSub(1);
        mob:setLocalVar("formTime", os.time() + math.random(43,47));
    elseif (mob:AnimationSub() == 1 and os.time() > roamTime) then
        mob:AnimationSub(0);
        mob:setLocalVar("formTime", os.time() + math.random(43,47));
    end
end;

-----------------------------------
-- OnMobFight Action
-- Stance change in battle
-----------------------------------

function onMobFight(mob,target)
    local fightTime = mob:getLocalVar("formTime");
    if (mob:AnimationSub() == 0 and os.time() > fightTime) then
        mob:AnimationSub(1);
        mob:setLocalVar("formTime", os.time() + math.random(43,47));
    elseif (mob:AnimationSub() == 1 and os.time() > fightTime) then
        mob:AnimationSub(0);
        mob:setLocalVar("formTime", os.time() + math.random(43,47));
    end
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, MYTHIC, 1);
    end
end;