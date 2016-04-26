-----------------------------------
-- Area: Legion
-- Lofty_Wyrm
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
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

    local RND1 = math.random(1,15);
    if (RND1 == 1) then
        SetDropRate(9005,21294,75); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 2) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,75); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 3) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,75); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 4) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,75); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 5) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,75); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 6) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,75); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 7) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,75); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 8) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,75); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 9) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,75); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 10) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,75); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 11) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,75); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 12) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,75); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 13) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,75); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 14) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,75); -- Ninzas
        SetDropRate(9005,20967,0); -- Qatsunoci
    elseif (RND1 == 15) then
        SetDropRate(9005,21294,0); -- Hgafircian
        SetDropRate(9005,21132,0); -- Aedold
        SetDropRate(9005,20924,0); -- Iizamal
        SetDropRate(9005,21242,0); -- Bocluamni
        SetDropRate(9005,20742,0); -- Iztaasu
        SetDropRate(9005,21209,0); -- Uffrat
        SetDropRate(9005,21058,0); -- Shichishito
        SetDropRate(9005,21208,0); -- Lehbrailg
        SetDropRate(9005,20877,0); -- Iclamar
        SetDropRate(9005,20833,0); -- Faizzeer
        SetDropRate(9005,20787,0); -- Crobaci
        SetDropRate(9005,21013,0); -- Kannakiri
        SetDropRate(9005,20641,0); -- Leisilonu
        SetDropRate(9005,20553,0); -- Ninzas
        SetDropRate(9005,20967,75); -- Qatsunoci
    end

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

    local MightyStrikesCount = mob:getLocalVar("MSC");

    if (MightyStrikesCount == 3 and mob:getHPP() <= 20) then
        mob:setLocalVar("MSC", 4);
        mob:useMobAbility(432); -- MS
        mob:addMod(MOD_REGAIN, 10);
        mob:addMod(MOD_DOUBLE_ATTACK, 15);
        mob:addStatusEffect(EFFECT_HASTE,100,0,100);
        mob:getStatusEffect(EFFECT_HASTE):setFlag(32);
        mob:addStatusEffect(EFFECT_ATTACK_BOOST,75,0,0);
        mob:getStatusEffect(EFFECT_ATTACK_BOOST):setFlag(32);
    elseif (MightyStrikesCount == 2 and mob:getHPP() <= 40) then
        mob:setLocalVar("MSC", 3);
        mob:useMobAbility(432); -- MS
    elseif (MightyStrikesCount == 1 and mob:getHPP() <= 60) then
        mob:setLocalVar("MSC", 2);
        mob:useMobAbility(432); -- MS
    elseif (MightyStrikesCount == 0 and mob:getHPP() <= 80) then
        mob:setLocalVar("MSC", 1);
        mob:useMobAbility(432); -- MS
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("legion_point", 10);
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Zilant
end;
