-----------------------------------
-- Area: Wajaom Woodlands
-- MOB:  Gotoh_Zha_the_Redolent
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 33);
    mob:setMod(MOD_UFASTCAST, 70);
    mob:setMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_ATT, 100);
    mob:addMod(MOD_DEF, 100);
    mob:addMod(MOD_MATT, -140); -- Without this, max magic dmg is way to high with default stats for his job/lv
    mob:addMod(MOD_MACC, 150); -- Without this, average magic dmg is way to low with default stats for his job/lv

    -- Vars
    mob:setLocalVar("RANDHPP_1", math.random(66,95))
    mob:setLocalVar("RANDHPP_2", math.random(25,50))

    -- Reset animation and spell list because DSP does not do this automatcially...It should (-_-); but does not.
    mob:AnimationSub(0);
    mob:setSpellList(401);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    local RHP1 = mob:getLocalVar("RANDHPP_1")
    local RHP2 = mob:getLocalVar("RANDHPP_2")

    if (mob:AnimationSub() == 0 and mob:getHPP() <= RHP1 and mob:getLocalVar("Manafont") == 0) then
        mob:setLocalVar("Manafont", 1)
        mob:useMobAbility(435); -- Do Manafont!
    elseif (mob:AnimationSub() == 1 and mob:getHPP() <= RHP2 and mob:getLocalVar("Benediction") == 0) then
        mob:setLocalVar("Benediction", 1)
        mob:useMobAbility(433); -- Do Benediction!
    end

    if (mob:AnimationSub() == 1 and mob:getLocalVar("jobChange") == 0) then
        mob:setSpellList(402); -- Switch to whm spell list.
        mob:addMod(MOD_MATT, 50); -- Whm spells too weak without this, because I am not really changing its actual job from blm.
        mob:addMod(MOD_MDEF, 50); -- Again, since job is not actually being changed to whm, manually adding the magic defense difference.
        mob:addMod(MOD_ATT, 25);
        mob:addMod(MOD_INT, -20);
        mob:addMod(MOD_MND, 20);
        mob:setMod(MOBMOD_MAGIC_COOL, 40);
        mob:setLocalVar("jobChange", 1);
    end
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onCriticalHit(mob)
    local RND = math.random(0,99);
    if (mob:AnimationSub() == 0 and RND > 66) then
        mob:AnimationSub(1);
    end
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;