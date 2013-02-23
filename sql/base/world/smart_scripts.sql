/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `smart_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_scripts` (
  `entryorguid` int(11) NOT NULL,
  `source_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link` smallint(5) unsigned NOT NULL DEFAULT '0',
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_phase_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_chance` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `event_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param4` int(10) unsigned NOT NULL DEFAULT '0',
  `action_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param4` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param5` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param6` int(10) unsigned NOT NULL DEFAULT '0',
  `target_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `target_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `target_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `target_x` float NOT NULL DEFAULT '0',
  `target_y` float NOT NULL DEFAULT '0',
  `target_z` float NOT NULL DEFAULT '0',
  `target_o` float NOT NULL DEFAULT '0',
  `comment` text NOT NULL COMMENT 'Event Comment',
  PRIMARY KEY (`entryorguid`,`source_type`,`id`,`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

