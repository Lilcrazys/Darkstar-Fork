---------------------------------------------------------------------------------------------------
-- func: @minion <sub command>
-- desc: temp code for Teo's temporary minions, as needed.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "sis"
};

function onTrigger(player, subcommand, param, param2)
    if (player:getName() == "Beaker") then
        if (subcommand == nil or subcommand == "help") then
            player:PrintToPlayer("warp - jump to hompoint")
            player:PrintToPlayer("zone number name - jump a player to zone number")
            player:PrintToPlayer("superman - mini godmode in bcnm")
            player:PrintToPlayer("@minion <sub command> <sub command param>")
        elseif (subcommand == "warp") then
            if (player:getVar("inJail") == 0 and player:getZoneID() ~= 131) then
                require("scripts/globals/status");
                require("scripts/globals/teleports");
                player:injectActionPacket(4, 261, 0, 0, 0);
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,4);
            else
                player:PrintToPlayer("CANNOT TELEPORT JAILED CHARACTER!");
            end
        elseif (subcommand == "zone") then
            if (param2 == nil) then
                if (param == nil) then
                    player:PrintToPlayer("You must enter a zone ID.");
                else
                    player:setPos(0, 0, 0, 0, param);
                end
            else
                local targ = GetPlayerByName(param2);
                if (targ ~= nil) then
                    if (param == nil) then
                        player:PrintToPlayer("You must enter a zone ID.");
                    else
                        targ:setPos(0, 0, 0, 0, param);
                    end
                else
                    player:PrintToPlayer(string.format("Player named '%s' not found!", param2));
                end
            end
        elseif (subcommand == "superman") then
            if (player:hasStatusEffect(EFFECT_BATTLEFIELD)) then
                -- Add bonus effects to the player..
                player:addStatusEffect(EFFECT_MAX_HP_BOOST,2000,0,0);
                player:addStatusEffect(EFFECT_MAX_MP_BOOST,2000,0,0);
                player:addStatusEffect(EFFECT_SENTINEL,50,0,0);
                player:addStatusEffect(EFFECT_MIGHTY_STRIKES,1,0,0);
                player:addStatusEffect(EFFECT_MANAFONT,1,0,0);
                player:addStatusEffect(EFFECT_REGAIN,150,1,0);
                player:addStatusEffect(EFFECT_REFRESH,99,0,0);
                player:addStatusEffect(EFFECT_REGEN,99,0,0);
                player:addStatusEffectEx(EFFECT_SJCAP_BOOST,EFFECT_TRANSCENDENCY,1,0,0)

                -- Add bonus mods to the player..
                player:addMod(MOD_RACC,400);
                player:addMod(MOD_RATT,500);
                player:addMod(MOD_ACC,400);
                player:addMod(MOD_ATT,500);
                player:addMod(MOD_MATT,400);
                player:addMod(MOD_MACC,500);
                player:addMod(MOD_RDEF,200);
                player:addMod(MOD_DEF,800);
                player:addMod(MOD_MDEF,500);

                -- Heal the player from the new buffs..
                player:addHP( 50000 );
                player:setMP( 50000 );
                player:PrintToPlayer("This will wear off when you zone.");
            else
                player:PrintToPlayer("SHENANIGANS DETECTED! Only use in BCNM!");
            end
        end
    else
        player:PrintToPlayer("SHENANIGANS DETECTED!");
    end
end