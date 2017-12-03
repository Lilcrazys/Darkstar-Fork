-----------------------------------
-- Area: West Sarutabaruta
--  MOB: Twinkling Treant
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
    mob:setMod(MOD_UDMGPHYS, 0);
    mob:setMod(MOD_UDMGRANGE, 0);
    mob:setMod(MOD_UDMGMAGIC, 0);
    mob:setMod(MOD_UDMGBREATH, 0);

    mob:setLocalVar("Trigger", 100);
end;

function onMobFight(mob, target)
    local trigger = mob:getLocalVar("Trigger");
    local currentTime = os.time();
    local nextDrop = mob:getLocalVar("giftDrop");
    if (mob:getHPP() < trigger and currentTime > nextDrop) then
        -- Lets spawn some boxes! (up to 9 at a time, randomly)
        local firstBox = mob:getID()-9;
        local lastBox = mob:getID()-(math.random(1,8));
        for boxes = firstBox, lastBox do
            if (GetMobAction(boxes) == ACTION_NONE) then
                local xPos = mob:getXPos()+math.random(2,5);
                local yPos = mob:getYPos()-1;
                local zPos = mob:getZPos()+math.random(2,5);
                local rotPos = math.random(0,255);
                GetMobByID(boxes):setSpawn(xPos,yPos,zPos,rotPos);
                SpawnMob(boxes);
                GetMobByID(boxes):setPos(xPos,yPos,zPos,rotPos);
            end
        end
        mob:setLocalVar("Trigger", mob:getHPP());
        mob:setLocalVar("giftDrop", os.time()+math.random(85,110));

        -- Send message to nearby players (30 yalm or less)
        local letsPartaaaay = mob:getZone():getPlayers();
        -- local letsPartaaaay = mob:getEnmityList();
        for hey, dude in pairs(letsPartaaaay) do
            local distance = dude:checkDistance(mob);
            if (distance <= 30 and dude:isPC()) then
                dude:SpoofMsg("Gifts and decorations scatter as the Twinkling Treant shakes! ", mob, chatType.ECHO, nil);
            end
        end
    end
end;

function onCriticalHit(mob)
    if (mob:getMod(MOD_UDMGMAGIC) < 1000) then
        mob:addMod(MOD_UDMGMAGIC, 3);
    end

    if (mob:getMod(MOD_UDMGBREATH) < 1000) then
        mob:addMod(MOD_UDMGBREATH, 2);
    end

    if (math.random(1,3) == 2 and os.time() > mob:getLocalVar("nextBuff")) then
        -- AoE buff nearby players
        local peopleNear = mob:getZone():getPlayers();
        mob:setLocalVar("nextBuff", os.time()+11);
        for buff, sponges in pairs(peopleNear) do
            local distance = sponges:checkDistance(mob);
            if (sponges:isPC() and distance < 32) then
                sponges:addStatusEffect(EFFECT_HASTE,224,0,90);
                sponges:addHP(sponges:getMaxHP() * 0.11);
                sponges:addMP(sponges:getMaxMP() * 0.11);
                sponges:addTP(255);
                sponges:injectActionPacket(6, 599, 0, 0, 0);
                sponges:SpoofMsg("Twinkling Starlights scatter as the Twinkling Treant shakes! ", mob, chatType.ECHO, nil);
            end
        end
    end
end;

function onWeaponskillHit(mob, attacker, weaponskill)
    if (mob:getMod(MOD_UDMGMAGIC) < 1000) then
        mob:addMod(MOD_UDMGMAGIC, 1);
    end

    if (mob:getMod(MOD_UDMGBREATH) < 1000) then
        mob:addMod(MOD_UDMGBREATH, 2);
    end

    return 1;
end;

function onMagicHit(caster, target, spell)
    if (target:getMod(MOD_UDMGPHYS) < 1000) then
        target:addMod(MOD_UDMGPHYS, 2);
    end

    if (target:getMod(MOD_UDMGRANGE) < 1000) then
        target:addMod(MOD_UDMGRANGE, 2);
    end

    return 1;
end;

function onMobDeath(mob, player, isKiller)
    if (isKiller == true) then
        local rndNumber = math.random(1,100);
        if (rndNumber > 90) then
            player:addTreasure(3596, mob); -- Ornament Case
        -- Region rockin choco, or common random rockin choco
        elseif (rndNumber > 50) then
            -- This random only works because these items have sequential IDs - don't try to copy it.
            -- 1 of 5 Hobby-Bo furnishing at random.
            player:addTreasure(math.random(326,330));
        else
            player:addTreasure(329, mob); -- Blue-hobby-bo
        end

        -- (disabled, nobody wants these while homepoint warps are a thing)
        -- This random only works because these items have sequential IDs - don't try to copy it.
        -- Kingdom Stables Collar/Republic Stables Medal/Federation Stables Scarf
        -- player:addTreasure(math.random(13179,13181));

        -- Always drop region specific wreath
        player:addTreasure(3620, mob); -- Silberkranz
    end

    if (player == nil or isKiller == true) then
        -- Freebies for people who are even nearby (under 21 yalm)
        local deezNuts = mob:getZone():getPlayers();
        for some, guy in pairs(deezNuts) do
            local distance = guy:checkDistance(mob);
            if (distance < 21) then
                -- This random only works because these 3 items have sequential IDs - don't try to copy it.
                guy:addTreasure(math.random(5620,5622)); -- Roast Turkey/Candy Ring/Candy Cane
            end
        end
    end
end;
