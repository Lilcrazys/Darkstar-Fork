-----------------------------------------
-- ID: 17961
-- Item: Lion Tamer
-- Effect: Pet DEF +10
-- Enchantment: "Enfire"
-- Charges: 50 Reuse: 300 Secs
-- Duration assumed same as Enfire spell..Probably wrong
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    return 0;
end;
-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addStatusEffect(EFFECT_ENFIRE, 10, 0, 300);
end;
