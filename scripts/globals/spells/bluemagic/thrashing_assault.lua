---------------------------------------------
-- Spell: Thrashing Assault
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
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
    params.tpmod = TPMOD_DAMAGE;
    params.dmgtype = DMGTYPE_SLASH;
    params.scattr = SC_SCISSION;
    params.numhits = 5;
    params.multiplier = 2;
    params.tp150 = 1.25;
    params.tp300 = 1.5;
    params.azuretp = 1.75;
    params.tMultiplier = 2.0;
    params.duppercap = 100;
    params.str_wsc = 0.32;
    params.dex_wsc = 0.32;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);
    return damage;
end;
