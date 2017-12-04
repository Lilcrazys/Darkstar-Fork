-----------------------------------------
-- Spell: Pining Nocturne
-- Decreases enemy's MACC and increases
-- spellcasting time.
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local power = 20
    local duration = 120;
    duration = duration + (duration * (caster:getMod(MOD_SONG_DURATION)/100));
    duration = duration + (duration * ((caster:getMod(MOD_ALL_SONGS_EFFECT) * 10)/100));
    power = power + (caster:getMod(MOD_ALL_SONGS_EFFECT) * 4);

    target:addStatusEffect(EFFECT_NOCTURNE,power,0,duration);
    spell:setMsg(230);

    return EFFECT_NOCTURNE;
end;
