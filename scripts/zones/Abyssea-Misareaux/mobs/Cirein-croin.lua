-----------------------------------
-- Area: Abyssea - Misareaux (216)
--  NM:  Cirein-croin
-----------------------------------
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
require("scripts/zones/Abyssea-Misareaux/TextIDs");
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
    -- setMod
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,1700);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    WeaknessTriggerSet(mob,target,ws,spell);

    local RND1 = math.random(1,15);
    if (RND1 == 1) then
        SetDropRate(529,20736,81); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 2) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,81); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 3) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,81); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 4) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,81); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 5) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,81); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 6) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,81); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 7) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,81); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 8) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,81); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 9) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,81); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 10) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,81); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 11) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,81); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 12) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,208781); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 13) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,81); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 14) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,81); -- Kannakiri +1
        SetDropRate(529,20824,0); -- Faizzeer +1
    elseif (RND1 == 15) then
        SetDropRate(529,20736,0); -- Iztaasu +1
        SetDropRate(529,21126,0); -- Aedold +1
        SetDropRate(529,20546,0); -- Ninzas +1
        SetDropRate(529,21286,0); -- Hgafircian +1
        SetDropRate(529,21051,0); -- Shichishito +1
        SetDropRate(529,20634,0); -- Leisilonu +1
        SetDropRate(529,20961,0); -- Qatsunoci +1
        SetDropRate(529,20915,0); -- Iizamal +1
        SetDropRate(529,21236,0); -- Bocluamni +1
        SetDropRate(529,20775,0); -- Crobaci +1
        SetDropRate(529,21195,0); -- Uffrat +1
        SetDropRate(529,20870); -- Iclamar +1
        SetDropRate(529,21194,0); -- Lehbrailg +1
        SetDropRate(529,21004,0); -- Kannakiri +1
        SetDropRate(529,20824,81); -- Faizzeer +1
    end
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;
    ally:addTitle(CIREINCROIN_HARPOONER);

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT) == false) then
        ally:addKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT);
        ally:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_THE_DEEP_DEVOURER) == false) then
        ally:addKeyItem(ATMA_OF_THE_DEEP_DEVOURER);
        ally:messageSpecial(6385, ATMA_OF_THE_DEEP_DEVOURER);
    end
end;