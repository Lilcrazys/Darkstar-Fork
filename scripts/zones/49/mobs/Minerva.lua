-----------------------------------
-- Area: Provenance
--  HNM: Minerva
-- Provenance Boss
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,1);
    mob:setMobMod(MOBMOD_AUTO_SPIKES,1);
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGEN, 20);
    mob:setMod(MOD_REFRESH, 20);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_FASTCAST, 80);
    mob:addMod(MOD_MATT, 33);
    mob:addMod(MOD_MACC, 100);
    mob:addMod(MOD_INT, 10);
    mob:addMod(MOD_MND, 5);
    mob:addMod(MOD_CHR, 12);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobFight(mob, target)
-- Possibly broken, mobMod method only allow 2 jobs 2hrs, 
-- skill method requires it be an actual skill...
-- ...Can 2hr get selected as random TP move? That would suck.
    --[[
    if (mob:getHPP() < 11) then
        local TABULA_RASA = 0;
        if (mob:fetLocalVar("Minerva_Used_Tabula_Rasa") ~= nil) then
            TABULA_RASA = mob:getLocalVar("Minerva_Used_Tabula_Rasa");
        end
        if (TABULA_RASA == 0) then
            SpoofSay( mob, target, "Placeholder: message here" );
            -- mob:useMobAbility(626); -- Do Tabula Rasa!
            mob:setLocalVar("Minerva_Used_Tabula_Rasa", 1);
            target:PrintToPlayer("Tabula Rasa for mobs not yet implemented");
        else
            SpoofSay( mob, target, "Placeholder: message here" );
            mob:useMobAbility(438); -- Do Invincible!
        end
    elseif (mob:getHPP() < 40) then
        SpoofSay( mob, target, "Placeholder: message here" );
        mob:useMobAbility(436); -- Do 3rd Chainspell!
    elseif (mob:getHPP() < 60) then
        local MANAFONT = 0;
        if (mob:getLocalVar("Minerva_Used_Manafont") ~= nil) then
            MANAFONT = mob:getLocalVar("Minerva_Used_Manafont");
        end
        if (MANAFONT == 0) then
            SpoofSay( mob, target, "Placeholder: message here" );
            mob:useMobAbility(436); -- Do Manafont!
            mob:setLocalVar("Minerva_Used_Manafont", 1);
        else
            mob:useMobAbility(436); -- Do 2nd Chainspell!
        end
    elseif (mob:getHPP() < 80) then
        SpoofSay( mob, target, "Placeholder: message here" );
        mob:useMobAbility(436); -- Do 1st Chainspell!
    end
    ]]--
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    -- SpoofSay( mob, killer, "victory message here" )
    -- mob:getBattlefield():win();
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    local dmg = math.random(3,11); -- using "damage" resulted in insane values...
    local IntMndBonus = 0;
    -- target:PrintToPlayer( string.format( "Enspell base Dmg: '%u' ", dmg ) );
    local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
    local MND_diff = mob:getStat(MOD_MND) - target:getStat(MOD_MND);
    if (mob:hasStatusEffect(EFFECT_MINERVA_ENLIGHT) == true) then
        if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20);
            INT_diff = INT_diff * 0.34;
        end

        if (MND_diff > 20) then
            MND_diff = 20 + (MND_diff - 20);
            MND_diff = MND_diff * 0.5;
        end
        IntMndBonus = INT_diff + MND_diff;
        IntMndBonus = IntMndBonus * 0.2;
        -- target:PrintToPlayer( string.format( "Enspell int+mnd bonus: '%u' ", IntMndBonus) );
        dmg = dmg + IntMndBonus;
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
            mob:setLocalVar("Minerva_Boost_from_Enspell", Enspell_Enfeeb);
            target:delStatusEffectSilent(EFFECT_MAGIC_DEF_DOWN);
            target:addStatusEffect(EFFECT_MAGIC_DEF_DOWN,Enspell_Enfeeb * 5,0,150);
            -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_LIGHT_DAMAGE,163,dmg;
        else
            target:delMP(dmg * 0.5);
            target:delTP(dmg * 0.25)
            -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_LIGHT_DAMAGE,163,dmg;
        end
    elseif (mob:hasStatusEffect(EFFECT_MINERVA_ENTHUNDER) == true) then
        if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20);
            INT_diff = INT_diff * 0.5;
        end

        if (MND_diff > 20) then
            MND_diff = 20 + (MND_diff - 20);
            MND_diff = MND_diff * 0.34;
        end	
        IntMndBonus = INT_diff + MND_diff;
        IntMndBonus = IntMndBonus * 0.20;
        -- target:PrintToPlayer( string.format( "Enspell int+mnd bonus: '%u' ", IntMndBonus) );
        dmg = dmg + IntMndBonus;
        dmg = dmg + 15; -- Minerva's Enthunder hits harder than her Enlight
        -- target:PrintToPlayer( string.format( "Enspell Dmg before clamp: '%u' ", dmg ) );
        dmg = utils.clamp(dmg, 40, 80);
        if (math.random(0,99) >= 66) then
            if (mob:getLocalVar("Minerva_Boost_from_Enspell") == nil) then
                Enspell_Enfeeb = 0;
            else
                Enspell_Enfeeb = mob:getLocalVar("Minerva_Boost_from_Enspell");
            end
            Enspell_Enfeeb = Enspell_Enfeeb + 1
            mob:setLocalVar("Minerva_Boost_from_Enspell", Enspell_Enfeeb);
            target:delStatusEffectSilent(EFFECT_MAGIC_EVASION_DOWN);
            target:addStatusEffect(EFFECT_MAGIC_EVASION_DOWN,Enspell_Enfeeb * 10,0,150);
            -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_LIGHTNING_DAMAGE,163,dmg;
        else
            -- target:PrintToPlayer( string.format( "Enspell Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_LIGHTNING_DAMAGE,163,dmg;
        end
    else
        mob:setLocalVar("Minerva_Boost_from_Enspell", 0);
        return 0,0,0;
    end
end;

-----------------------------------
-- onSpikesDamage
-----------------------------------

function onSpikesDamage(mob,target,damage)
    local dmg = math.random(3,11); -- using "damage" resulted in insane values...
    -- target:PrintToPlayer( string.format( "Spikes base Dmg: '%u' ", dmg ) );
    local MND_diff = mob:getStat(MOD_MND) - target:getStat(MOD_MND);
    local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);
    if (mob:hasStatusEffect(EFFECT_MINERVA_LIGHT_SPIKES) == true) then
        if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20);
            INT_diff = INT_diff * 0.34;
        end

        if (MND_diff > 20) then
            MND_diff = 20 + (MND_diff - 20);
            MND_diff = MND_diff * 0.5;
        end
        IntMndBonus = INT_diff + MND_diff;
        IntMndBonus = IntMndBonus * 0.2;
        -- target:PrintToPlayer( string.format( "Spikes int+mnd bonus: '%u' ", IntMndBonus) );
        dmg = dmg + IntMndBonus;
        dmg = dmg -10; -- Minerva's Light Spieks don't hit as hard as her Shock Spikes
        -- target:PrintToPlayer( string.format( "Spikes Dmg before clamp: '%u' ", dmg ) );
        dmg = utils.clamp(dmg, 20, 40);
        if (math.random(0,99) >= 66) then
            if (mob:getLocalVar("Minerva_Boost_from_Spikes") == nil) then
                Magic_Boost = 0;
            else
                Magic_Boost = mob:getLocalVar("Minerva_Boost_from_Spikes");
            end
            Magic_Boost = Magic_Boost + 1
            mob:setLocalVar("Minerva_Boost_from_Spikes", Magic_Boost);
            mob:delStatusEffectSilent(EFFECT_MAGIC_ATK_BOOST);
            mob:delStatusEffectSilent(EFFECT_MAGIC_ACC_BOOST_II);
            mob:addStatusEffect(EFFECT_MAGIC_ATK_BOOST,Magic_Boost * 2,0,0);
            mob:addStatusEffect(EFFECT_MAGIC_ACC_BOOST_II,Magic_Boost * 5,0,0);
            -- target:PrintToPlayer( string.format( "Spikes Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_REPRISAL,44,dmg;
        else
            -- target:PrintToPlayer( string.format( "Spikes Dmg after clamp: '%u' ", dmg ) );
            return SUBEFFECT_REPRISAL,44,dmg;
        end
    elseif (mob:hasStatusEffect(EFFECT_MINERVA_SHOCK_SPIKES) == true) then
        if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20);
            INT_diff = INT_diff * 0.5;
        end

        if (MND_diff > 20) then
            MND_diff = 20 + (MND_diff - 20);
            MND_diff = MND_diff * 0.34;
        end		IntMndBonus = INT_diff + MND_diff;
        IntMndBonus = IntMndBonus * 0.2;
        -- target:PrintToPlayer( string.format( "Spikes int+mnd bonus: '%u' ", IntMndBonus) );
        dmg = dmg + IntMndBonus;
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