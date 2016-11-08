-----------------------------------
-- Area: Legion
-- Lofty_Zilant
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

    -- addMod
    mob:addMod(MOD_DEF,75);

    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_MACC,1425); -- Rebalance with addMod instead later...
    mob:setMod(MOD_MATT,120);  -- Rebalance with addMod instead later...
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    local RND1 = math.random(1,15);
    if (RND1 == 1) then
        SetDropRate(9000,21294,75); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 2) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,75); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 3) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,75); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 4) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,75); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 5) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,75); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 6) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,75); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 7) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,75); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 8) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,75); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 9) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,75); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 10) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,75); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 11) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,75); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 12) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,75); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 13) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,75); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 14) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,75); -- Ninzas
        SetDropRate(9000,20967,0); -- Qatsunoci
    elseif (RND1 == 15) then
        SetDropRate(9000,21294,0); -- Hgafircian
        SetDropRate(9000,21132,0); -- Aedold
        SetDropRate(9000,20924,0); -- Iizamal
        SetDropRate(9000,21242,0); -- Bocluamni
        SetDropRate(9000,20742,0); -- Iztaasu
        SetDropRate(9000,21209,0); -- Uffrat
        SetDropRate(9000,21058,0); -- Shichishito
        SetDropRate(9000,21208,0); -- Lehbrailg
        SetDropRate(9000,20877,0); -- Iclamar
        SetDropRate(9000,20833,0); -- Faizzeer
        SetDropRate(9000,20787,0); -- Crobaci
        SetDropRate(9000,21013,0); -- Kannakiri
        SetDropRate(9000,20641,0); -- Leisilonu
        SetDropRate(9000,20553,0); -- Ninzas
        SetDropRate(9000,20967,75); -- Qatsunoci
    end

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Lofty_Zilant_2hr = mob:getLocalVar("Lofty_Zilant_2hr");

    if (mob:getHPP() <= 15) then
        if (Lofty_Zilant_2hr == 1) then
            mob:useMobAbility(695); -- BW
            mob:setLocalVar("Lofty_Zilant_2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Lofty_Zilant_2hr == 0) then
            mob:useMobAbility(688); -- MS
            mob:setLocalVar("Lofty_Zilant_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 50);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local popBoss = true;
    local MobIDs = {17526785, 17526786, 17526787, 17526788, 17526790, 17526791};
    -- Lofty_Zilant 17526789

    for deezNuts, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526791);
    end
end;