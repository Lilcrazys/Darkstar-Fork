require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");
-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
    params.tpmod = TPMOD_CRITICAL; params.dmgtype = DMGTYPE_PIERCE; params.scattr = SC_FRAGMENTATION;
    params.numhits = 2;
    params.multiplier = 6.0; params.tp150 = 0.5; params.tp300 = 1; params.azuretp = 1; params.duppercap = 69; -- guesstimated crit %s for TP
    params.str_wsc = 0.2; params.dex_wsc = 0.2; params.vit_wsc = 0.3; params.agi_wsc = 0.0; params.int_wsc = 2.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
    damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    return damage;
end;