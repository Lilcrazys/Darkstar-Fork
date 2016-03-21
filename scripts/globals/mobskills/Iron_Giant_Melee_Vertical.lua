---------------------------------------------
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() ~= 4081 and mob:getMobMod(MOBMOD_SKILL_LIST) == 4167) then
        -- Ironclad's (Abyssea and Legion NMs)
        local dmgmod = 1;
        local POW = 0.85
        -- target:PrintToPlayer(string.format("ATT %u ", mob:getStat(MOD_ATT)));
        -- target:PrintToPlayer(string.format("DEF %u ", target:getStat(MOD_DEF)));
        if (mob:getStat(MOD_ATT) > target:getStat(MOD_DEF)) then
            POW = POW+((mob:getStat(MOD_ATT) - target:getStat(MOD_DEF)) /200)
        end
        -- target:PrintToPlayer(string.format("Pre-clamp POW %u ", POW));
        POW = utils.clamp(POW, 0.85, 7.7);
        -- target:PrintToPlayer(string.format("Post-clamp POW %u ", POW));
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*POW,ELE_NONE,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_IGNORE_SHADOWS);

        if (math.random(1,10) == 5) then -- 1 in 10 chance of 1 second stun just to interrupt spells.
            target:addStatusEffect(EFFECT_STUN, 0, 0, 1);
        end

        skill:setMsg(264)

        target:addTP(1);
        mob:addTP(12);
        target:delHP(dmg);

        return dmg;
    elseif (mob:getPool() == 4081) then
        -- Voidwrought (Voidwatch NM)
        local dmgmod = 1.25;
        local POW = 1;
        -- target:PrintToPlayer(string.format("ATT %u ", mob:getStat(MOD_ATT)));
        -- target:PrintToPlayer(string.format("DEF %u ", target:getStat(MOD_DEF)));
        if (mob:getStat(MOD_ATT) > target:getStat(MOD_DEF)) then
            POW = POW+((mob:getStat(MOD_ATT) - target:getStat(MOD_DEF)) /200)
        end
        -- target:PrintToPlayer(string.format("Pre-clamp POW %u ", POW));
        POW = utils.clamp(POW, 0.85, 7.7);
        -- target:PrintToPlayer(string.format("Post-clamp POW %u ", POW));
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*POW,ELE_NONE,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_IGNORE_SHADOWS);

        if (math.random(1,10) == 5) then -- 1 in 10 chance of 1 second stun just to interrupt spells.
            target:addStatusEffect(EFFECT_STUN, 0, 0, 1);
        end

        skill:setMsg(264)

        target:addTP(1);
        mob:addTP(12);
        target:delHP(dmg);

        return dmg;
    else
        -- DSP Version doesn't exist yet
        return 0;
    end
end;