
SET @GUID  := '42160';
SET @ENTRY := '14479';
SET @POOL  := '25492';

UPDATE `creature_template` SET `SpeedWalk`='1', `MinMeleeDmg`='96.8', `MaxMeleeDmg`='128.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='238', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000' WHERE `Entry`='14479';

DELETE FROM `creature_movement` WHERE `id`= (SELECT `guid` FROM `creature` WHERE `id`=@ENTRY);
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
DELETE FROM `creature` WHERE `id`=@ENTRY;
DELETE FROM `creature` WHERE `guid` IN (@GUID + '0', @GUID + '1', @GUID + '2');

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + '0', @ENTRY, '1', '0', '0', '-7952.431', '1900.059', '1.454241', '0.6839152', '21000', '0', '0', '3297', '2434', '0', '2'),
(@GUID + '1', @ENTRY, '1', '0', '0', '-7023.303', '1197.827', '6.639199', '0.2720481', '21000', '0', '0', '3297', '2434', '0', '2'),
(@GUID + '2', @ENTRY, '1', '0', '0', '-6732.618', '1586.897', '10.03530', '0.6052270', '21000', '0', '0', '3297', '2434', '0', '2');

SET @POINT := '0';

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID + '0', @POINT := @POINT + '1', '-7933.409', '1915.553', '4.745111', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7899.944', '1913.035', '3.638075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7880.021', '1903.608', '4.840346', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7874.553', '1886.315', '5.245306', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7896.264', '1870.850', '5.104681', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7912.292', '1852.625', '4.846241', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7913.682', '1834.233', '3.933521', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7923.220', '1822.200', '3.554747', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7939.812', '1820.074', '3.946807', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7950.682', '1834.833', '3.785096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7941.653', '1859.440', '4.833069', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7948.324', '1881.011', '3.527304', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '0', @POINT := @POINT + '1', '-7951.504', '1902.775', '2.120600', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @POINT := '0';

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID + '1', @POINT := @POINT + '1', '-7008.006', '1202.084', '7.700902', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6995.428', '1208.250', '8.820854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6979.564', '1207.478', '9.471367', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6957.870', '1199.927', '9.185988', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6946.232', '1190.906', '9.908278', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6949.811', '1169.085', '10.86482', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6962.905', '1163.869', '11.56198', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6964.529', '1154.799', '10.73739', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6976.600', '1144.452', '9.615312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6984.484', '1136.351', '9.539872', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6981.354', '1123.549', '7.882970', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6985.575', '1116.994', '8.541417', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6994.624', '1117.175', '9.183019', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6998.787', '1125.470', '9.350011', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-6998.452', '1135.539', '8.714189', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7012.332', '1141.683', '6.041239', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7022.462', '1149.656', '6.685770', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7030.819', '1149.059', '6.414530', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7036.089', '1145.387', '6.349092', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7040.804', '1147.568', '6.349092', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7041.828', '1153.085', '6.349092', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7035.541', '1164.167', '6.259127', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7032.510', '1173.299', '6.809674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7025.639', '1180.353', '6.848492', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + '1', @POINT := @POINT + '1', '-7023.183', '1198.596', '6.662579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @POINT := '0';

-- INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
-- (@GUID + '2', @POINT := @POINT + '1', '-7008.006', '1202.084', '7.700902', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),

DELETE FROM `pool_template` WHERE `entry`=@POOL;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@POOL, '1', 'Silithus - Twilight Lord Everun');

DELETE FROM `pool_creature_template` WHERE `id`=@ENTRY AND `pool_entry`=@POOL;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('14479', @POOL, '0', 'Twilight Lord Everun (14479)');
