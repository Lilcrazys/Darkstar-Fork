-----------------------------------
-- Area: GM Testing Facilities
--  Mob: Dummy
-- never dies, never fights back, just takes dmg.
-----------------------------------
require("scripts/globals/msg");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
    mob:SetMobSkillAttack(9999); -- Disables melee
end;

function onMobFight(mob, target)
    if (mob:getHP() < mob:getMaxHP()/2) then
        local party = player:getParty();
        if (party ~= nil) then
            for i,v in ipairs(party) do
                if v:isPC() and mob:checkDistance(v) < 30 then
                    v:PrintToPlayer("is crying..", chatType.EMOTION, mob:getName());
                    v:PrintToPlayer("Why you hitting me? What I ever do to you? ", chatType.SAY, mob:getName());
                end
            end
        end
        mob:setHP(mob:getMaxHP());
    end
end;

function onMagicHit(caster, target, spell)
    -- player:PrintToPlayer("[Magic DMG Debug] placeholder", chatType.SYSTEM_3);

    return 1;
end;

function onWeaponskillHit(mob, attacker, weaponskill)
    -- attacker:PrintToPlayer("[WS DMG Debug] placeholder", chatType.SYSTEM_3);

    return 1;
end;

function onMobDeath(mob, player, isKiller)
    player:PrintToPlayer("YOU CHEATING BASTID! ", chatType.SHOUT);
end;
