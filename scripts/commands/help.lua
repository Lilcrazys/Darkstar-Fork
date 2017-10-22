---------------------------------------------------------------------------------------------------
-- func: help
-- desc: Lists available GM commands.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local gmlvl = player:getGMLevel();
    -- Displaying commands this player can use, sorted by GM tier, 3 at a time.
    if (player:getVar("_isMinion_") > 0) then -- Minions only
        player:PrintToPlayer("!minion <subcommand> <parameters, parameters, parameters> ");
    end

    if (gmlvl >= 0) then -- Regular non GM players
        player:PrintToPlayer("/? (displays client side commands) ");
        player:PrintToPlayer("!ecv (displays the servers Expected Client Version) ");
        player:PrintToPlayer("!getls  !where  !revision  !setmusic  !costume  !grats ");
        player:PrintToPlayer("!trial  !shop  !ah  !tele  !atma  !regen (pre 75 only) ");
        player:PrintToPlayer("!cshop (unreleased beta state, source of much confusion) ");
    end

    -- Previous tiers are already displayed, don't duplicate!
    if (gmlvl >= 1) then --Junior GM (reduced powers)
        player:PrintToPlayer("!togglegm  !hide  !posfix  !speed  !setmodel ");
        player:PrintToPlayer("!zap  !jail  !pardon  !logoff  !chocobo ");
        player:PrintToPlayer("!hasitem  !haskeyitem  !release  !reloadglobal ");
        player:PrintToPlayer("!checkvar  !checkmission  !checkquest  !checktrial  !checknexus ");
        player:PrintToPlayer("!stats  !getstats  !getid  !getmobname  !getmodel ");
        player:PrintToPlayer("!getmobaction  !setmodel  !setplayermodel ");
        player:PrintToPlayer("!addallmaps  !goto  !49  !op  !zone  !homepoint  !return  !pos ");
        player:PrintToPlayer("!message2self  !messagebasic  !messagespecial  !injectaction ");
    end

    if (gmlvl >= 2) then -- Regular GM
        player:PrintToPlayer("!setplayervar  !bring  !send  !cs  !cs2  !jinx ");
        player:PrintToPlayer("!addmission  !completemission  !delmission ");
        player:PrintToPlayer("!addquest  !delquest  !completequest ");
        player:PrintToPlayer("!addkeyitem  !delkeyitem  !addcurrency  !delcurrency ");
        player:PrintToPlayer("!additem  !delitem  !giveitem  !givexp  !addtreasure ");
        player:PrintToPlayer("!addspell  !addallspells  !delspell  !setgil ");
        player:PrintToPlayer("!setskill  !capskill  !capallskills  !title ");
        player:PrintToPlayer("!spawnmob  !despawnmob  !mobhere  !npchere  !despawnnpc ");
        player:PrintToPlayer("!raise  !dynareset  !checkrepop ");
        player:PrintToPlayer("!changejob  !changesjob  !setplayerlevel  !setmerits ");
        player:PrintToPlayer("!setmobflags  !mobsub  !animatenpc  !animatesubnpc ");
        player:PrintToPlayer("!monstrosity  !setweather  !setmentor ");
        player:PrintToPlayer("!sjboost  !wallhack  !up  !down  !door ");
        player:PrintToPlayer("!legionhall  !legionlaunch  !mamool1  !mamool2  !mamool3 ");
        player:PrintToPlayer("!troll1  !troll2  !troll3 !undead1  !undead2  !undead3 ");
    end

    if (gmlvl >= 3) then -- Full GM
        player:PrintToPlayer("!addtempitem  !cnation  !cp ");
        player:PrintToPlayer("!testmode  !godmode  !setmobstats ");
        player:PrintToPlayer("!reset  !updateservermessage ");
    end

    if (gmlvl >= 4) then -- Senior GM
        player:PrintToPlayer("!givegil  !takegil");
        player:PrintToPlayer("!timeoffset  !updateconquest ");
    end

    if (gmlvl >= 5) then -- Lead GM
        -- Nothing yet.
    end

    -- Since each prints until reaching a gmlvl the player doesn't have, this tier sees ALL.
    if (gmlvl >= 6) then -- Admin/Developer
        player:PrintToPlayer("!exec  !kill  !menu  !message2server  !nm ");
        player:PrintToPlayer("!addallkeyitems (don't..its problematic) ");
        player:PrintToPlayer("!shoptest  !heroshop  !adddynatime (crashy) ");
        player:PrintToPlayer("!slap  !inject  !animation  !entityvisual ");
        player:PrintToPlayer("!givels  !setplayernation  !takexp ");
        player:PrintToPlayer("!hp  !mp  !tp  !pettp  !addeffect  !deleffect ");
        player:PrintToPlayer("!promote  !setflag  !setminion ");
        player:PrintToPlayer("!softban ");
    end
    -- Although it IS technically possibly to create tiers as high as 255...
    if (gmlvl >= 1) then
        player:PrintToPlayer("NOTE YOU CAN EASILY CRASH SERVER MISUSING SOME OF THESE! ");
    end
end;
