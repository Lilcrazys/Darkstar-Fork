-----------------------------------
-- Area: Legion
-- Lofty Adamatoise
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1); -- Invincible
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
    -- addMod
    mob:addMod(MOD_EVA,-115);
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
        SetDropRate(9006,21294,75); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 2) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,75); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 3) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,75); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 4) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,75); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 5) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,75); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 6) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,75); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 7) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,75); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 8) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,75); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 9) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,75); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 10) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,75); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 11) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,75); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 12) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,75); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 13) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,75); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 14) then
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,75); -- Ninzas   
        SetDropRate(9006,20967,0); -- Qatsunoci
    elseif (RND1 == 15) then        
        SetDropRate(9006,21294,0); -- Hgafircian
        SetDropRate(9006,21132,0); -- Aedold    
        SetDropRate(9006,20924,0); -- Iizamal    
        SetDropRate(9006,21242,0); -- Bocluamni    
        SetDropRate(9006,20742,0); -- Iztaasu    
        SetDropRate(9006,21209,0); -- Uffrat   
        SetDropRate(9006,21058,0); -- Shichishito
        SetDropRate(9006,21208,0); -- Lehbrailg
        SetDropRate(9006,20877,0); -- Iclamar
        SetDropRate(9006,20833,0); -- Faizzeer    
        SetDropRate(9006,20787,0); -- Crobaci    
        SetDropRate(9006,21013,0); -- Kannakiri    
        SetDropRate(9006,20641,0); -- Leisilonu    
        SetDropRate(9006,20553,0); -- Ninzas   
        SetDropRate(9006,20967,75); -- Qatsunoci
    end    

end;

-----------------------------------

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
-- end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Lofty_Adamantoise_2hr = 0;
    if (mob:getLocalVar("Lofty_Adamantoise_2hr") ~= nil) then
        Lofty_Adamantoise_2hr_Used = mob:getLocalVar("Lofty_Adamantoise_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Lofty_Adamantoise_2hr_Used == 0) then
            mob:useMobAbility(438); -- Invicible
            mob:setLocalVar("Lofty_Adamantoise_2hr", 1);
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
-- end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 10);
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Ferromantoise    
end;