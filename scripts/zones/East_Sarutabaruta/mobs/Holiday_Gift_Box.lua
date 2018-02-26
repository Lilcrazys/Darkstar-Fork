-----------------------------------
-- Area: West Sarutabaruta
--  MOB: Holiday Gift Box
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_NO_MOVE, 1);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:SetMobSkillAttack(9999); -- Used to prevent mob action
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (isKiller == true) then
        local lootPool =
        {
            [1]  = {ID = nil,   multi = false}, -- Buff
            [2]  = {ID = 5542,  multi = false}, -- Gateau aux Fraises
            [3]  = {ID = 5620,  multi = false}, -- Roast Turkey
            [4]  = {ID = 5621,  multi = false}, -- Candy Ring
            [5]  = {ID = 5622,  multi = false}, -- Candy Cane
            [6]  = {ID = 4168,  multi = true},  -- Twinkle Shower
            [7]  = {ID = 4169,  multi = true},  -- Little Comet
            [8]  = {ID = 4216,  multi = true},  -- Brilliant Snow
            [9]  = {ID = 4218,  multi = true},  -- Air Rider
            [10] = {ID = 4257,  multi = true},  -- Papillion
            [11] = {ID = 5441,  multi = true},  -- Angelwing
            [12] = {ID = 5883,  multi = true},  -- Falling Star
            [13] = {ID = 88,    multi = false}, -- Timepiece
            [14] = {ID = 154,   multi = false}, -- Miniature-Airship
            [15] = {ID = 264,   multi = false}, -- Stuffed-Chocobo
            [16] = {ID = 320,   multi = false}, -- Harpsichord
            -- (disabled, nobody wants these while homepoint warps are a thing)
            -- [17] = {ID = 13179, multi = false}, -- Kingdom Stables Collar
            -- [18] = {ID = 13180, multi = false}, -- Republic Stables Medal
            -- [19] = {ID = 13181, multi = false}, -- Federation Stables Scarf
            [17] = {ID = 13216, multi = false}, -- Gold Moogle Belt
            [18] = {ID = 13217, multi = false}, -- Silver Moogle Belt
            [19] = {ID = 13218, multi = false}, -- Bronze Moogle Belt
            [20] = {ID = 5543,  multi = false}, -- Midwinter Dream
            [21] = {ID = nil,   multi = false}  -- Buff
        }
        local randomItem = lootPool[math.random(1,21)];
        if (randomItem.ID ~= nil) then -- Item!
            -- Direct drop to killing party/alliance/person
            if (randomItem.multi == true) then
                -- 2x drops
                player:addTreasure(randomItem.ID);
                player:addTreasure(randomItem.ID);
            else
                -- 1x drop
                player:addTreasure(randomItem.ID);
            end
            -- Freebies for people who are even nearby
            local deezNuts = mob:getZone():getPlayers();
            for some, guy in pairs(deezNuts) do
                local distance = guy:checkDistance(mob);
                if (guy:isPC() and distance <= 30 and math.random(1,3) ~= 2) then
                    guy:injectActionPacket(6, 603, 0, 0, 0);
                    if (randomItem.multi == true) then
                        -- 2x drops
                        guy:addTreasure(randomItem.ID);
                        guy:addTreasure(randomItem.ID);
                    else
                        -- 1x drop
                        guy:addTreasure(randomItem.ID);
                    end
                end
            end
        else -- no item, so AoE buff nearby players instead
            local peopleNear = mob:getZone():getPlayers();
            for buff, sponges in pairs(peopleNear) do
                local distance = sponges:checkDistance(mob);
                if (sponges:isPC() and distance <= 30) then
                    sponges:addStatusEffect(EFFECT_HASTE,224,0,90);
                    sponges:addHP(sponges:getMaxHP() * 0.11);
                    sponges:addMP(sponges:getMaxMP() * 0.11);
                    sponges:addTP(525);
                    sponges:injectActionPacket(6, 599, 0, 0, 0);
                    sponges:PrintToPlayer("Twinkling starlights are released from the box. ", chatType.SYSTEM_3, npc:getName());
                end
            end
        end
    end
end;
