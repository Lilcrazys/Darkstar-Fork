---------------------------------------------------------------------------------------------------
-- func: @regen
-- desc: activates Legion custom Buff
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

-- Don't use a var here, it doesn't get cleared when the effects get removed by causes other than GM command...
function onTrigger(player)
    if (player:getMainLvl() <= 75) then
        -- Clear any existing...
        player:delStatusEffect(EFFECT_LEGION);
        -- And replace with fresh status...
        player:addStatusEffectEx(EFFECT_LEGION,EFFECT_REGEN,0,0,0);
    else
        player:PrintToPlayer("Sorry your level is too high for this command right now!, only level 75 and lower are permitted.");
    end
end