/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */; /*!40103 SET TIME_ZONE='+00:00' */; /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */; /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */; /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */; /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */; DROP TABLE IF EXISTS `rbac_roles`; /*!40101 SET @saved_cs_client = @@character_set_client */; /*!40101 SET character_set_client = utf8 */; CREATE TABLE `rbac_roles` ( `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role id', `name` varchar(50) NOT NULL COMMENT 'Role name', PRIMARY KEY (`id`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Roles List'; /*!40101 SET character_set_client = @saved_cs_client */; LOCK TABLES `rbac_roles` WRITE; /*!40000 ALTER TABLE `rbac_roles` DISABLE KEYS */; INSERT INTO `rbac_roles` VALUES (1,'Player Commands'),
(2,'Moderator Commands'),
(3,'GameMaster Commands'),
(4,'Administrator Commands'),
(5,'Quick Login/Logout'),
(6,'Use Battleground/Arenas'),
(7,'Use Dungeon Finder'); /*!40000 ALTER TABLE `rbac_roles` ENABLE KEYS */; UNLOCK TABLES; /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */; /*!40101 SET SQL_MODE=@OLD_SQL_MODE */; /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */; /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */; /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
