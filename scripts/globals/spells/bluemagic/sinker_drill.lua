-----------------------------------------
-- Spell: Sinker Drill
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
    params.dmgtype = DMGTYPE_PIERCE;
    params.scattr = SC_IMPACTION;
    params.numhits = 5;
    params.multiplier = 2;
    params.tp150 = 1.25;
    params.tp300 = 1.5;
    params.azuretp = 1.75;
    params.tMultiplier = 2.0;
    params.duppercap = 100;
    params.str_wsc = 0.00;
    params.dex_wsc = 1.0;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    return damage;
end;
