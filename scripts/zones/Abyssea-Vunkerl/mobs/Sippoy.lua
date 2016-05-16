-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Sippoy
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)

    local RND1 = math.random(1,15);
    if (RND1 == 1) then
        SetDropRate(3210,20736,76); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210,21286,0); -- Hgafircian +1
        SetDropRate(3210,21051,0); -- Shichishito +1
        SetDropRate(3210,20634,0); -- Leisilonu +1
        SetDropRate(3210,20961,0); -- Qatsunoci +1
        SetDropRate(3210,20915,0); -- Iizamal +1
        SetDropRate(3210,21236,0); -- Bocluamni +1
        SetDropRate(3210,20775,0); -- Crobaci +1
        SetDropRate(3210,21195,0); -- Uffrat +1
        SetDropRate(3210,20870); -- Iclamar +1
        SetDropRate(3210,21194,0); -- Lehbrailg +1
        SetDropRate(3210,21004,0); -- Kannakiri +1
        SetDropRate(3210,20824,0); -- Faizzeer +1
    elseif (RND1 == 2) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,76); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 3) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,76); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 4) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,76); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 5) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,76); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 6) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,76); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 7) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,76); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 8) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,76); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 9) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,76); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 10) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,76); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 11) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,76); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 12) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.208776); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 13) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,76); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 14) then
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,76); -- Kannakiri +1
        SetDropRate(3210.20824,0); -- Faizzeer +1
    elseif (RND1 == 15) then        
        SetDropRate(3210,20736,0); -- Iztaasu +1
        SetDropRate(3210,21126,0); -- Aedold +1
        SetDropRate(3210,20546,0); -- Ninzas +1
        SetDropRate(3210.21286,0); -- Hgafircian +1
        SetDropRate(3210.21051,0); -- Shichishito +1
        SetDropRate(3210.20634,0); -- Leisilonu +1
        SetDropRate(3210.20961,0); -- Qatsunoci +1
        SetDropRate(3210.20915,0); -- Iizamal +1
        SetDropRate(3210.21236,0); -- Bocluamni +1
        SetDropRate(3210.20775,0); -- Crobaci +1
        SetDropRate(3210.21195,0); -- Uffrat +1
        SetDropRate(3210.20870); -- Iclamar +1
        SetDropRate(3210.21194,0); -- Lehbrailg +1
        SetDropRate(3210.21004,0); -- Kannakiri +1
        SetDropRate(3210.20824,76); -- Faizzeer +1
    end
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_WOULD_BE_KING) == false) then
        player:addKeyItem(ATMA_OF_THE_WOULD_BE_KING);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_WOULD_BE_KING);
    end
end;

