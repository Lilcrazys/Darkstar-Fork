---------------------------------------------------------------------------------------------------
-- func: @setmodel <model ID> <slot ID>
-- desc: individually set appearance of gear slots on temporary basis.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ii"
};

function onTrigger(player, model, slot)
    local assistant = false;
    if (player:getVar("AssistantGM") == 1 and (player:checkNameFlags(0x02002000) or player:checkNameFlags(0x02022000))) then
        assistant = true;
    end

    local gmlvl = player:getGMLevel();
      -- Char must be an actual GM, or an assistant.
    if (gmlvl >= 1 or assistant == true) then

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
    end
end;