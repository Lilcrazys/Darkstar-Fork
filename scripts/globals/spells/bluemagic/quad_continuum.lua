-----------------------------------------
-- Spell: Quadratic Continuum
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
    params.tpmod = TPMOD_ATTACK;
    params.dmgtype = DMGTYPE_SLASH;
    params.scattr = SC_DISTORTION;
    params.numhits = 4;
    params.multiplier = 1;
    params.tp150 = 1.50;
    params.tp300 = 1.75;
    params.azuretp = 1.5;
    params.tMultiplier = 2.0;
    params.duppercap = 69;
    params.str_wsc = 0.32;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.32;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    return damage;
end;