/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */; /*!40103 SET TIME_ZONE='+00:00' */; /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */; /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */; /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */; /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */; DROP TABLE IF EXISTS `rbac_role_permissions`; /*!40101 SET @saved_cs_client = @@character_set_client */; /*!40101 SET character_set_client = utf8 */; CREATE TABLE `rbac_role_permissions` ( `roleId` int(10) unsigned NOT NULL COMMENT 'Role id', `permissionId` int(10) unsigned NOT NULL COMMENT 'Permission id', PRIMARY KEY (`roleId`,`permissionId`), KEY `fk__role_permissions__rbac_permissions` (`permissionId`), CONSTRAINT `fk__role_permissions__rbac_roles` FOREIGN KEY (`roleId`) REFERENCES `rbac_roles` (`id`) ON DELETE CASCADE, CONSTRAINT `fk__role_permissions__rbac_permissions` FOREIGN KEY (`permissionId`) REFERENCES `rbac_permissions` (`id`) ON DELETE CASCADE ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Role Permission relation'; /*!40101 SET character_set_client = @saved_cs_client */; LOCK TABLES `rbac_role_permissions` WRITE; /*!40000 ALTER TABLE `rbac_role_permissions` DISABLE KEYS */; INSERT INTO `rbac_role_permissions` VALUES (1,7),
(2,8),
(3,9),
(4,10),
(5,1),
(5,2),
(6,3),
(6,4),
(6,5),
(7,6); /*!40000 ALTER TABLE `rbac_role_permissions` ENABLE KEYS */; UNLOCK TABLES; /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */; /*!40101 SET SQL_MODE=@OLD_SQL_MODE */; /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */; /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */; /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;