-- ---------------------------------------------------------------------------
-- This file list drops that are scripted, so that the website
-- can properly display these items like ordinary drops.
-- This should contain ONLY table structure followed by INSERT statements.
-- ---------------------------------------------------------------------------
DROP TABLE IF EXISTS `mob_droplist_scripted`;
CREATE TABLE `mob_droplist_scripted` (
  `dropId` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `itemId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate` smallint(4) unsigned NOT NULL DEFAULT '0',
  KEY `dropId` (`dropId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=9;
-- INSERT INTO `mob_droplist_scripted` VALUES (dropId,type,itemId,rate); -- Item Name [Mob Name]

-- Taisaijin
-- INSERT INTO `mob_droplist_scripted` VALUES (3430,0,4717,500); -- Refresh
-- INSERT INTO `mob_droplist_scripted` VALUES (3430,0,4850,500); -- Refresh II