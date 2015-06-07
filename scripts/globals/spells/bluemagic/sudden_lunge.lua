-----------------------------------------
--
--    Sudden Lunge
--
-----------------------------------------
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

    params.tpmod = TPMOD_ATTACK;
    params.dmgtype = DMGTYPE_SLASH;
    params.scattr = SC_DETONATION;
    params.numhits = 1;
    params.multiplier = 1.875;
    params.tp150 = 1.25;
    params.tp300 = 1.50;
    params.azuretp = 1.4375;
    params.tMultiplier = 2.0;
    params.duppercap = 100;
    params.str_wsc = 0.0;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.4;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    if(target:hasStatusEffect(EFFECT_STUN)) then
        spell:setMsg(75); -- no effect
    else
        target:addStatusEffect(EFFECT_STUN,0,0,math.random(1,3));
    end

    return damage;
end;