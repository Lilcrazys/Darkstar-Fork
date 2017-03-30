-----------------------------------
-- Area: Multiple - randomly chooses zone to pop at.
--  NM:  SlenderMan
-- Randomly camps players who see/hear him.
-- May appear in:
-- Al Zahbi (Besieged - Undead Swarm),
-- Jugner Forest, Jugner Forest [S],
-- Wajaom Woodlands, Bhaflau Thickets
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_AUTO_SPIKES,mob:getShortID());

    -- effects
    mob:addStatusEffect(EFFECT_DAMAGE_SPIKES,5,0,0);
    mob:getStatusEffect(EFFECT_DAMAGE_SPIKES):setFlag(32);

    -- addmod
    mob:addMod(MOD_HUMANOID_KILLER, 11);
    mob:addMod(MOD_MATT, 20);
    mob:addMod(MOD_MACC, 100);
    mob:addMod(MOD_INT, 20);
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 3);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_UFASTCAST, 80);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    target:SpoofMsg("I'll swallow your soul! ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Slendy_2hr_Used = mob:getLocalVar("Slendy_2hr");
    -- local Proxies_Called = mob:getLocalVar("GetMyMinions");

    if (mob:getHPP() < 5 and Slendy_2hr_Used == 3) then
        mob:useMobAbility(731); -- Do Mijin Gakure!
        mob:setLocalVar("Slendy_2hr", 0);
        mob:setHP(0); -- Auto Die
    elseif (mob:getHPP() < 9 and Slendy_2hr_Used == 2) then
        target:SpoofMsg("You can't kill me! ", mob, MESSAGE_SHOUT, MESSAGE_SHOUT);
        mob:useMobAbility(731); -- Do Mijin Gakure!
        mob:setLocalVar("Slendy_2hr", 3);
    elseif (mob:getHPP() <= 25 and Slendy_2hr_Used == 1) then
        mob:useMobAbility(693); -- Do Perfect Dodge!
        mob:setLocalVar("Slendy_2hr", 2);
    elseif (mob:getHPP() <= 50 and Slendy_2hr_Used == 0) then
        mob:useMobAbility(695); -- Do Blood Weapon!
        mob:setLocalVar("Slendy_2hr", 1);
    -- elseif (mob:getBattleTime() - Proxies_Called > 20) then
        -- if ( zombaru_1 not up ) then
            -- spawn new zombaru_1
        -- end
        -- if ( zombaru_2 not up ) then
            -- spawn new zombaru_2
        -- end
        -- mob:setLocalVar("GetMyMinions", os.time())
    end

    -- if ( my target changed or mob:getLocalVar("I_WAS_NUKED") == 1) then
        -- Do AoE Knockback and Bind
        -- Do single Target Draw In
    -- end
end;

-----------------------------------
-- onMagicHit
-----------------------------------

-- function onMagicHit(caster, target, spell)
    --if (caster:isPC() == true and target:isMOB() == true) then
        -- if ( caster is not my target and is prohibited spell ) then
            -- I was nuked!
            -- target:setLocalVar("I_WAS_NUKED", 1);
            -- instant cast strong nuke at caster
        -- end
    -- end
    -- return spell;
-- end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    -- player:SpoofMsg("victory message here ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    local RAND = math.random(1,100);
    if (RAND <= 33) then -- 33% chance of AddEffect proc
        local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
        local dmg = 6 + utils.clamp(INT_diff, 0, 99);
        local params = {};
        params.bonusmab = 0;
        params.includemab = false;
        dmg = addBonusesAbility(mob, ELE_FIRE, target, dmg, params);
        dmg = dmg*applyResistanceAddEffect(mob, target, ELE_FIRE, 0);
        dmg = adjustForTarget(target, damage, ele);
        dmg = finalMagicNonSpellAdjustments(mob, target, ELE_FIRE, damage);

        return SUBEFFECT_FIRE_DAMAGE, MSGBASIC_ADD_EFFECT_DMG, dmg;
    else
        return 0,0,0;
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    local RAND = math.random(1,100);
    if (RAND <= 18) then -- 18% chance of Spikes proc
        local duration = 5;
        target:addStatusEffect(EFFECT_TERROR,1,0,duration);
        return SUBEFFECT_CURSE_SPIKES,0,EFFECT_TERROR; -- Intentionally incorrect animation with no message.
    else
        return 0,0,0;
    end
end;
