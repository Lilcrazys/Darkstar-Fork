-----------------------------------
-- Area: Abyssea - Altepa (218)
--  Mob: Rani
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Altepa/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_UFASTCAST, 55);
    -- addMod
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,900);
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,125);
    mob:addMod(MOD_MDEF,75);
    mob:addMod(MOD_DEF,140);

    local RND1 = math.random(1,15);
    if (RND1 == 1) then
        SetDropRate(2925,20736,81); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 2) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,81); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 3) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,81); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 4) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,81); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 5) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,81); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 6) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,81); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 7) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,81); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 8) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,81); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 9) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,81); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 10) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,81); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 11) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,81); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 12) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,208781); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 13) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,81); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 14) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,81); -- Kannakiri +1
        SetDropRate(2925,20824,0); -- Faizzeer +1
    elseif (RND1 == 15) then
        SetDropRate(2925,20736,0); -- Iztaasu +1
        SetDropRate(2925,21126,0); -- Aedold +1
        SetDropRate(2925,20546,0); -- Ninzas +1
        SetDropRate(2925,21286,0); -- Hgafircian +1
        SetDropRate(2925,21051,0); -- Shichishito +1
        SetDropRate(2925,20634,0); -- Leisilonu +1
        SetDropRate(2925,20961,0); -- Qatsunoci +1
        SetDropRate(2925,20915,0); -- Iizamal +1
        SetDropRate(2925,21236,0); -- Bocluamni +1
        SetDropRate(2925,20775,0); -- Crobaci +1
        SetDropRate(2925,21195,0); -- Uffrat +1
        SetDropRate(2925,20870); -- Iclamar +1
        SetDropRate(2925,21194,0); -- Lehbrailg +1
        SetDropRate(2925,21004,0); -- Kannakiri +1
        SetDropRate(2925,20824,81); -- Faizzeer +1
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
    player:addTitle(RANI_DECROWNER);

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH) == false) then
        player:addKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_MERCILESS_MATRIARCH);
    end

end;
