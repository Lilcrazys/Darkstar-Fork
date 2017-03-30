-----------------------------------
-- Area: Provenance
--  HNM: Minerva
-- Provenance Secret Bonus Boss
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
    mob:setMobMod(MOBMOD_ADD_EFFECT, mob:getShortID());
    mob:setMobMod(MOBMOD_AUTO_SPIKES, mob:getShortID());

    -- addMod
    mob:addMod(MOD_DIVINE, 200);
    mob:addMod(MOD_HEALING, 60);
    mob:addMod(MOD_ENHANCE, 60);
    mob:addMod(MOD_ENFEEBLE, 60);
    mob:addMod(MOD_ELEM, 100);
    mob:addMod(MOD_INT, 20);
    mob:addMod(MOD_MND, 10);
    mob:addMod(MOD_CHR, 24);
    mob:addMod(MOD_MATT, 40);
    mob:addMod(MOD_MACC, 124);
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 28); -- Time between Magic Cast attempts

    -- setMod
    mob:setMod(MOD_REGEN, 20);
    mob:setMod(MOD_REFRESH, 20);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_UFASTCAST, 80);
    mob:setMod(MOD_CURE_POTENCY, 21);
    mob:setMod(MOD_CURE_POTENCY_RCVD, 28);

    -- Other
    -- mob:SetMobSkillAttack(LIST_ID_HERE); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    if (target:getParty() ~= nil) then
        local targets = target:getParty(); -- local targets = mob:getEnmityList();
        for hey, dude in pairs(targets) do
            if (dude:isPC()) then
                dude:ChangeMusic(0, 187); -- Background Music (Day time, 7:00 -> 18:00)
                dude:ChangeMusic(1, 187); -- Background Music (Night time, 18:00 -> 7:00)
                dude:ChangeMusic(2, 187); -- SoloBattle Music
                dude:ChangeMusic(3, 187); -- Party Battle Music
            end
        end
    elseif (target:isPC()) then
        target:ChangeMusic(0, 187); -- Background Music (Day time, 7:00 -> 18:00)
        target:ChangeMusic(1, 187); -- Background Music (Night time, 18:00 -> 7:00)
        target:ChangeMusic(2, 187); -- SoloBattle Music
        target:ChangeMusic(3, 187); -- Party Battle Music
    end

    target:SpoofMsg("The heart of the crystal..This power can sustain even gods.. ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
    target:SpoofMsg("It is a pity, but I must end your world for the good of mine. ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- local BattelTime = mob:getBattleTime();
    local Minerva_2hr_Used = mob:getLocalVar("Minerva_2hr");
    local Ambrosia = mob:getLocalVar("Minerva_Ambrosia");
    -- target:PrintToPlayer(string.format("2hr lv: %u ", Minerva_2hr_Used));

    -- if (BattleTime - LastElemental > 30) then
        -- Pop my elementals again. (spawnPet calls petutils::SpawnMobPet when used by a mob)
        -- mob:spawnPet(mob:getID()+1) -- Stellar Elemental
        -- mob:spawnPet(mob:getID()+2) -- Olympian Elemental
    -- end

    if (mob:hasStatusEffect(EFFECT_TABULA_RASA) == true) then
        mob:setSpellList(778); -- Use alternate spell list during Tabula Rasa
        mob:setMobMod(MOBMOD_MAGIC_COOL, 20); -- Reducing time between cast attempts.
        mob:setMod(MOD_UFASTCAST, 95); -- Casting even faster than we already were.
    elseif (mob:hasStatusEffect(EFFECT_TABULA_RASA) == false) then
        mob:setSpellList(777); -- Tabula Rasa wore off, set spell list back to normal.
        mob:setMobMod(MOBMOD_MAGIC_COOL, 28); -- Time between cast attempts back to normal.
        mob:setMod(MOD_UFASTCAST, 80); -- Casting speed back to normal.
    end

    if (mob:getHPP() <= 11) then -- Tabula Rasa and Invincible together!
        if (Minerva_2hr_Used == 4) then
            target:SpoofMsg("No! I will not fall so close to the power I sought! ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
            mob:useMobAbility(694); -- Do Invincible!
            mob:setLocalVar("Minerva_2hr", 5);
        elseif (Minerva_2hr_Used == 5 and Ambrosia == 0) then
            target:SpoofMsg("Olympus hear me! Grant me the last of our power for this task! ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
            mob:useMobAbility(1487);
            mob:setLocalVar("Minerva_Ambrosia", 1);
        elseif (Minerva_2hr_Used == 5 and Ambrosia == 1) then
            mob:useMobAbility(2358); -- Do Tabula Rasa! Single target nukes now AoE yet do full dmg to all targets.
            mob:setLocalVar("Minerva_2hr", 6);
        end
    elseif (mob:getHPP() <= 40) then -- 3rd Chainspell time!
        if (Minerva_2hr_Used == 3) then
            target:SpoofMsg("Your dimension must collapse that mine may be spared! ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
            mob:useMobAbility(692); -- Do 3rd Chainspell!
            mob:setLocalVar("Minerva_2hr", 4);
        end
    elseif (mob:getHPP() <= 60) then -- Manafont and Chainspell together!
        if (Minerva_2hr_Used == 1) then
            mob:useMobAbility(691); -- Do Manafont!
            target:SpoofMsg("You are the one who defeated Mars? ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
            mob:setLocalVar("Minerva_2hr", 2);
        elseif (Minerva_2hr_Used == 2) then
            target:SpoofMsg("He was but a brute, I am the goddess of wisdom and strategy! ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
            mob:useMobAbility(692); -- Do 2nd Chainspell!
            mob:setLocalVar("Minerva_2hr", 3);
        end
    elseif (mob:getHPP() <= 80) then -- 1st Chainspell time!
        if (Minerva_2hr_Used == 0) then
            target:SpoofMsg("For Olympus! ", mob, MESSAGE_SHOUT, MESSAGE_SHOUT);
            mob:useMobAbility(692); -- Do 1st Chainspell!
            mob:setLocalVar("Minerva_2hr", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast Action
-----------------------------------

function onSpellPrecast(mob, spell)
    if (mob:hasStatusEffect(EFFECT_TABULA_RASA)) then
        spell:setAoE(SPELLAOE_RADIAL);
        -- spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(20);
        spell:setMPCost(1);
    end
end

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    -- TODO: clean up this mess

    local dmg = math.random(3,11); -- Using "damage" resulted in insane values...
    local IntMndBonus = 0;
    -- target:PrintToPlayer( string.format( "Enspell base Dmg: '%u' ", dmg ) );
    local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
    -- target:PrintToPlayer( string.format( "INT diff: '%u' ", INT_diff) );
    local MND_diff = mob:getStat(MOD_MND) - target:getStat(MOD_MND);
    -- target:PrintToPlayer( string.format( "MND diff: '%u' ", MND_diff) );
    if (mob:hasStatusEffect(EFFECT_CUSTOM_ENSPELL) == true) then
        mob:SetMobSkillAttack(0); -- Disable Special Animation for melee attacks during effect.
        if (mob:getStatusEffect(EFFECT_CUSTOM_ENSPELL):getPower() == 7) then -- Enlight
            IntMndBonus = (INT_diff * 0.25) + (MND_diff * 0.5);
            -- target:PrintToPlayer( string.format( "Enspell int+mnd bonus: '%u' ", IntMndBonus) );
            dmg = dmg + (IntMndBonus * 0.25);
            dmg = dmg -10; -- Minerva's EnLight doesn't hit as hard as her Enthunder
            -- target:PrintToPlayer( string.format( "Enspell Dmg before clamp: '%u' ", dmg ) );
            dmg = utils.clamp(dmg, 20, 40);
            if (math.random(0,99) >= 66) then
                target:delMP(dmg * 0.5);
                target:delTP(dmg * 0.25)
                if (mob:getLocalVar("Minerva_Boost_from_Enspell") == nil) then
                    Enspell_Enfeeb = 0;
                else
                    Enspell_Enfeeb = mob:getLocalVar("Minerva_Boost_from_Enspell");
                end
                Enspell_Enfeeb = Enspell_Enfeeb + 1
                if (Enspell_Enfeeb > 200) then
                    Enspell_Enfeeb = 200;
                end
                mob:setLocalVar("Minerva_Boost_from_Enspell", Enspell_Enfeeb);
                target:delStatusEffectSilent(EFFECT_MAGIC_DEF_DOWN);
                target:addStatusEffect(EFFECT_MAGIC_DEF_DOWN, Enspell_Enfeeb * 5, 0, 150);
                -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
                return SUBEFFECT_LIGHT_DAMAGE, MSGBASIC_ADD_EFFECT_DMG, dmg;
            else
                target:delMP(dmg * 0.5);
                target:delTP(dmg * 0.25)
                -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
                return SUBEFFECT_LIGHT_DAMAGE, MSGBASIC_ADD_EFFECT_DMG, dmg;
            end
        elseif (mob:getStatusEffect(EFFECT_CUSTOM_ENSPELL):getPower() == 5) then -- Enthunder
            IntMndBonus = (INT_diff * 0.5) + (MND_diff * 0.25);
            -- target:PrintToPlayer( string.format( "Enspell int+mnd bonus: '%u' ", IntMndBonus) );
            dmg = dmg + (IntMndBonus * 0.25);
            dmg = dmg + 15; -- Minerva's Enthunder hits harder than her Enlight
            -- target:PrintToPlayer( string.format( "Enspell Dmg before clamp: '%u' ", dmg ) );
            dmg = utils.clamp(dmg, 40, 80);
            if (math.random(0,99) >= 66) then
                if (mob:getLocalVar("Minerva_Boost_from_Enspell") == nil) then
                    Enspell_Enfeeb = 0;
                else
                    Enspell_Enfeeb = mob:getLocalVar("Minerva_Boost_from_Enspell");
                end
                Enspell_Enfeeb = Enspell_Enfeeb + 1;
                if (Enspell_Enfeeb > 200) then
                    Enspell_Enfeeb = 200;
                end
                mob:setLocalVar("Minerva_Boost_from_Enspell", Enspell_Enfeeb);
                target:delStatusEffectSilent(EFFECT_MAGIC_EVASION_DOWN);
                target:addStatusEffect(EFFECT_MAGIC_EVASION_DOWN, Enspell_Enfeeb * 10, 0, 150);
                -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
                return SUBEFFECT_LIGHTNING_DAMAGE, MSGBASIC_ADD_EFFECT_DMG, dmg;
            else
                -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
                return SUBEFFECT_LIGHTNING_DAMAGE, MSGBASIC_ADD_EFFECT_DMG, dmg;
            end
        else
            target:PrintToPlayer("Unknown error with custom enspell. Bug report immediately.");
            mob:setLocalVar("Minerva_Boost_from_Enspell", 0);
            return 0,0,0;
        end
    else
        -- mob:SetMobSkillAttack(LIST_ID_HERE); -- Re-enable Special Animation for melee attacks.
        mob:setLocalVar("Minerva_Boost_from_Enspell", 0);
        return 0,0,0;
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    -- TODO: clean up this mess

    local dmg = math.random(3,11); -- Using "damage" resulted in insane values...
    -- target:PrintToPlayer( string.format( "Spikes base Dmg: '%u' ", dmg ) );
    local MND_diff = mob:getStat(MOD_MND) - target:getStat(MOD_MND);
    local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
    if (mob:hasStatusEffect(EFFECT_REPRISAL) == true) then
        IntMndBonus = (INT_diff * 0.25) + (MND_diff * 0.5);
        -- target:PrintToPlayer( string.format( "Spikes int+mnd bonus: '%u' ", IntMndBonus) );
        dmg = dmg + (IntMndBonus * 0.25);
        dmg = dmg -10; -- Minerva's Light Spikes don't hit as hard as her Shock Spikes
        -- target:PrintToPlayer( string.format( "Spikes Dmg before clamp: '%u' ", dmg ) );
        dmg = utils.clamp(dmg, 20, 40);
        if (math.random(0,99) >= 66) then
            if (mob:getLocalVar("Minerva_Boost_from_Spikes") == nil) then
                Magic_Boost = 0;
            else
                Magic_Boost = mob:getLocalVar("Minerva_Boost_from_Spikes");
            end
            Magic_Boost = Magic_Boost + 1;
            if (Magic_Boost > 200) then
                Magic_Boost = 200;
            end
            mob:setLocalVar("Minerva_Boost_from_Spikes", Magic_Boost);
            mob:delStatusEffectSilent(EFFECT_MAGIC_ATK_BOOST);
            mob:delStatusEffectSilent(EFFECT_MAGIC_ACC_BOOST_II);
            mob:addStatusEffect(EFFECT_MAGIC_ATK_BOOST, Magic_Boost * 2, 0, 0);
            mob:addStatusEffect(EFFECT_MAGIC_ACC_BOOST_II, Magic_Boost * 5, 0, 0);
            -- target:PrintToPlayer( string.format( "Spikes Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_REPRISAL,44,dmg;
        else
            -- target:PrintToPlayer( string.format( "Spikes Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_REPRISAL,44,dmg;
        end
    elseif (mob:hasStatusEffect(EFFECT_SHOCK_SPIKES) == true) then
        IntMndBonus = (INT_diff * 0.5) + (MND_diff * 0.25);
        -- target:PrintToPlayer( string.format( "Spikes int+mnd bonus: '%u' ", IntMndBonus) );
        dmg = dmg + (IntMndBonus * 0.25);
        dmg = dmg + 15; -- Minerva's Shock Spikes hit harder than her Light Spikes
        -- target:PrintToPlayer( string.format( "Spikes Dmg before clamp: '%u' ", dmg ) );
        dmg = utils.clamp(dmg, 40, 80);
        -- target:PrintToPlayer( string.format( "Spikes Dmg after clamp: '%u' ", dmg ) );
        return SUBEFFECT_SHOCK_SPIKES,44,dmg;
    else
        mob:setLocalVar("Minerva_Boost_from_Spikes", 0);
        return 0,0,0;
    end
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob, player, isKiller)
    -- player:SpoofMsg("victory message here ", mob, MESSAGE_SAY, MESSAGE_SHOUT);
    player:ChangeMusic(0, 0); -- Background Music (Day time, 7:00 -> 18:00)
    player:ChangeMusic(1, 0); -- Background Music (Night time, 18:00 -> 7:00)
    player:ChangeMusic(2, 187); -- SoloBattle Music
    player:ChangeMusic(3, 187); -- Party Battle Music
    -- mob:getBattlefield():win();
end;
