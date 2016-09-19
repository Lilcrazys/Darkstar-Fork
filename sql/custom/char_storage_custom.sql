-- ---------------------------------------------------------------------------
-- This is here to ensure these storage container sizes are 80..
-- ---------------------------------------------------------------------------

ALTER TABLE `char_storage`
  MODIFY `inventory` tinyint(2) unsigned NOT NULL DEFAULT 80,
  MODIFY `safe` tinyint(2) unsigned NOT NULL DEFAULT 80,
  MODIFY `satchel` tinyint(2) unsigned NOT NULL DEFAULT 80,
  MODIFY `sack` tinyint(2) unsigned NOT NULL DEFAULT 80;


-- ---------------------------------------------------------------------------
-- Lets fix any previously made wrong entries while we're here..
-- ---------------------------------------------------------------------------

UPDATE `char_storage` SET `inventory` = 80;
UPDATE `char_storage` SET `safe` = 80;
UPDATE `char_storage` SET `satchel` = 80;
UPDATE `char_storage` SET `sack` = 80;
