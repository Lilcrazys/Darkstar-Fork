-----------------------------------
--
-- EFFECT_ELEMENTAL_SFORZO
--
-----------------------------------
require("scripts/globals/status");

function onEffectGain(target,effect)
    target:addMod(MOD_UDMGMAGIC, -256);
    -- No way to tell if effect source was a spell or other yet.
    -- Don't even know if this grants immunity to enfeebling magics on retail actually..
    target:addMod(MOD_SLEEPRES, 100);
    target:addMod(MOD_POISONRES, 100);
    target:addMod(MOD_PARALYZERES, 100);
    target:addMod(MOD_BLINDRES, 100);
    target:addMod(MOD_SILENCERES, 100);
    target:addMod(MOD_VIRUSRES, 100);
    target:addMod(MOD_PETRIFYRES, 100);
    target:addMod(MOD_BINDRES, 100);
    target:addMod(MOD_CURSERES, 100);
    target:addMod(MOD_GRAVITYRES, 100);
    target:addMod(MOD_SLOWRES, 100);
    target:addMod(MOD_STUNRES, 100);
    target:addMod(MOD_CHARMRES, 100);
    target:addMod(MOD_AMNESIARES, 100);
    -- target:addMod(MOD_?_RES, 100); -- Doesn't exist yet
    target:addMod(MOD_DEATHRES, 100);
end;

function onEffectTick(target,effect)
end;

function onEffectLose(target,effect)
    target:delMod(MOD_UDMGMAGIC, -256);
    target:delMod(MOD_SLEEPRES, 100);
    target:delMod(MOD_POISONRES, 100);
    target:delMod(MOD_PARALYZERES, 100);
    target:delMod(MOD_BLINDRES, 100);
    target:delMod(MOD_SILENCERES, 100);
    target:delMod(MOD_VIRUSRES, 100);
    target:delMod(MOD_PETRIFYRES, 100);
    target:delMod(MOD_BINDRES, 100);
    target:delMod(MOD_CURSERES, 100);
    target:delMod(MOD_GRAVITYRES, 100);
    target:delMod(MOD_SLOWRES, 100);
    target:delMod(MOD_STUNRES, 100);
    target:delMod(MOD_CHARMRES, 100);
    target:delMod(MOD_AMNESIARES, 100);
    -- target:delMod(MOD_?_RES, 100); -- Doesn't exist yet
    target:delMod(MOD_DEATHRES, 100);
end;
