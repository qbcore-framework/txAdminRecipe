CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(2) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `mlo` text DEFAULT NULL,
  `ipl` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `player_houses` (
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `insideId` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  `decorateStash` text DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `creditPrice` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`house`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

ALTER TABLE `players` ADD `inside` VARCHAR(100);

CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `management_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `management_funds` (
`id` INT(11) NOT NULL AUTO_INCREMENT,
`job_name` VARCHAR(50) NOT NULL,
`amount`  INT(100) NOT NULL,
`type` ENUM('boss','gang') NOT NULL DEFAULT 'boss',
PRIMARY KEY (`id`),
UNIQUE KEY `job_name` (`job_name`),
KEY `type` (`type`)
);

INSERT INTO `management_funds` (`job_name`, `amount`, `type`) VALUES
('police', 0, 'boss'),
('ambulance', 0, 'boss'),
('realestate', 0, 'boss'),
('taxi', 0, 'boss'),
('cardealer', 0, 'boss'),
('mechanic', 0, 'boss'),
('lostmc', 0, 'gang'),
('ballas', 0, 'gang'),
('vagos', 0, 'gang'),
('cartel', 0, 'gang'),
('families', 0, 'gang'),
('triads', 0, 'gang');

ALTER TABLE `player_vehicles`
ADD COLUMN `nosColour` TEXT NULL DEFAULT NULL;
ALTER TABLE `player_vehicles`
ADD COLUMN `traveldistance` INT(50) NULL DEFAULT 0;
ALTER TABLE `player_vehicles`
ADD COLUMN `noslevel` INT(10) NULL DEFAULT 0;
ALTER TABLE `player_vehicles`
ADD COLUMN `hasnitro` TINYINT(0) NULL DEFAULT 0;

CREATE TABLE IF NOT EXISTS `society` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `money` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `society` (`id`, `name`, `money`) VALUES
	(1, 'police', '0'),
	(2, 'lostmc', '0');

CREATE TABLE IF NOT EXISTS `transaction_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` text NOT NULL,
  `trans_id` int(11) NOT NULL,
  `account` text NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_type` text NOT NULL,
  `receiver` text NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `paycheck` int(11) DEFAULT 0,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `configs` (
  `name` varchar(20) NOT NULL,
  `config` text DEFAULT NULL,
  PRIMARY KEY (`name`)
);

INSERT INTO `configs` (`name`, `config`) VALUES (
	'keylabs', '{"worth1":0,"worth3":0,"washer3":0,"cokelab":0,"weedlab":0,"worth4":0,"methlab":0,"methlab2":0,"washer1":0,"worth2":0,"washer4":0,"washer2":0}'
);

CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `okokreports`(
    `admin_identifier` varchar(255) NOT NULL,
    `responded_reports` varchar(255) NOT NULL DEFAULT 1,
    UNIQUE KEY abc_ndx (admin_identifier)
);

ALTER TABLE player_vehicles ADD COLUMN `vinnumber` VARCHAR(50) NULL;

ALTER TABLE player_vehicles ADD COLUMN `vinscratch` INT(2) DEFAULT 0;

CREATE TABLE IF NOT EXISTS `mdt_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` VARCHAR(20) DEFAULT NULL,
  `information` MEDIUMTEXT DEFAULT NULL,
  `tags` TEXT NOT NULL,
  `gallery` TEXT NOT NULL,
  `jobtype` VARCHAR(25) DEFAULT 'police',
  `pfp` TEXT DEFAULT NULL,
  `fingerprint` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_bulletin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` TEXT NOT NULL,
  `desc` TEXT NOT NULL,
  `author` varchar(50) NOT NULL,
  `time` varchar(20)  NOT NULL,
  `jobtype` VARCHAR(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `civsinvolved` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_bolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `individual` varchar(50) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(50) DEFAULT NULL,
  `linkedincident` int(11) NOT NULL DEFAULT 0,
  `warrant` varchar(50) DEFAULT NULL,
  `guilty` varchar(50) DEFAULT NULL,
  `processed` varchar(50) DEFAULT NULL,
  `associated` varchar(50) DEFAULT '0',
  `charges` text DEFAULT NULL,
  `fine` int(11) DEFAULT 0,
  `sentence` int(11) DEFAULT 0,
  `recfine` int(11) DEFAULT 0,
  `recsentence` int(11) DEFAULT 0,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tags` text NOT NULL,
  `officersinvolved` text NOT NULL,
  `civsinvolved` text NOT NULL,
  `evidence` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_vehicleinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `stolen` tinyint(1) NOT NULL DEFAULT 0,
  `code5` tinyint(1) NOT NULL DEFAULT 0,
  `image` text NOT NULL DEFAULT '',
  `points` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_weaponinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `weapClass` varchar(50) DEFAULT NULL,
  `weapModel` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_impound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleid` int(11) NOT NULL,
  `linkedreport` int(11) NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `scenes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `color` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `viewdistance` int DEFAULT NULL,
  `expiration` int DEFAULT NULL,
  `fontsize` decimal(10,1) DEFAULT NULL,
  `fontstyle` int DEFAULT NULL,
  `coords` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `date_creation` datetime DEFAULT NULL,
  `date_deletion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

ALTER TABLE `player_vehicles` ADD COLUMN `damage` VARCHAR(1500) NULL DEFAULT NULL AFTER `garage`;

ALTER TABLE `player_vehicles` ADD COLUMN `parkingspot` VARCHAR(200) NULL DEFAULT NULL AFTER `garage`;

DROP TABLE IF EXISTS `donator`;
CREATE TABLE `donator` (
    `license` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
    `coins` INT(11) NOT NULL DEFAULT 0,
    UNIQUE INDEX `license` (`license`) USING BTREE
);

DROP TABLE IF EXISTS `donator_pending`;
CREATE TABLE `donator_pending` (
    `transactionId` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
    `package` LONGTEXT NOT NULL COLLATE 'utf8_general_ci',
    `redeemed` INT(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`transactionId`) USING BTREE
);

CREATE TABLE IF NOT EXISTS `bank_accounts_new` (
  `id` varchar(50) NOT NULL,
  `amount` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT '[]',
  `auth` longtext DEFAULT '[]',
  `isFrozen` int(11) DEFAULT 0,
  `creator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `bank_accounts_new` (`id`, `amount`, `transactions`, `auth`, `isFrozen`, `creator`) VALUES
	('ambulance', 0, '[]', '[]', 0, NULL),
	('cardealer', 0, '[]', '[]', 0, NULL),
	('mechanic', 0, '[]', '[]', 0, NULL),
	('police', 0, '[]', '[]', 0, NULL),
	('realestate', 0, '[]', '[]', 0, NULL),
	('lostmc', 0, '[]', '[]', 0, NULL),
	('ballas', 0, '[]', '[]', 0, NULL),
	('vagos', 0, '[]', '[]', 0, NULL),
	('cartel', 0, '[]', '[]', 0, NULL),
	('families', 0, '[]', '[]', 0, NULL),
	('triads', 0, '[]', '[]', 0, NULL);

CREATE TABLE IF NOT EXISTS `player_transactions` (
  `id` varchar(50) NOT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT '[]',
  PRIMARY KEY (`id`)
);

CREATE TABLE `ra_boosting_contracts`
(
    `id`                    INT(10) UNSIGNED                                                                 NOT NULL AUTO_INCREMENT,
    `owner_identifier`      VARCHAR(100)                                                                     NOT NULL DEFAULT '',
    `status`                ENUM ('AVAILABLE','BOUGHT','IN_PROGRESS','IN_PROGRESS_VIN','COMPLETED','FAILED') NOT NULL,
    `price`                 INT(10) UNSIGNED                                                                 NOT NULL,
    `experience_gain`       INT(10) UNSIGNED                                                                 NOT NULL,
    `payout_cash`           INT(10) UNSIGNED                                                                 NOT NULL DEFAULT 0,
    `payout_crypto`         INT(10) UNSIGNED                                                                 NOT NULL DEFAULT 0,
    `employer`              VARCHAR(100)                                                                     NOT NULL DEFAULT 'Anonymous',
    `vehicle_model`         VARCHAR(100)                                                                     NOT NULL,
    `vehicle_model_name`    VARCHAR(100)                                                                     NOT NULL,
    `vehicle_license_plate` VARCHAR(10)                                                                      NOT NULL,
    `vehicle_class`         VARCHAR(10)                                                                      NOT NULL DEFAULT '',
    `is_vehicle_tuned`      TINYINT(4)                                                                       NOT NULL DEFAULT 0,
    `expiration_date`       DATETIME                                                                         NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    INDEX `FK_boosting_contracts_characters` (`owner_identifier`)
);

CREATE TABLE `ra_boosting_user_settings`
(
    `player_identifier` VARCHAR(100) NOT NULL,
    `alias`             VARCHAR(40)  NULL     DEFAULT 'Unnamed',
    `profile_picture`   VARCHAR(100) NOT NULL DEFAULT 'https://i.imgur.com/Lu9dGJH.png',
    `experience`        INT(11)      NOT NULL DEFAULT 0,
    `crypto`            INT(11)      NOT NULL DEFAULT 0,
    `is_initialized`    INT(11)      NOT NULL DEFAULT 0,
    `created_at`        DATETIME     NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`player_identifier`)
);

CREATE TABLE IF NOT EXISTS `phone_phones` (
    `id` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `name` VARCHAR(50),

    `pin` VARCHAR(4) DEFAULT NULL,
    `face_id` VARCHAR(100) DEFAULT NULL,
    
    `settings` LONGTEXT,
    `is_setup` BOOLEAN DEFAULT FALSE,
    `assigned` BOOLEAN DEFAULT FALSE,
    `battery` INT NOT NULL DEFAULT 100,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_last_phone` (
    `identifier` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`identifier`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_photos` (
    `phone_number` VARCHAR(15) NOT NULL,

    `link` VARCHAR(200) NOT NULL,
    `is_video` BOOLEAN DEFAULT FALSE,
    `size` FLOAT NOT NULL DEFAULT 0,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`phone_number`, `link`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_notes` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `title` VARCHAR(50) NOT NULL,
    `content` LONGTEXT,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_notifications` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `app` VARCHAR(50) NOT NULL,

    `title` VARCHAR(50) DEFAULT NULL,
    `content` VARCHAR(500) DEFAULT NULL,
    `thumbnail` VARCHAR(250) DEFAULT NULL,
    `avatar` VARCHAR(250) DEFAULT NULL,
    `show_avatar` BOOLEAN DEFAULT FALSE,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_hashtags` (
    `hashtag` VARCHAR(50) NOT NULL,
    `amount` INT NOT NULL DEFAULT 0,
    `last_used` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (`hashtag`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_accounts` (
    `display_name` VARCHAR(30) NOT NULL,

    `username` VARCHAR(20) NOT NULL,
    `password` VARCHAR(100) NOT NULL,

    `phone_number` VARCHAR(15) NOT NULL,
    `bio` VARCHAR(100) DEFAULT NULL,
    `profile_image` VARCHAR(200) DEFAULT NULL,
    `profile_header` VARCHAR(200) DEFAULT NULL,

    `pinned_tweet` VARCHAR(50) DEFAULT NULL,

    `verified` BOOLEAN DEFAULT FALSE,
    `follower_count` INT(11) NOT NULL DEFAULT 0,
    `following_count` INT(11) NOT NULL DEFAULT 0,

    `date_joined` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`username`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_loggedin` (
    `phone_number` VARCHAR(15) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_follows` (
    `followed` VARCHAR(20) NOT NULL,
    `follower` VARCHAR(20) NOT NULL,
    `notifications` BOOLEAN NOT NULL DEFAULT FALSE,

    PRIMARY KEY (`followed`, `follower`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_likes` (
    `tweet_id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`tweet_id`, `username`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_retweets` (
    `tweet_id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`tweet_id`, `username`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_tweets` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    `content` VARCHAR(280),
    `attachments` TEXT,

    `reply_to` VARCHAR(50) DEFAULT NULL,
    
    `like_count` INT(11) DEFAULT 0,
    `reply_count` INT(11) DEFAULT 0,
    `retweet_count` INT(11) DEFAULT 0,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_promoted` (
    `tweet_id` VARCHAR(50) NOT NULL,
    `promotions` INT(11) NOT NULL DEFAULT 0,
    `views` INT(11) NOT NULL DEFAULT 0,

    PRIMARY KEY (`tweet_id`),
    FOREIGN KEY (`tweet_id`) REFERENCES `phone_twitter_tweets`(`id`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_messages` (
    `id` VARCHAR(50) NOT NULL,

    `sender` VARCHAR(20) NOT NULL,
    `recipient` VARCHAR(20) NOT NULL,

    `content` VARCHAR(1000),
    `attachments` TEXT,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
 
CREATE TABLE IF NOT EXISTS `phone_twitter_notifications` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL,
    `from` VARCHAR(20) NOT NULL,

    `type` VARCHAR(20) NOT NULL,
    `tweet_id` VARCHAR(50) DEFAULT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_phone_contacts` (
    `contact_phone_number` VARCHAR(15) NOT NULL,
    `firstname` VARCHAR(50) NOT NULL DEFAULT "",
    `lastname` VARCHAR(50) NOT NULL DEFAULT "",
    `profile_image` VARCHAR(200) DEFAULT NULL,
    `favourite` BOOLEAN DEFAULT FALSE,

    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`contact_phone_number`, `phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_phone_calls` (
    `id` VARCHAR(50) NOT NULL,
    
    `caller` VARCHAR(15) NOT NULL,
    `callee` VARCHAR(15) NOT NULL,

    `duration` INT(11) NOT NULL DEFAULT 0,
    `answered` BOOLEAN DEFAULT FALSE,
    
    `hide_caller_id` BOOLEAN DEFAULT FALSE,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_phone_blocked_numbers` (
    `phone_number` VARCHAR(15) NOT NULL,
    `blocked_number` VARCHAR(15) NOT NULL,
    
    PRIMARY KEY (`phone_number`, `blocked_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_accounts` (
    `display_name` VARCHAR(30) NOT NUll,
    
    `username` VARCHAR(20) NOT NULL,
    `password` VARCHAR(100) NOT NULL,

    `profile_image` VARCHAR(200) DEFAULT NULL,
    `bio` VARCHAR(100) DEFAULT NULL,

    `phone_number` VARCHAR(15) NOT NULL,

    `verified` BOOLEAN DEFAULT FALSE,
    `date_joined` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`username`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_loggedin` (
    `phone_number` VARCHAR(15) NOT NULL,
    `username` VARCHAR(20) NOT NULL,
    
    PRIMARY KEY (`phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_follows` (
    `followed` VARCHAR(20) NOT NULL,
    `follower` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`followed`, `follower`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_posts` (
    `id` VARCHAR(50) NOT NULL,

    `media` TEXT,
    `caption` VARCHAR(500) NOT NULL DEFAULT "",

    `like_count` INT(11) NOT NULL DEFAULT 0,
    `comment_count` INT(11) NOT NULL DEFAULT 0,

    `username` VARCHAR(20) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_comments` (
    `id` VARCHAR(50) NOT NULL,
    `post_id` VARCHAR(50) NOT NULL,

    `username` VARCHAR(20) NOT NULL,
    `comment` VARCHAR(500) NOT NULL DEFAULT "",
    `like_count` INT(11) NOT NULL DEFAULT 0,
    
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_likes` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL,
    `is_comment` BOOLEAN NOT NULL DEFAULT FALSE,
    
    PRIMARY KEY (`id`, `username`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_messages` (
    `id` VARCHAR(50) NOT NULL,

    `sender` VARCHAR(20) NOT NULL,
    `recipient` VARCHAR(20) NOT NULL,

    `content` VARCHAR(1000),
    `attachments` TEXT,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_notifications` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, 
    `from` VARCHAR(20) NOT NULL, 

    `type` VARCHAR(20) NOT NULL,
    `post_id` VARCHAR(50) DEFAULT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_stories` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, 
    `image` VARCHAR(200) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_stories_views` (
    `story_id` VARCHAR(50) NOT NULL,
    `viewer` VARCHAR(20) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`story_id`, `viewer`),
    FOREIGN KEY (`story_id`) REFERENCES `phone_instagram_stories`(`id`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_clock_alarms` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `hours` INT(2) NOT NULL DEFAULT 0,
    `minutes` INT(2) NOT NULL DEFAULT 0,

    `label` VARCHAR(50) DEFAULT NULL,
    `enabled` BOOLEAN DEFAULT TRUE,

    PRIMARY KEY (`id`, `phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tinder_accounts` (
    `name` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `photos` TEXT,
    `bio` VARCHAR(500) DEFAULT NULL,
    `dob` DATE NOT NULL,

    `is_male` BOOLEAN NOT NULL,
    `interested_men` BOOLEAN NOT NULL,
    `interested_women` BOOLEAN NOT NULL,

    PRIMARY KEY (`phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tinder_swipes` (
    `swiper` VARCHAR(15) NOT NULL,
    `swipee` VARCHAR(15) NOT NULL,
    
    `liked` BOOLEAN NOT NULL DEFAULT FALSE,

    PRIMARY KEY (`swiper`, `swipee`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tinder_matches` (
    `phone_number_1` VARCHAR(15) NOT NULL,
    `phone_number_2` VARCHAR(15) NOT NULL,

    `latest_message` VARCHAR(1000) DEFAULT NULL,
    `latest_message_timestamp` TIMESTAMP,

    PRIMARY KEY (`phone_number_1`, `phone_number_2`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tinder_messages` (
    `id` VARCHAR(50) NOT NULL,
    
    `sender` VARCHAR(15) NOT NULL,
    `recipient` VARCHAR(15) NOT NULL,

    `content` VARCHAR(1000),
    `attachments` TEXT,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_message_channels` (
    `channel_id` VARCHAR(50) NOT NULL,
    `is_group` BOOLEAN NOT NULL DEFAULT FALSE,
    `name` VARCHAR(50) DEFAULT NULL,
    `last_message` VARCHAR(50) NOT NULL DEFAULT "",
    `last_message_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (`channel_id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_message_members` (
    `channel_id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `is_owner` BOOLEAN NOT NULL DEFAULT FALSE,

    PRIMARY KEY (`channel_id`, `phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_message_messages` (
    `id` VARCHAR(50) NOT NULL,
    `channel_id` VARCHAR(50) NOT NULL,
    `sender` VARCHAR(15) NOT NULL,
    `content` VARCHAR(1000),
    `attachments` TEXT,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_message_unread` (
    `channel_id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `unread` INT(11) NOT NULL DEFAULT 0,

    PRIMARY KEY (`channel_id`, `phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_darkchat_accounts` (
    `phone_number` VARCHAR(15) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`username`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_darkchat_channels` (
    `name` VARCHAR(50) NOT NULL,
    `last_message` VARCHAR(50) NOT NULL DEFAULT "",
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (`name`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_darkchat_members` (
    `channel_name` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`channel_name`, `username`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_darkchat_messages` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `channel` VARCHAR(50) NOT NULL,
    `sender` VARCHAR(20) NOT NULL,
    `content` VARCHAR(1000),
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_wallet_transactions` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `phone_number` VARCHAR(15) NOT NULL,
    
    `amount` INT(11) NOT NULL,
    `company` VARCHAR(50) NOT NULL,
    `logo` VARCHAR(200) DEFAULT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_yellow_pages_posts` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `title` VARCHAR(50) NOT NULL,
    `description` VARCHAR(1000) NOT NULL,

    `attachment` VARCHAR(500) DEFAULT NULL,
    `price` INT(11) DEFAULT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_backups` (
    `identifier` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`identifier`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_marketplace_posts` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `title` VARCHAR(50) NOT NULL,
    `description` VARCHAR(1000) NOT NULL,
    `attachments` TEXT,
    `price` INT(11) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_music_playlists` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `name` VARCHAR(50) NOT NULL,
    `cover` VARCHAR(500) DEFAULT NULL,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_music_saved_playlists` (
    `playlist_id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`playlist_id`, `phone_number`),
    FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists`(`id`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_music_songs` (
    `song_id` VARCHAR(100) NOT NULL,
    `playlist_id` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`song_id`, `playlist_id`),
    FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists`(`id`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_mail_accounts` (
    `address` VARCHAR(100) NOT NULL,
    `password` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`address`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_mail_loggedin` (
    `address` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`address`, `phone_number`),
    FOREIGN KEY (`address`) REFERENCES `phone_mail_accounts`(`address`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_mail_messages` (
    `id` VARCHAR(50) NOT NULL,

    `recipient` VARCHAR(100) NOT NULL,
    `sender` VARCHAR(100) NOT NULL,

    `subject` VARCHAR(100) NOT NULL,
    `content` TEXT NOT NULL,
    `attachments` LONGTEXT,
    `actions` LONGTEXT,

    `read` BOOLEAN NOT NULL DEFAULT FALSE,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_services_channels` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `company` VARCHAR(50) NOT NULL,

    `last_message` VARCHAR(100) DEFAULT NULL,
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_services_messages` (
    `id` VARCHAR(50) NOT NULL,
    `channel_id` VARCHAR(50) NOT NULL,

    `sender` VARCHAR(15) NOT NULL,
    `message` VARCHAR(1000) NOT NULL,

    `x_pos` INT(11) DEFAULT NULL,
    `y_pos` INT(11) DEFAULT NULL,
    
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`channel_id`) REFERENCES `phone_services_channels`(`id`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_maps_locations` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `name` VARCHAR(50) NOT NULL,

    `x_pos` FLOAT NOT NULL,
    `y_pos` FLOAT NOT NULL,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_crypto` (
    `identifier` VARCHAR(100) NOT NULL,
    `coin` VARCHAR(15) NOT NULL,
    `amount` DOUBLE NOT NULL DEFAULT 0,
    `invested` INT(11) NOT NULL DEFAULT 0,

    PRIMARY KEY (`identifier`, `coin`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `multijobs` (
  `citizenid` varchar(100) NOT NULL,
  `jobdata` text DEFAULT NULL,
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `weedplants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` longtext NOT NULL CHECK (json_valid(`coords`)),
  `time` int(255) NOT NULL,
  `fertilizer` longtext NOT NULL CHECK (json_valid(`fertilizer`)),
  `water` longtext NOT NULL CHECK (json_valid(`water`)),
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
)