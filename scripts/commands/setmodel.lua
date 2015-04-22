---------------------------------------------------------------------------------------------------
-- func: @setmodel <model ID> <slot ID>
-- auth: TeoTwawki
-- desc: individually set appearance of gear slots on temporary basis.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ii"
};

function onTrigger(player, model, slot)
    if (model == nil or slot == nil) then
        player:PrintToPlayer("Must specify a model ID and visible equipment slot.");
        player:PrintToPlayer("@setmodel <model ID> <slot ID>");
        return
    end

    if (slot >=0 and slot <= 8) then
        player:setModelId(model, slot);
    else
        player:PrintToPlayer("Valid Slot IDs (default is main): ");
        player:PrintToPlayer("0=main 1=sub 2=ranged 3=ammo 4=head 5=body 6=hands 7=legs 8=feet");
        return;
    end
end;