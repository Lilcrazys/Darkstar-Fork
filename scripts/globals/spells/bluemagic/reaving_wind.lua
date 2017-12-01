-----------------------------------------
-- Spell: Reaving Wind
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    -- Todo: monster affinity should modify the amount by 25%
    if (target:getTP() == 0) then
        spell:setMsg(msgBasic.MAGIC_NO_EFFECT);
    else
        target:addTP(-100);
        spell:setMsg(msgBasic.MAGIC_TP_REDUCE);
    end

    return tp;
end;
