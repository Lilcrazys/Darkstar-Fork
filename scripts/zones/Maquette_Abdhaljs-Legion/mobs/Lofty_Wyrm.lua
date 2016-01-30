-----------------------------------
-- Area: Legion
-- Lofty_Wyrm
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
    -- addMod
    mob:addMod(MOD_MATT,45);
    mob:addMod(MOD_MDEF,25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_REGEN,25);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);

end;

-----------------------------------

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
--end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

    local Wings = mob:getLocalVar("Wings");
    local Tia_2hr_Used = mob:getLocalVar("Tia_2hr");

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 180) then
        if (mob:AnimationSub() == 1) then
             mob:useMobAbility(1026);
             mob:setLocalVar("Wings", mob:getBattleTime());
         elseif (mob:AnimationSub() == 2) then
             mob:AnimationSub(1); -- fly
             mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
             mob:SetMobSkillAttack(true);
             mob:setLocalVar("Wings", mob:getBattleTime());
         elseif (mob:AnimationSub() == 0) then
             mob:AnimationSub(1); -- fly
             mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
             mob:SetMobSkillAttack(true);
             mob:setLocalVar("Wings", mob:getBattleTime());
         end
    end

    if (mob:getHPP() <= 20) then
         if (Tia_2hr_Used == 3) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 4);
              mob:addStatusEffect(EFFECT_HASTE,200,0,200);
              mob:addMod(MOD_DOUBLE_ATTACK, 15);
              mob:addMod(MOD_REGAIN, 10);
              mob:addStatusEffect(EFFECT_ATTACK_BOOST,125,0,0);
              mob:getStatusEffect(EFFECT_ATTACK_BOOST):setFlag(32);
         end
    elseif (mob:getHPP() <= 40) then
         if (Tia_2hr_Used == 2) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 3);
         end
    elseif (mob:getHPP() <= 60) then
         if (Tia_2hr_Used == 1) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 2);
         end
    elseif (mob:getHPP() <= 80) then
         if (Tia_2hr_Used == 0) then
              mob:useMobAbility(432); -- MS
              mob:setLocalVar("Tia_2hr", 1);
         end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
-- function onAdditionalEffect(mob,target,damage)
-- end;

-----------------------------------
-- onMagicHit
-----------------------------------

-- function onMagicHit(caster, target, spell)
-- end

-----------------------------------
-- onSpikesDamage
-----------------------------------

-- function onSpikesDamage(mob,target,damage)
--end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("legion_point", 10);
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Zilant
    
    local RND1 = math.random(1,15);
        if (RND1 == 1) then
            SetDropRate(9005,0,21294,75); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 2) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,75); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 3) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,75); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 4) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,75); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 5) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,75); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 6) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,75); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 7) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,75); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 8) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,75); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 9) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,75); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 10) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,75); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 11) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,75); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 12) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,75); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 13) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,75); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 14) then
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,75); -- Ninzas   
            SetDropRate(9005,0,20967,0); -- Qatsunoci
        elseif (RND1 == 15) then        
            SetDropRate(9005,0,21294,0); -- Hgafircian
            SetDropRate(9005,0,21132,0); -- Aedold    
            SetDropRate(9005,0,20924,0); -- Iizamal    
            SetDropRate(9005,0,21242,0); -- Bocluamni    
            SetDropRate(9005,0,20742,0); -- Iztaasu    
            SetDropRate(9005,0,21209,0); -- Uffrat   
            SetDropRate(9005,0,21058,0); -- Shichishito
            SetDropRate(9005,0,21208,0); -- Lehbrailg
            SetDropRate(9005,0,20877,0); -- Iclamar
            SetDropRate(9005,0,20833,0); -- Faizzeer    
            SetDropRate(9005,0,20787,0); -- Crobaci    
            SetDropRate(9005,0,21013,0); -- Kannakiri    
            SetDropRate(9005,0,20641,0); -- Leisilonu    
            SetDropRate(9005,0,20553,0); -- Ninzas   
            SetDropRate(9005,0,20967,75); -- Qatsunoci
    end
    
end;