-----------------------------------------
-- Spell: Temp. Upheaval
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
    local params = {};
    params.multiplier = 3.65;
    params.tMultiplier = 2.0;
    params.duppercap = 79;
    params.str_wsc = 0.0;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.4;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
    local damage = BlueMagicalSpell(caster, target, spell, params, INT_BASED);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    return damage;
end;
