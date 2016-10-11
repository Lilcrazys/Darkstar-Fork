-----------------------------------
-- Area: Abyssea - Vunkerl (217)
--  NM:  Sedna
-----------------------------------

require("scripts/zones/Abyssea-Vunkerl/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

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
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,110);
    mob:setMod(MOD_MACC,1700);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_MDEF,50);

    local RND1 = math.random(1,15);
    if (RND1 == 1) then
        SetDropRate(3106,20736,76); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 2) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,76); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 3) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,76); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 4) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,76); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 5) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,76); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 6) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,76); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 7) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,76); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 8) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,76); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 9) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,76); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 10) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,76); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 11) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,76); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 12) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,208776); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 13) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,76); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 14) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,76); -- Kannakiri +1
        SetDropRate(3106,20824,0); -- Faizzeer +1
    elseif (RND1 == 15) then
        SetDropRate(3106,20736,0); -- Iztaasu +1
        SetDropRate(3106,21126,0); -- Aedold +1
        SetDropRate(3106,20546,0); -- Ninzas +1
        SetDropRate(3106,21286,0); -- Hgafircian +1
        SetDropRate(3106,21051,0); -- Shichishito +1
        SetDropRate(3106,20634,0); -- Leisilonu +1
        SetDropRate(3106,20961,0); -- Qatsunoci +1
        SetDropRate(3106,20915,0); -- Iizamal +1
        SetDropRate(3106,21236,0); -- Bocluamni +1
        SetDropRate(3106,20775,0); -- Crobaci +1
        SetDropRate(3106,21195,0); -- Uffrat +1
        SetDropRate(3106,20870); -- Iclamar +1
        SetDropRate(3106,21194,0); -- Lehbrailg +1
        SetDropRate(3106,21004,0); -- Kannakiri +1
        SetDropRate(3106,20824,76); -- Faizzeer +1
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
    local SPELL_CHANCE = 40;

    player:addTitle(SEDNA_TUSKBREAKER);

    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_TUSKED_TERROR) == false) then
        player:addKeyItem(ATMA_OF_THE_TUSKED_TERROR);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_TUSKED_TERROR);
    end
    if (math.random(0,99) < SPELL_CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(654) == false) then
        player:addSpell(654);
    end

end;