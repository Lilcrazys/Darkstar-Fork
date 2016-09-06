-----------------------------------
-- Area: Legion
-- Mired_Cerberus
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
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
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
        SetDropRate(9020,21294,81); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 2) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,81); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 3) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,81); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 4) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,81); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 5) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,81); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 6) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,81); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 7) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,81); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 8) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,81); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 9) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,81); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 10) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,81); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 11) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,81); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 12) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,81); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 13) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,81); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 14) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,81); -- Ninzas
        SetDropRate(9020,20967,0); -- Qatsunoci
    elseif (RND1 == 15) then
        SetDropRate(9020,21294,0); -- Hgafircian
        SetDropRate(9020,21132,0); -- Aedold
        SetDropRate(9020,20924,0); -- Iizamal
        SetDropRate(9020,21242,0); -- Bocluamni
        SetDropRate(9020,20742,0); -- Iztaasu
        SetDropRate(9020,21209,0); -- Uffrat
        SetDropRate(9020,21058,0); -- Shichishito
        SetDropRate(9020,21208,0); -- Lehbrailg
        SetDropRate(9020,20877,0); -- Iclamar
        SetDropRate(9020,20833,0); -- Faizzeer
        SetDropRate(9020,20787,0); -- Crobaci
        SetDropRate(9020,21013,0); -- Kannakiri
        SetDropRate(9020,20641,0); -- Leisilonu
        SetDropRate(9020,20553,0); -- Ninzas
        SetDropRate(9020,20967,81); -- Qatsunoci
    end

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Mired_Cerberus_2hr = mob:getLocalVar("Mired_Cerberus_2hr");


    if (mob:getHPP() <= 10) then
        if (Mired_Cerberus_2hr == 0) then
            mob:useMobAbility(695); -- BW
            mob:setLocalVar("Mired_Cerberus_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 10);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SpawnMob(mob:getID()+3) -- Spawns Mired_Orthrus
end;