-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of mob_spell_lists.sql
-- and must be imported/executed AFTER that file
-- Please use gaps and comment spell names for easy readability.
-- ---------------------------------------------------------------------------
ALTER TABLE `mob_spell_lists` MODIFY `spell_list_name` varchar(40); -- Required because DSP stupidity
-- INSERT INTO `mob_spell_lists` VALUES ('spell_list_name', spell_list_id, spell_id, min_level, max_level);

INSERT INTO `mob_spell_lists` VALUES ('Tegmine', 399, 322, 1, 255); -- Katon: San
INSERT INTO `mob_spell_lists` VALUES ('Tegmine', 399, 325, 1, 255); -- Hyoton: San

INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 152, 1, 255); -- Blizzard 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 162, 1, 255); -- Stone 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 172, 1, 255); -- Water 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 204, 1, 255); -- Flare
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 206, 1, 255); -- Freeze
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 207, 1, 255); -- Freeze 2
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 208, 1, 255); -- Tornado
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 212, 1, 255); -- Burst
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 214, 1, 255); -- Flood
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 215, 1, 255); -- Flood 2
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 245, 1, 255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('Shinryu', 400, 247, 1, 255); -- Aspir

INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 147, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 152, 1, 255); -- Blizzard 4
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 162, 1, 255); -- Stone 4
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 167, 1, 255); -- Thunder 4
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 172, 1, 255); -- Water 4
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 176, 1, 255); -- Firaga 3
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 181, 1, 255); -- Blizzaga 3
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 186, 1, 255); -- Aeroga 3
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 191, 1, 255); -- Stonega 3
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 196, 1, 255); -- Thundaga 3
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 201, 1, 255); -- Waterga 3
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 251, 1, 255); -- Shock Spikes
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 273, 1, 255); -- Sleepga
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_BLM', 401, 274, 1, 255); -- Sleepga 2

INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 5, 1, 255);  -- Cure V
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 10, 1, 255);  -- Curaga IV
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 14, 1, 255);  -- Poisona
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 15, 1, 255);  -- Paralyna
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 16, 1, 255);  -- Blindna
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 17, 1, 255);  -- Silena
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 18, 1, 255);  -- Stona
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 19, 1, 255);  -- Viruna
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 20, 1, 255);  -- Cursna
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 21, 1, 255);  -- Holy
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 40, 1, 255);  -- Banishga 3
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 46, 1, 255);  -- Protect IV
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 51, 1, 255);  -- Shell IV
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 55, 1, 255);  -- Aquaveil
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 57, 1, 255);  -- Haste
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 59, 1, 255);  -- Silence
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 61, 1, 255);  -- Barblizzard
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_WHM', 402, 112, 1, 255);  -- Flash

-- These belong in script, nee dto set AV to scripted spell use and then free up list 403.
-- (use list 403 for the wynavs? I think retail ones cast.)
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 209, 1, 255); -- Tornado 2
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Absolute_Virtue', 403, 466, 1, 255); -- MAidens Virelai

INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Hope', 404, 168, 1, 255); -- thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Hope', 404, 197, 1, 255); -- thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Hope', 404, 198, 1, 255); -- thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Hope', 404, 213, 1, 255); -- Burst 2

INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love', 405, 197, 1, 255); -- Thundaga 4

INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 249, 1, 255); -- Blaze Spikes
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 147, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 176, 1, 255); -- Firega 3
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl', 406, 359, 1, 255); -- Silencega

INSERT INTO `mob_spell_lists` VALUES ('Sallow_Seymour', 407, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Sallow_Seymour', 407, 365, 1, 255); -- breakga
INSERT INTO `mob_spell_lists` VALUES ('Sallow_Seymour', 407, 499, 1, 255); -- stoneja
INSERT INTO `mob_spell_lists` VALUES ('Sallow_Seymour', 407, 191, 1, 255); -- stonega 3
INSERT INTO `mob_spell_lists` VALUES ('Sallow_Seymour', 407, 192, 1, 255); -- stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Sallow_Seymour', 407, 193, 1, 255); -- stonega 5

INSERT INTO `mob_spell_lists` VALUES ('Sarimanok', 408, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Sarimanok', 408, 158, 1, 255); -- aero5
INSERT INTO `mob_spell_lists` VALUES ('Sarimanok', 408, 187, 1, 255); -- aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Sarimanok', 408, 188, 1, 255); -- aeroga 5

INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 182, 1, 255); -- blizzga 4
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 183, 1, 255); -- blizzga 5
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 497, 1, 255); -- blizzija
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 366, 1, 255); -- graviga
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 362, 1, 255); -- bindga
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 273, 1, 255); -- sleepga
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 365, 1, 255); -- breakga
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Virvatuli', 409, 367, 1, 255); -- Death

INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Pancimanci', 410, 366, 1, 255); -- graviga

INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Lorbulcrub', 411, 366, 1, 255); -- graviga

INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 202, 1, 255); -- waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 203, 1, 255); -- waterga 5
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 501, 1, 255); -- waterja
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 173, 1, 255); -- water 5
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 366, 1, 255); -- graviga
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 362, 1, 255); -- bindga
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 273, 1, 255); -- sleepga
INSERT INTO `mob_spell_lists` VALUES ('Krabimanjaro', 412, 360, 1, 255); -- dispelga

INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 178, 1, 255); -- Firaga 5
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 183, 1, 255); -- Blizzaga 5
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 203, 1, 255); -- Waterga 5
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 247, 1, 255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 365, 1, 255); -- breakga
INSERT INTO `mob_spell_lists` VALUES ('Murk-Veined_Baneberry', 413, 367, 1, 255); -- death

INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 178, 1, 255); -- Firaga 5
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 183, 1, 255); -- Blizzaga 5
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 203, 1, 255); -- Waterga 5
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 247, 1, 255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 365, 1, 255); -- breakga
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 367, 1, 255); -- death
INSERT INTO `mob_spell_lists` VALUES ('Belphoebe', 414, 286, 1, 255); -- Addle

INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 178, 1, 255); -- Firega 5
INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 286, 1, 255); -- addle
INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 356, 1, 255); -- paralyga
INSERT INTO `mob_spell_lists` VALUES ('Lord_Asag', 415, 367, 1, 255); -- Death

INSERT INTO `mob_spell_lists` VALUES ('Akupara', 416, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Akupara', 416, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Akupara', 416, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Akupara', 416, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Akupara', 416, 365, 1, 255); -- Breakga

INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Celaeno', 417, 158, 1, 255); -- Aero 5

INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 147, 1, 255); -- fire  4
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 178, 1, 255); -- firega 5
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 496, 1, 255); -- fireja
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Hahava', 418, 252, 1, 255); -- Stun

INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 286, 1, 255); -- addle
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 500, 1, 255); -- thundaja
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 356, 1, 255); -- paralyga
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Voidwrought', 419, 503, 1, 255); -- impact

INSERT INTO `mob_spell_lists` VALUES ('Vrtra', 420, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Vrtra', 420, 356, 1, 255); -- paralyga
INSERT INTO `mob_spell_lists` VALUES ('Vrtra', 420, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Vrtra', 420, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Vrtra', 420, 245, 1, 255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('Vrtra', 420, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Vrtra', 420, 229, 1, 255); -- Poisionga 5

INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 47, 1, 255); -- Protect 5
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 503, 1, 255); -- Impact
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 178, 1, 255); -- Firega 5
INSERT INTO `mob_spell_lists` VALUES ('Bahamut', 421, 496, 1, 255); -- Fireja

INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 47, 1, 255); -- Protect 5
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 35, 1, 255); -- Diaga 3
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 41, 1, 255); -- Banihshga 3
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 31, 1, 255); -- Banish 4
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 32, 1, 255); -- Banish 5
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 356, 1, 255); -- Paralyga
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 286, 1, 255); -- addle
INSERT INTO `mob_spell_lists` VALUES ('Alexander', 422, 6, 1, 255); -- Cure VI

INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 182, 1, 255); -- blizzga 4
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 183, 1, 255); -- blizzga 5
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 497, 1, 255); -- blizzija
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 366, 1, 255); -- graviga
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 362, 1, 255); -- bindga
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 273, 1, 255); -- sleepga
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 365, 1, 255); -- breakga
INSERT INTO `mob_spell_lists` VALUES ('Odin', 423, 360, 1, 255); -- dispelga

INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 500, 1, 255); -- thundaja
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 366, 1, 255); -- graviga
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 362, 1, 255); -- bindga
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 273, 1, 255); -- sleepga
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 367, 1, 255); -- Death
INSERT INTO `mob_spell_lists` VALUES ('Giltine', 424, 503, 1, 255); -- Impact

INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 502, 1, 255); -- Kaustra
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 215, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 197, 1, 255); -- flare_2
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 205, 1, 255); -- freeze_2
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 207, 1, 255); -- tornado_2
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 209, 1, 255); -- quake_2
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 211, 1, 255); -- burst_2
INSERT INTO `mob_spell_lists` VALUES ('Pil', 425, 213, 1, 255); -- flood_2

INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 153, 1, 255); -- Blizz 5
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 168, 1, 255); -- Thund 5
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 367, 1, 255); -- death
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Akvan', 426, 274, 1, 255); -- Sleepga 2

INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Kaggen', 427, 228, 1, 255); -- Posinga 4

INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 215, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('RwNwPrtMHrw', 428, 501, 1, 255); -- Waterja

INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 367, 1, 255); -- death
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Smierc', 429, 503, 1, 255); -- Impact

INSERT INTO `mob_spell_lists` VALUES ('Botulus_Rex', 430, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Botulus_Rex', 430, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Botulus_Rex', 430, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Botulus_Rex', 430, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Botulus_Rex', 430, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Botulus_Rex', 430, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Botulus_Rex', 430, 218, 1, 255); -- Meteor

INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 356, 1, 255); -- paralyga
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Ocythoe', 431, 211, 1, 255); -- Burst 2

INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 365, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Kalasutrax', 432, 367, 1, 255); -- death

INSERT INTO `mob_spell_lists` VALUES ('Cath_Palug', 433, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Cath_Palug', 433, 219, 1, 255); -- Comet

INSERT INTO `mob_spell_lists` VALUES ('Aello_Handmaiden', 434, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Aello_Handmaiden', 434, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Aello_Handmaiden', 434, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Aello_Handmaiden', 434, 186, 1, 255); -- Aeroga 3
INSERT INTO `mob_spell_lists` VALUES ('Aello_Handmaiden', 434, 129, 1, 255); -- shellra 5
INSERT INTO `mob_spell_lists` VALUES ('Aello_Handmaiden', 434, 134, 1, 255); -- protectra 5

INSERT INTO `mob_spell_lists` VALUES ('Xuan_Wu', 435, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Xuan_Wu', 435, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Xuan_Wu', 435, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Xuan_Wu', 435, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Xuan_Wu', 435, 213, 1, 255); -- flood_2
INSERT INTO `mob_spell_lists` VALUES ('Xuan_Wu', 435, 229, 1, 255); -- Poisionga 5

INSERT INTO `mob_spell_lists` VALUES ('Zhu_Que', 436, 147, 1, 255); -- fire  4
INSERT INTO `mob_spell_lists` VALUES ('Zhu_Que', 436, 496, 1, 255); -- fireja
INSERT INTO `mob_spell_lists` VALUES ('Zhu_Que', 436, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Zhu_Que', 436, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Zhu_Que', 436, 197, 1, 255); -- flare_2

INSERT INTO `mob_spell_lists` VALUES ('Qing_Long', 437, 207, 1, 255); -- tornado_2
INSERT INTO `mob_spell_lists` VALUES ('Qing_Long', 437, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Qing_Long', 437, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Qing_Long', 437, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Qing_Long', 437, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Qing_Long', 437, 359, 1, 255); -- silencega

INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 112, 1, 255); -- Flash
INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 35, 1, 255); -- Diaga 3
INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 41, 1, 255); -- Banihshga 3
INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 31, 1, 255); -- Banish 4
INSERT INTO `mob_spell_lists` VALUES ('Bai_Hu', 438, 32, 1, 255); -- Banish 5

INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 286, 1, 255); -- addle
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 500, 1, 255); -- thundaja
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 356, 1, 255); -- paralyga
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Uptala', 439, 158, 1, 255); -- Aero 5

INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 211, 1, 255); -- Burst_2
INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 213, 1, 255); -- Flood_2
INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Bismarck', 440, 501, 1, 255); -- Waterja

INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 202, 1, 255); -- waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 501, 1, 255); -- waterja
INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 173, 1, 255); -- water 5
INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 182, 1, 255); -- blizzga 4
INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 497, 1, 255); -- blizzija
INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 367, 1, 255); -- death
INSERT INTO `mob_spell_lists` VALUES ('Brekekekex', 441, 252, 1, 255); -- Stun

INSERT INTO `mob_spell_lists` VALUES ('Yalungur', 442, 404, 1, 255); -- dragonfoe mambo
INSERT INTO `mob_spell_lists` VALUES ('Yalungur', 442, 462, 1, 255); -- magic finale
INSERT INTO `mob_spell_lists` VALUES ('Yalungur', 442, 377, 1, 255); -- horde lullaby 2
INSERT INTO `mob_spell_lists` VALUES ('Yalungur', 442, 419, 1, 255); -- Advancing march
INSERT INTO `mob_spell_lists` VALUES ('Yalungur', 442, 421, 1, 255); -- Bettlefeild elegy
INSERT INTO `mob_spell_lists` VALUES ('Yalungur', 442, 397, 1, 255); -- Valor minuet

INSERT INTO `mob_spell_lists` VALUES ('Predatory_Colibri', 443, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Predatory_Colibri', 443, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Predatory_Colibri', 443, 219, 1, 255); -- Comet

INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 162, 1, 255); -- Stone 4
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 191, 1, 255); -- Stonega 3
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 248, 1, 255); -- Aspir 2
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Morta', 444, 503, 1, 255); -- Impact

INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 242, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 356, 1, 255); -- Paralyga
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 361, 1, 255); -- Blindga
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 365, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 35, 1, 255); -- Diaga 3
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 147, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 152, 1, 255); -- Bliz 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 162, 1, 255); -- Stone 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 167, 1, 255); -- Thunder 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 172, 1, 255); -- Water 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 153, 1, 255); -- Bliz 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 21, 1, 255); -- Holy
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 176, 1, 255); -- Firga 3
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 177, 1, 255); -- Firga 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 178, 1, 255); -- Firga 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 181, 1, 255); -- Blizga 3
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 182, 1, 255); -- Blizga 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 183, 1, 255); -- Blizga 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 186, 1, 255); -- Aeroga 3
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 191, 1, 255); -- Stonega 3
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 196, 1, 255); -- Thundaga 3
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 201, 1, 255); -- Waterga 3
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Provenance_Watcher', 445, 203, 1, 255); -- Waterga 5

INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 153, 1, 255); -- Blizz 5
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 168, 1, 255); -- Thund 5
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Sarbaz', 446, 503, 1, 255); -- Impact

-- list IDs 447 - 581 available for use! please use them!
-- INSERT INTO `mob_spell_lists` VALUES ('spell_list_name', spell_list_id, spell_id, min_level, max_level);

INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Zilant', 582, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Zilant', 582, 503, 1, 255); -- Impact

INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Adamantoise', 583, 4, 1, 255); -- Cure 4
INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Adamantoise', 583, 21, 1, 255); -- Holy
INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Adamantoise', 583, 40, 1, 255); -- Banishga 3
INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Adamantoise', 583, 46, 1, 255); -- Protect 4
INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Adamantoise', 583, 51, 1, 255); -- Shell 4
INSERT INTO `mob_spell_lists` VALUES ('Ultimate_Adamantoise', 583, 106, 1, 255); -- Phalanx

INSERT INTO `mob_spell_lists` VALUES ('Augustus', 584, 106, 1, 255); -- Phalanx
INSERT INTO `mob_spell_lists` VALUES ('Augustus', 584, 356, 1, 255); -- Paralyga
INSERT INTO `mob_spell_lists` VALUES ('Augustus', 584, 358, 1, 255); -- Hastega
INSERT INTO `mob_spell_lists` VALUES ('Augustus', 584, 360, 1, 255); -- Dispelga

INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 9, 1, 255); -- Curaga 3
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 14, 1, 255); -- Poisona
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 15, 1, 255); -- Paralyna
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 16, 1, 255); -- Blindna
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 17, 1, 255); -- Silena
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 18, 1, 255); -- Stona
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 19, 1, 255); -- Viruna
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 20, 1, 255); -- Cursna
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 35, 1, 255); -- Diaga 3
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 53, 1, 255); -- Blink
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 54, 1, 255); -- Stoneskin
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 58, 1, 255); -- Paralyze
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 59, 1, 255); -- Silence
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 128, 1, 255); -- Protectra 4
INSERT INTO `mob_spell_lists` VALUES ('Sekolah', 585, 133, 1, 255); -- Shellra 4

INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 205, 1, 255); -- Flare 2
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 213, 1, 255); -- Burst 2
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 339, 1, 255); -- Utsusemi Ni
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 343, 1, 255); -- Jubaku San
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 346, 1, 255); -- Hojo San
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 349, 1, 255); -- Kurayami San
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 352, 1, 255); -- Dokumori San
INSERT INTO `mob_spell_lists` VALUES ('Uggalepihs_Hand', 586, 366, 1, 255); -- Graviga

INSERT INTO `mob_spell_lists` VALUES ('Air_Horror', 587, 57, 1, 255); -- Haste
INSERT INTO `mob_spell_lists` VALUES ('Air_Horror', 587, 59, 1, 255); -- Silence
INSERT INTO `mob_spell_lists` VALUES ('Air_Horror', 587, 102, 1, 255); -- Enaero
INSERT INTO `mob_spell_lists` VALUES ('Air_Horror', 587, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Air_Horror', 587, 237, 1, 255); -- Choke
INSERT INTO `mob_spell_lists` VALUES ('Air_Horror', 587, 362, 1, 255); -- Bindga

INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 232, 1, 255); -- Bio 3
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 252, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 255, 1, 255); -- Break
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 256, 1, 255); -- Virus
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 257, 1, 255); -- Curse
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 273, 1, 255); -- Sleepga
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 356, 1, 255); -- Paralyga
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 561, 1, 255); -- Frightful Roar
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 576, 1, 255); -- Yawn
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 582, 1, 255); -- Chaotic Eye
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 589, 1, 255); -- Dimensional Death
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 604, 1, 255); -- Bad Breath
INSERT INTO `mob_spell_lists` VALUES ('Cthulhu', 588, 608, 1, 255); -- Frost Breath

INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 214, 1, 255); -- Flood
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 228, 1, 255); -- Poisonga 4
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 232, 1, 255); -- Bio 3
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 245, 1, 255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 247, 1, 255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 252, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 260, 1, 255); -- Dispel
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 266, 1, 255); -- Absorb-STR
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 268, 1, 255); -- Absorb-VIT
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 270, 1, 255); -- Absorb-INT
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 275, 1, 255); -- Absorb-TP
INSERT INTO `mob_spell_lists` VALUES ('Sir_Mordred', 589, 277, 1, 255); -- Dread Spikes

INSERT INTO `mob_spell_lists` VALUES ('Ravenous_Cracklaw', 590, 229, 1, 255); -- Spell Name?
INSERT INTO `mob_spell_lists` VALUES ('Ravenous_Cracklaw', 590, 246, 1, 255); -- Spell Name?
INSERT INTO `mob_spell_lists` VALUES ('Ravenous_Cracklaw', 590, 252, 1, 255); -- Spell Name?
INSERT INTO `mob_spell_lists` VALUES ('Ravenous_Cracklaw', 590, 277, 1, 255); -- Spell Name?
INSERT INTO `mob_spell_lists` VALUES ('Ravenous_Cracklaw', 590, 501, 1, 255); -- Spell Name?
INSERT INTO `mob_spell_lists` VALUES ('Ravenous_Cracklaw', 590, 503, 1, 255); -- Spell Name?

INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 356, 1, 255); -- paralyga
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 357, 1, 255); -- slowga
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 359, 1, 255); -- silencega
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 360, 1, 255); -- dispelga
INSERT INTO `mob_spell_lists` VALUES ('Hurkan', 591, 503, 1, 255); -- impact

-- Hades_v1 (Possessing Melvien)
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 486, 1, 255); -- Gain-STR
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 487, 1, 255); -- Gain-DEX
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 488, 1, 255); -- Gain-VIT
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 489, 1, 255); -- Gain-AGI
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 490, 1, 255); -- Gain-INT
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 491, 1, 255); -- Gain-MND
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 492, 1, 255); -- Gain-CHR
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 178, 1, 255); -- Firaga 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 183, 1, 255); -- Blizzaga 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 203, 1, 255); -- Waterga 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 204, 1, 255); -- Flare
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 205, 1, 255); -- Flare 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 206, 1, 255); -- Freeze
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 207, 1, 255); -- Freeze 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 208, 1, 255); -- Tornado
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 209, 1, 255); -- Tornado 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 212, 1, 255); -- Burst
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 213, 1, 255); -- Burst 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 214, 1, 255); -- Flood
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 215, 1, 255); -- Flood 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 247, 1, 255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 498, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 499, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Hades_v1', 599, 501, 1, 255); -- Waterja
-- Hades_v2 (True form)
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 242, 1, 255); -- Absorb-ACC
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 266, 1, 255); -- Absorb-STR
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 267, 1, 255); -- Absorb-DEX
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 268, 1, 255); -- Absorb-VIT
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 269, 1, 255); -- Absorb-AGI
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 270, 1, 255); -- Absorb-INT
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 271, 1, 255); -- Absorb-MND
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 272, 1, 255); -- Absorb-CHR
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 275, 1, 255); -- Absorb-TP
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 183, 1, 255); -- Blizzaga 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 203, 1, 255); -- Waterga 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 204, 1, 255); -- Flare
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 206, 1, 255); -- Freeze
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 207, 1, 255); -- Freeze 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 208, 1, 255); -- Tornado
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 212, 1, 255); -- Burst
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 214, 1, 255); -- Flood
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 215, 1, 255); -- Flood 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 228, 1, 255); -- Poisonga 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 233, 1, 255); -- Bio 4
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 234, 1, 255); -- Bio 5
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 245, 1, 255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 247, 1, 255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 248, 1, 255); -- Aspir 2
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 255, 1, 255); -- Break
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 256, 1, 255); -- Virus
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 257, 1, 255); -- Curse
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 277, 1, 255); -- Dread Spikes
-- INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 311, 1, 255); -- Endark (moving this to scripted perma effect later)
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Hades_v2', 600, 503, 1, 255); -- Impact

-- -----------------------------------
-- Customized Legion Hall Mobs
-- -----------------------------------

INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 498, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 499, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 277, 1, 255); -- Dread Spikes
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 275, 1, 255); -- Absorb TP
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 229, 1, 255); -- Poisionga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Zilant', 601, 234, 1, 255); -- Bio 5

INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 493, 1, 255); -- Temper
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 314, 1, 255); -- Enaero 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 186, 1, 255); -- Aeroga 3
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 37, 1, 255); -- Diaga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 47, 1, 255); -- Protect 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 53, 1, 255); -- Blink
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Harpeia', 602, 54, 1, 255); -- Stoneskin

INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 167, 1, 255); -- Thunder 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 196, 1, 255); -- Thundaga 3
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 277, 1, 255); -- Dread Spikes
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 275, 1, 255); -- Absorb TP
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Elasmoth', 603, 234, 1, 255); -- Bio 5

INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 162, 1, 255); -- Stone 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 191, 1, 255); -- Stonega 3
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 315, 1, 255); -- Enstone 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 365, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Ferromantoise', 604, 366, 1, 255); -- Graviga

INSERT INTO `mob_spell_lists` VALUES ('Lofty_Wyrm', 605, 47, 1, 255); -- Protect 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Wyrm', 605, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Wyrm', 605, 42, 1, 255); -- Banihshga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Wyrm', 605, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Wyrm', 605, 112, 1, 255); -- Flash

INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 47, 1, 255); -- Protect 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 42, 1, 255); -- Banishga 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 112, 1, 255); -- Flash
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 162, 1, 255); -- Stone 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 191, 1, 255); -- Stoneage 3
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 192, 1, 255); -- Stoneaga 4
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 255, 1, 255); -- Break
INSERT INTO `mob_spell_lists` VALUES ('Lofty_Adamantoise', 606, 210, 1, 255); -- Quake

INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 148, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 176, 1, 255); -- Firega 3
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 277, 1, 255); -- Dread Spikes
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 275, 1, 255); -- Absorb TP
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 229, 1, 255); -- Poisionga 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Cerberus', 607, 234, 1, 255); -- Bio 5

INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 47, 1, 255); -- Protect 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 42, 1, 255); -- Banishga 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 112, 1, 255); -- Flash
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 167, 1, 255); -- Thunder 4
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 196, 1, 255); -- Thundaga 3
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khimaira', 608, 212, 1, 255); -- Burst

INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 148, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 149, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 178, 1, 255); -- Firega 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 277, 1, 255); -- Dread Spikes
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 275, 1, 255); -- Absorb TP
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 229, 1, 255); -- Poisionga 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Orthrus', 609, 234, 1, 255); -- Bio 5

INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 47, 1, 255); -- Protect 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 42, 1, 255); -- Banishga 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 112, 1, 255); -- Flash
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 167, 1, 255); -- Thunder 4
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 251, 1, 255); -- Shock Spikes
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 198, 1, 255); -- Thundaga 5
INSERT INTO `mob_spell_lists` VALUES ('Mired_Khrysokhimaira', 610, 213, 1, 255); -- Burst 2

INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 277, 1, 255); -- Dread Spikes
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 503, 1, 255); -- Impact
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 148, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 149, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 176, 1, 255); -- Firega 3
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Corse', 611, 359, 1, 255); -- Silencega

INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 228, 1, 255); -- Poisonga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 365, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 205, 1, 255); -- Flare 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 207, 1, 255); -- freeze 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 209, 1, 255); -- Tornado 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 213, 1, 255); -- Burst 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dvergr', 612, 215, 1, 255); -- Flood 2

INSERT INTO `mob_spell_lists` VALUES ('Soaring_Vampyr', 613, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Vampyr', 613, 206, 1, 255); -- Freeze
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Vampyr', 613, 207, 1, 255); -- Feeze 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Vampyr', 613, 356, 1, 255); -- Paralyga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Vampyr', 613, 182, 1, 255); -- Blizzaga 4

INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 173, 1, 255); -- Water 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 503, 1, 255); -- Impact
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 246, 1, 255); -- Drain 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 174, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Kumakatok', 614, 286, 1, 255); -- Addle

INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 503, 1, 255); -- Impact
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 499, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 498, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Dweorg', 615, 359, 1, 255); -- Silencega

INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 174, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 197, 1, 255); -- thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 252, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 277, 1, 255); -- Dread Spikes
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Strigoi', 616, 500, 1, 255); -- Thundaja

INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 252, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Soaring_Naraka', 617, 362, 1, 255); -- Bindga

INSERT INTO `mob_spell_lists` VALUES ('Veiled_Amphiptere', 618, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Amphiptere', 618, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Amphiptere', 618, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Amphiptere', 618, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Amphiptere', 618, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Amphiptere', 618, 498, 1, 255); -- Aeroja

INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 162, 1, 255); -- Stone 4
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 191, 1, 255); -- Stonega 3
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 229, 1, 255); -- Poisonga 5
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 315, 1, 255); -- Enstone 2
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 365, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sandworm', 619, 366, 1, 255); -- Graviga

INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sanguiptere', 620, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sanguiptere', 620, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sanguiptere', 620, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sanguiptere', 620, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sanguiptere', 620, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Sanguiptere', 620, 498, 1, 255); -- Aeroja

INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 193, 1, 255); -- Stonega 5
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 211, 1, 255); -- Quake 2
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 315, 1, 255); -- Enstone 2
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 365, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Veiled_Gigaworm', 621, 366, 1, 255); -- Graviga

INSERT INTO `mob_spell_lists` VALUES ('Paramout_Gallu', 622, 218, 1, 255); -- Meteor
INSERT INTO `mob_spell_lists` VALUES ('Paramout_Gallu', 622, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Paramout_Gallu', 622, 252, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Paramout_Gallu', 622, 277, 1, 255); -- Dread Spik
INSERT INTO `mob_spell_lists` VALUES ('Paramout_Gallu', 622, 366, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Paramout_Gallu', 622, 367, 1, 255); -- Death
INSERT INTO `mob_spell_lists` VALUES ('Paramout_Gallu', 622, 503, 1, 255); -- Impact

INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 503, 1, 255); -- Impact
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 499, 1, 255); -- Stoneja
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 500, 1, 255); -- Thundaja
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 501, 1, 255); -- Waterja
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 498, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 497, 1, 255); -- Blizzaja
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 496, 1, 255); -- Fireja
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Botulus', 623, 359, 1, 255); -- Silencega

INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 493, 1, 255); -- Temper
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 356, 1, 255); -- Parlyga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 360, 1, 255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 314, 1, 255); -- Enaero 2
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 286, 1, 255); -- Addle
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Harpeia', 624, 37, 1, 255); -- Diaga 5

INSERT INTO `mob_spell_lists` VALUES ('Paramount_Mantis', 625, 340, 1, 255); -- Utsu San
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Mantis', 625, 505, 1, 255); -- gekka
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Mantis', 625, 506, 1, 255); -- yain
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Mantis', 625, 507, 1, 255); -- myhoshu
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Mantis', 625, 508, 1, 255); -- yurin
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Mantis', 625, 509, 1, 255); -- kakka

INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 163, 1, 255); -- Stone 5
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 153, 1, 255); -- Blizzard 5
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 177, 1, 255); -- Firega 4
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 274, 1, 255); -- Sleepga 2
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 359, 1, 255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Paramount_Naraka', 626, 503, 1, 255); -- Impact

INSERT INTO `mob_spell_lists` VALUES ('Mired_Mantis', 627, 226, 1, 255); -- Poisonga II
INSERT INTO `mob_spell_lists` VALUES ('Mired_Mantis', 627, 273, 1, 255); -- Sleepga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Mantis', 627, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Mired_Mantis', 627, 498, 1, 255); -- Aeroja 

-- List ID's 628 - 664 available for use (likely use for WoE boss mobs).

-- -----------------------------------
-- "The Jumping Crab" custom HNM
-- -----------------------------------

INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 5, 1, 255); -- Cure 5
INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 64, 1, 255); -- Barthunder
INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 106, 1, 255); -- Phalanx
INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 112, 1, 255); -- Flash
INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 215, 1, 255); -- Flood 2
INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 260, 1, 255); -- Dispel
INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 275, 1, 255); -- Absorb-TP
INSERT INTO `mob_spell_lists` VALUES ('The_Jumping_Crab', 665, 493, 1, 255); -- Temper

-- -----------------------------------
-- The SlenderMan custom NM
-- -----------------------------------

INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 242, 1, 255); -- Absorb-ACC
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 257, 1, 255); -- Curse
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 266, 1, 255); -- Absorb-STR
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 267, 1, 255); -- Absorb-DEX
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 268, 1, 255); -- Absorb-VIT
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 269, 1, 255); -- Absorb-AGI
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 270, 1, 255); -- Absorb-INT
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 271, 1, 255); -- Absorb-MND
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 272, 1, 255); -- Absorb-CHR
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 275, 1, 255); -- Absorb-TP
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 322, 1, 255); -- Katon San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 325, 1, 255); -- Hyoton San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 328, 1, 255); -- Huton San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 331, 1, 255); -- Doton San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 334, 1, 255); -- Raiton San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 337, 1, 255); -- Suiton San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 343, 1, 255); -- Jubaku San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 346, 1, 255); -- Hojo San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 349, 1, 255); -- Kurayami San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 352, 1, 255); -- Dokumori San
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 356, 1, 255); -- Paralyga
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 365, 1, 255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('SlenderMan', 666, 366, 1, 255); -- Graviga

-- List ID's 667 - 759 currently unused, reserved for future custom event mobs.

-- -----------------------------------
-- Custom "Hall of Mars" Legion event
-- -----------------------------------

INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 106, 1, 255); -- Phalanx
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 112, 1, 255); -- Flash
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 182, 1, 255); -- Blizzaga 4
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 192, 1, 255); -- Stonega 4
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 197, 1, 255); -- Thundaga 4
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 202, 1, 255); -- Waterga 4
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 275, 1, 255); -- Absorb-TP
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 245, 1, 255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 247, 1, 255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('Mars', 760, 502, 1, 255); -- Kaustra

-- List ID's 761 - 774 currently unused, reserved for future custom event mobs.

-- -----------------------------------
-- Provenance Custom BCNM
-- -----------------------------------

-- Minerva's Baelfyr/Light/Fire/Fusion Elemental pet
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 5, 1, 255); -- Cure 5
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 14, 1, 255); -- Poisona
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 15, 1, 255); -- Paralyna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 16, 1, 255); -- Blindna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 17, 1, 255); -- Silena
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 18, 1, 255); -- Stona
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 19, 1, 255); -- Viruna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 20, 1, 255); -- Cursna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 21, 1, 255); -- Holy
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 26, 1, 255); -- Dia 4
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 31, 1, 255); -- Banish 4
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 98, 1, 255); -- Repose
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 147, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 176, 1, 255); -- Firaga 3
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental', 775, 204, 1, 255); -- Flare

-- Minerva's Ungeweder Wind/Lightning/Fragmentation Elemental pet
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 59, 1, 255); -- Silence
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 167, 1, 255); -- Thunder 4
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 186, 1, 255); -- Aeroga 3
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 196, 1, 255); -- Thunderga 3
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 208, 1, 255); -- Tornado
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 252, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental', 776, 212, 1, 255); -- Burst

INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 5, 1, 255); -- Cure 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 14, 1, 255); -- Poisona
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 15, 1, 255); -- Paralyna
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 16, 1, 255); -- Blindna
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 17, 1, 255); -- Silena
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 18, 1, 255); -- Stona
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 19, 1, 255); -- Viruna
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 20, 1, 255); -- Cursna
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 21, 1, 255); -- Holy
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 27, 1, 255); -- Dia 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 31, 1, 255); -- Diaga 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 36, 1, 255); -- Banish 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 41, 1, 255); -- Banishga 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 47, 1, 255); -- Prot 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 52, 1, 255); -- Shell 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 53, 1, 255); -- Blink
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 54, 1, 255); -- Stoneskin
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 55, 1, 255); -- Aquaviel
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 58, 1, 255); -- Paralyze
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 59, 1, 255); -- Silence
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 98, 1, 255); -- Repose
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 106, 1, 255); -- Phalanx
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 112, 1, 255); -- Flash
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 143, 1, 255); -- Erase
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 147, 1, 255); -- Fire 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 157, 1, 255); -- Aero 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 167, 1, 255); -- Thunder 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 197, 1, 255); -- Thunderga 4
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 204, 1, 255); -- Flare
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 206, 1, 255); -- Freeze
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 208, 1, 255); -- Tornado
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 210, 1, 255); -- Quake
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 212, 1, 255); -- Burst
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 214, 1, 255); -- Flood
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 222, 1, 255); -- Poison 3
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 235, 1, 255); -- Burn
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 237, 1, 255); -- Choke
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 239, 1, 255); -- Shock
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 257, 1, 255); -- Curse
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 280, 1, 255); -- Anemohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 281, 1, 255); -- Pyrohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 283, 1, 255); -- Ionohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 285, 1, 255); -- Luminohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 357, 1, 255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 361, 1, 255); -- Blindga
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 362, 1, 255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 366, 1, 255); -- Graviga
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 483, 1, 255); -- Boost-INT
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 484, 1, 255); -- Boost-MND
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 498, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Minerva', 777, 500, 1, 255); -- Thundaja
-- Yeah, Minerva has a long list of spells she can use..And 2 lists..
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 11, 1, 255); -- Curaga 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 22, 1, 255); -- Holy 2
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 37, 1, 255); -- Diaga 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 42, 1, 255); -- Banishga 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 178, 1, 255); -- Firaga 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 188, 1, 255); -- Aeroga 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 198, 1, 255); -- Thunderga 5
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 205, 1, 255); -- Flare 2
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 209, 1, 255); -- Tornado 2
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 213, 1, 255); -- Burst 2
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 219, 1, 255); -- Comet
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 257, 1, 255); -- Curse
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 280, 1, 255); -- Anemohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 281, 1, 255); -- Pyrohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 283, 1, 255); -- Ionohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 285, 1, 255); -- Luminohelix
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 478, 1, 255); -- Embrava
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 483, 1, 255); -- Boost-INT
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 484, 1, 255); -- Boost-MND
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 496, 1, 255); -- Firaja
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 498, 1, 255); -- Aeroja
INSERT INTO `mob_spell_lists` VALUES ('Minerva_Tabula_Rasa', 778, 500, 1, 255); -- Thundaja

-- Minerva's Boosted Baelfyr/Light/Fire/Fusion Elemental pet
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 5, 1, 255); -- Cure 5
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 14, 1, 255); -- Poisona
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 15, 1, 255); -- Paralyna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 16, 1, 255); -- Blindna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 17, 1, 255); -- Silena
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 18, 1, 255); -- Stona
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 19, 1, 255); -- Viruna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 20, 1, 255); -- Cursna
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 21, 1, 255); -- Holy
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 27, 1, 255); -- Dia 5
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 32, 1, 255); -- Banish 5
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 37, 1, 255); -- Diaga 4
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 41, 1, 255); -- Banishga 4
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 98, 1, 255); -- Repose
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 115, 1, 255); -- Firestorm
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 119, 1, 255); -- Aurorastorm
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 148, 1, 255); -- Fire 5
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 177, 1, 255); -- Firaga 4
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 205, 1, 255); -- Flare 2
INSERT INTO `mob_spell_lists` VALUES ('Stellar_Elemental_Boosted', 779, 493, 1, 255); -- Temper

-- Minerva's Boosted Ungeweder Wind/Lightning/Fragmentation Elemental pet
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 59, 1, 255); -- Silence
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 114, 1, 255); -- Windstorm
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 117, 1, 255); -- Thunderstorm
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 158, 1, 255); -- Aero 5
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 168, 1, 255); -- Thunder 5
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 187, 1, 255); -- Aeroga 4
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 197, 1, 255); -- Thunderga 4
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 209, 1, 255); -- Tornado 2
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 213, 1, 255); -- Burst 2
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 252, 1, 255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('Olympian_Elemental_Boosted', 780, 493, 1, 255); -- Temper
