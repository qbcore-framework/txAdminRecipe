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

CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `houseID` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` text DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `mlo` text DEFAULT NULL,
  `ipl` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `player_houses` (
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `insideId` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `houseID` varchar(50) DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  `decorateStash` text DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `creditPrice` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`house`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `house_plants` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7123 DEFAULT CHARSET=utf8mb4;

ALTER TABLE `players` ADD IF NOT EXISTS `inside` VARCHAR(100);
ALTER TABLE `houselocations` ADD IF NOT EXISTS `houseID` varchar(50) DEFAULT NULL;
ALTER TABLE `player_houses` ADD IF NOT EXISTS `houseID` varchar(50) DEFAULT NULL;

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

CREATE TABLE IF NOT EXISTS `mdt_clocking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `clock_in_time` varchar(255) NOT NULL DEFAULT '',
  `clock_out_time` varchar(50) DEFAULT NULL,
  `total_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- phone_number is the identifier used for phones in twitter etc
CREATE TABLE IF NOT EXISTS `phone_phones` (
    `id` VARCHAR(100) NOT NULL, -- if metadata - unique id for the phone; if not - player identifier
    `phone_number` VARCHAR(15) NOT NULL, -- varchar since it can start with 0
    `name` VARCHAR(50),

    `pin` VARCHAR(4) DEFAULT NULL, -- pin for the phone
    `face_id` VARCHAR(100) DEFAULT NULL, -- the identifier of the face that is used for the phone
    
    `settings` LONGTEXT, -- json encoded settings
    `is_setup` BOOLEAN DEFAULT FALSE,
    `assigned` BOOLEAN DEFAULT FALSE, -- if the phone is assigned to a phone item (metadata)
    `battery` INT NOT NULL DEFAULT 100, -- battery percentage

    PRIMARY KEY (`id`),
    UNIQUE KEY (`phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_last_phone` (
    `identifier` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`identifier`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_photos` (
    `phone_number` VARCHAR(15) NOT NULL,

    `link` VARCHAR(200) NOT NULL,
    `is_video` BOOLEAN DEFAULT FALSE,
    `size` FLOAT NOT NULL DEFAULT 0,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`phone_number`, `link`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_notes` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `title` VARCHAR(50) NOT NULL,
    `content` LONGTEXT, -- limit maybe?
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
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

    PRIMARY KEY (`id`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- TWITTER
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

    PRIMARY KEY (`username`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_loggedin` (
    `phone_number` VARCHAR(15) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`phone_number`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_follows` (
    `followed` VARCHAR(20) NOT NULL, -- the person followed, matches to `username` in phone_twitter_accounts
    `follower` VARCHAR(20) NOT NULL, -- the person following, matches to `username` in phone_twitter_accounts
    `notifications` BOOLEAN NOT NULL DEFAULT FALSE, -- if the follower gets notifications from the followed

    PRIMARY KEY (`followed`, `follower`),
    FOREIGN KEY (`followed`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`follower`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_tweets` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, -- the person who tweeted, matches to `username` in phone_twitter_accounts

    `content` VARCHAR(280),
    `attachments` TEXT, -- json array of attachments

    `reply_to` VARCHAR(50) DEFAULT NULL, -- the tweet / reply this tweet / reply was a reply to
    
    `like_count` INT(11) DEFAULT 0,
    `reply_count` INT(11) DEFAULT 0,
    `retweet_count` INT(11) DEFAULT 0,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_likes` (
    `tweet_id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, -- the person who liked the tweet / reply, matches to `username` in phone_twitter_accounts

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`tweet_id`, `username`),
    FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
    -- no foreign key on tweet_id as it should still show in the feed, even if the tweet is deleted
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_retweets` (
    `tweet_id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, -- the person who retweeted the tweet / reply, matches to `username` in phone_twitter_accounts

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`tweet_id`, `username`),
    FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
    -- no foreign key on tweet_id as it should still show in the feed, even if the tweet is deleted
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_promoted` (
    `tweet_id` VARCHAR(50) NOT NULL,
    `promotions` INT(11) NOT NULL DEFAULT 0, -- how how many times this tweet should be promoted
    `views` INT(11) NOT NULL DEFAULT 0, -- how many times this tweet has been promoted

    PRIMARY KEY (`tweet_id`),
    FOREIGN KEY (`tweet_id`) REFERENCES `phone_twitter_tweets`(`id`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_twitter_messages` (
    `id` VARCHAR(50) NOT NULL,

    `sender` VARCHAR(20) NOT NULL, -- the person who sent the message, matches to `username` in phone_twitter_accounts
    `recipient` VARCHAR(20) NOT NULL, -- the person who received the message, matches to `username` in phone_twitter_accounts

    `content` VARCHAR(1000),
    `attachments` TEXT, -- json array of attachments

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`sender`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`recipient`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
 
CREATE TABLE IF NOT EXISTS `phone_twitter_notifications` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, -- the person who received the notification, matches to `username` in phone_twitter_accounts
    `from` VARCHAR(20) NOT NULL, -- the person who sent the notification, matches to `username` in phone_twitter_accounts

    `type` VARCHAR(20) NOT NULL, -- like, retweet, reply, follow 
    `tweet_id` VARCHAR(50) DEFAULT NULL, -- the tweet / reply this notification is about

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`from`) REFERENCES `phone_twitter_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- PHONE
CREATE TABLE IF NOT EXISTS `phone_phone_contacts` (
    `contact_phone_number` VARCHAR(15) NOT NULL, -- the phone number of the contact
    `firstname` VARCHAR(50) NOT NULL DEFAULT "",
    `lastname` VARCHAR(50) NOT NULL DEFAULT "",
    `profile_image` VARCHAR(200) DEFAULT NULL,
    `email` VARCHAR(50) DEFAULT NULL,
    `address` VARCHAR(50) DEFAULT NULL,
    `favourite` BOOLEAN DEFAULT FALSE,
    `phone_number` VARCHAR(15) NOT NULL, -- the phone number of the person who added the contact

    PRIMARY KEY (`contact_phone_number`, `phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_phone_calls` (
    `id` VARCHAR(50) NOT NULL,
    
    `caller` VARCHAR(15) NOT NULL, -- the phone number of the person who called
    `callee` VARCHAR(15) NOT NULL, -- the phone number of the person who was called

    `duration` INT(11) NOT NULL DEFAULT 0,
    `answered` BOOLEAN DEFAULT FALSE, -- whether the call was answered or not
    
    `hide_caller_id` BOOLEAN DEFAULT FALSE, -- whether the caller's phone number was hidden or not

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_phone_blocked_numbers` (
    `phone_number` VARCHAR(15) NOT NULL, -- the phone number of the person who blocked the number
    `blocked_number` VARCHAR(15) NOT NULL, -- the phone number that was blocked
    
    PRIMARY KEY (`phone_number`, `blocked_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- INSTAGRAM
CREATE TABLE IF NOT EXISTS `phone_instagram_accounts` (
    `display_name` VARCHAR(30) NOT NUll,
    
    `username` VARCHAR(20) NOT NULL,
    `password` VARCHAR(100) NOT NULL,

    `profile_image` VARCHAR(200) DEFAULT NULL,
    `bio` VARCHAR(100) DEFAULT NULL,

    `phone_number` VARCHAR(15) NOT NULL,

    `verified` BOOLEAN DEFAULT FALSE,
    `date_joined` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`username`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_loggedin` (
    `phone_number` VARCHAR(15) NOT NULL,
    `username` VARCHAR(20) NOT NULL,
    
    PRIMARY KEY (`phone_number`),
    FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_follows` (
    `followed` VARCHAR(20) NOT NULL, -- the person followed, matches to `username` in phone_instagram_accounts
    `follower` VARCHAR(20) NOT NULL, -- the person following, matches to `username` in phone_instagram_accounts

    PRIMARY KEY (`followed`, `follower`),
    FOREIGN KEY (`followed`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`follower`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_posts` (
    `id` VARCHAR(50) NOT NULL,

    `media` TEXT, -- json array of attached media
    `caption` VARCHAR(500) NOT NULL DEFAULT "",
    `location` VARCHAR(50) DEFAULT NULL,

    `like_count` INT(11) NOT NULL DEFAULT 0,
    `comment_count` INT(11) NOT NULL DEFAULT 0,

    `username` VARCHAR(20) NOT NULL, -- the person who posted, matches to `username` in phone_instagram_accounts

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_comments` (
    `id` VARCHAR(50) NOT NULL,
    `post_id` VARCHAR(50) NOT NULL, -- the post this comment was made on, matches to `id` in phone_instagram_posts

    `username` VARCHAR(20) NOT NULL, -- the person who commented, matches to `username` in phone_instagram_accounts
    `comment` VARCHAR(500) NOT NULL DEFAULT "",
    `like_count` INT(11) NOT NULL DEFAULT 0,
    
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY (`id`),
    FOREIGN KEY (`post_id`) REFERENCES `phone_instagram_posts`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_likes` (
    `id` VARCHAR(50) NOT NULL, -- the post / comment this like was on, matches to `id` in phone_instagram_posts / phone_instagram_comments
    `username` VARCHAR(20) NOT NULL, -- the person who liked, matches to `username` in phone_instagram_accounts
    `is_comment` BOOLEAN NOT NULL DEFAULT FALSE, -- whether this like was on a comment or a post
    
    PRIMARY KEY (`id`, `username`),
    FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_messages` (
    `id` VARCHAR(50) NOT NULL,

    `sender` VARCHAR(20) NOT NULL, -- the person who sent the message, matches to `username` in phone_instagram_accounts
    `recipient` VARCHAR(20) NOT NULL, -- the person who received the message, matches to `username` in phone_instagram_accounts

    `content` VARCHAR(1000),
    `attachments` TEXT, -- json array of attachments

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`sender`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`recipient`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_notifications` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, 
    `from` VARCHAR(20) NOT NULL, 

    `type` VARCHAR(20) NOT NULL, -- like, comment, follow 
    `post_id` VARCHAR(50) DEFAULT NULL, -- the post / comment this notification is about

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`from`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_stories` (
    `id` VARCHAR(50) NOT NULL,
    `username` VARCHAR(20) NOT NULL, 
    `image` VARCHAR(200) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_instagram_stories_views` (
    `story_id` VARCHAR(50) NOT NULL,
    `viewer` VARCHAR(20) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`story_id`, `viewer`),
    FOREIGN KEY (`story_id`) REFERENCES `phone_instagram_stories`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`viewer`) REFERENCES `phone_instagram_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CLOCK
CREATE TABLE IF NOT EXISTS `phone_clock_alarms` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `hours` INT(2) NOT NULL DEFAULT 0,
    `minutes` INT(2) NOT NULL DEFAULT 0,

    `label` VARCHAR(50) DEFAULT NULL,
    `enabled` BOOLEAN DEFAULT TRUE,

    PRIMARY KEY (`id`, `phone_number`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- TINDER
CREATE TABLE IF NOT EXISTS `phone_tinder_accounts` (
    `name` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `photos` TEXT, -- json array of photos
    `bio` VARCHAR(500) DEFAULT NULL,
    `dob` DATE NOT NULL,

    `is_male` BOOLEAN NOT NULL,
    `interested_men` BOOLEAN NOT NULL,
    `interested_women` BOOLEAN NOT NULL,

    PRIMARY KEY (`phone_number`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tinder_swipes` (
    `swiper` VARCHAR(15) NOT NULL, -- the phone number of the person who swiped
    `swipee` VARCHAR(15) NOT NULL, -- the phone number of the person who was swiped on
    
    `liked` BOOLEAN NOT NULL DEFAULT FALSE, -- whether the swiper liked the swipee or not

    PRIMARY KEY (`swiper`, `swipee`),
    FOREIGN KEY (`swiper`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`swipee`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tinder_matches` (
    `phone_number_1` VARCHAR(15) NOT NULL,
    `phone_number_2` VARCHAR(15) NOT NULL,

    `latest_message` VARCHAR(1000) DEFAULT NULL, -- the latest message sent between the two people
    `latest_message_timestamp` TIMESTAMP, -- the timestamp of the latest message sent between the two people

    PRIMARY KEY (`phone_number_1`, `phone_number_2`),
    FOREIGN KEY (`phone_number_1`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`phone_number_2`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tinder_messages` (
    `id` VARCHAR(50) NOT NULL, -- the message id
    
    `sender` VARCHAR(15) NOT NULL, -- the phone number of the person who sent the message
    `recipient` VARCHAR(15) NOT NULL, -- the phone number of the person who received the message

    `content` VARCHAR(1000),
    `attachments` TEXT, -- json array of attachments

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`sender`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`recipient`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- IMESSAGE
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
    `attachments` TEXT, -- json array of attachments
    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_message_unread` (
    `channel_id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,
    `unread` INT(11) NOT NULL DEFAULT 0,

    PRIMARY KEY (`channel_id`, `phone_number`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- DARKCHAT
CREATE TABLE IF NOT EXISTS `phone_darkchat_accounts` (
    `phone_number` VARCHAR(15) NOT NULL,
    `username` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`username`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
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

-- WALLET
CREATE TABLE IF NOT EXISTS `phone_wallet_transactions` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `phone_number` VARCHAR(15) NOT NULL,
    
    `amount` INT(11) NOT NULL,
    `company` VARCHAR(50) NOT NULL,
    `logo` VARCHAR(200) DEFAULT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- YELLOW PAGES
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

-- BACKUPS
CREATE TABLE IF NOT EXISTS `phone_backups` (
    `identifier` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`identifier`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- MARKETPLACE
CREATE TABLE IF NOT EXISTS `phone_marketplace_posts` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `title` VARCHAR(50) NOT NULL,
    `description` VARCHAR(1000) NOT NULL,
    `attachments` TEXT, -- json array of attachments
    `price` INT(11) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- MUSIC
CREATE TABLE IF NOT EXISTS `phone_music_playlists` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `name` VARCHAR(50) NOT NULL,
    `cover` VARCHAR(500) DEFAULT NULL,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_music_saved_playlists` (
    `playlist_id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`playlist_id`, `phone_number`),
    FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_music_songs` (
    `song_id` VARCHAR(100) NOT NULL,
    `playlist_id` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`song_id`, `playlist_id`),
    FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists`(`id`) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- MAIL
CREATE TABLE IF NOT EXISTS `phone_mail_accounts` (
    `address` VARCHAR(100) NOT NULL,
    `password` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`address`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_mail_loggedin` (
    `address` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`phone_number`),
    FOREIGN KEY (`address`) REFERENCES `phone_mail_accounts`(`address`) ON DELETE CASCADE,
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_mail_messages` (
    `id` VARCHAR(50) NOT NULL,

    `recipient` VARCHAR(100) NOT NULL,
    `sender` VARCHAR(100) NOT NULL,

    `subject` VARCHAR(100) NOT NULL,
    `content` TEXT NOT NULL,
    `attachments` LONGTEXT, -- json array of attachments
    `actions` LONGTEXT, -- json array of actions

    `read` BOOLEAN NOT NULL DEFAULT FALSE,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- COMPANIES APP
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

-- MAPS
CREATE TABLE IF NOT EXISTS `phone_maps_locations` (
    `id` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    `name` VARCHAR(50) NOT NULL,

    `x_pos` FLOAT NOT NULL,
    `y_pos` FLOAT NOT NULL,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CRYPTO
CREATE TABLE IF NOT EXISTS `phone_crypto` (
    `identifier` VARCHAR(100) NOT NULL, -- player identifier
    `coin` VARCHAR(15) NOT NULL, -- coin, for example "bitcoin"
    `amount` DOUBLE NOT NULL DEFAULT 0, -- amount of coins
    `invested` INT(11) NOT NULL DEFAULT 0, -- amount of $$$ invested

    PRIMARY KEY (`identifier`, `coin`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- ACCOUNT SWITCHER
CREATE TABLE IF NOT EXISTS `phone_logged_in_accounts` (
    `phone_number` VARCHAR(15) NOT NULL,
    `app` VARCHAR(50) NOT NULL,
    `username` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`phone_number`, `app`, `username`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- TIKTOK
CREATE TABLE IF NOT EXISTS `phone_tiktok_accounts` (
    `name` VARCHAR(30) NOT NULL,
    `bio` VARCHAR(100) DEFAULT NULL,
    `avatar` VARCHAR(200) DEFAULT NULL,

    `username` VARCHAR(20) NOT NULL,
    `password` VARCHAR(100) NOT NULL,

    `verified` BOOLEAN DEFAULT FALSE,

    `follower_count` INT(11) NOT NULL DEFAULT 0,
    `following_count` INT(11) NOT NULL DEFAULT 0,
    `like_count` INT(11) NOT NULL DEFAULT 0,
    `video_count` INT(11) NOT NULL DEFAULT 0,

    `twitter` VARCHAR(20) DEFAULT NULL,
    `instagram` VARCHAR(20) DEFAULT NULL,

    `show_likes` BOOLEAN DEFAULT TRUE,

    `phone_number` VARCHAR(15) NOT NULL,
    `date_joined` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY (`username`),
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_loggedin` (
    `username` VARCHAR(20) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,

    PRIMARY KEY (`phone_number`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`phone_number`) REFERENCES `phone_phones`(`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_follows` (
    `followed` VARCHAR(20) NOT NULL,
    `follower` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`followed`, `follower`),
    FOREIGN KEY (`followed`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`follower`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_videos` (
    `id` VARCHAR(10) NOT NULL,

    `username` VARCHAR(20) NOT NULL,

    `src` VARCHAR(200) NOT NULL,
    `caption` VARCHAR(100) DEFAULT NULL,
    `metadata` LONGTEXT, -- json array of metadata
    `music` TEXT DEFAULT NULL,

    `likes` INT(11) NOT NULL DEFAULT 0,
    `comments` INT(11) NOT NULL DEFAULT 0,
    `views` INT(11) NOT NULL DEFAULT 0,
    `saves` INT(11) NOT NULL DEFAULT 0,

    `pinned_comment` VARCHAR(10) DEFAULT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_likes` (
    `username` VARCHAR(20) NOT NULL,
    `video_id` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`username`, `video_id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_views` (
    `username` VARCHAR(20) NOT NULL,
    `video_id` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`username`, `video_id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_saves` (
    `username` VARCHAR(20) NOT NULL,
    `video_id` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`username`, `video_id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_comments` (
    `id` VARCHAR(10) NOT NULL,
    `reply_to` VARCHAR(10) DEFAULT NULL,
    `video_id` VARCHAR(10) NOT NULL,

    `username` VARCHAR(20) NOT NULL,
    `comment` VARCHAR(550) NOT NULL,

    `likes` INT(11) NOT NULL DEFAULT 0,
    `replies` INT(11) NOT NULL DEFAULT 0,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`reply_to`) REFERENCES `phone_tiktok_comments`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_comments_likes` (
    `username` VARCHAR(20) NOT NULL,
    `comment_id` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`username`, `comment_id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_channels` (
    `id` VARCHAR(10) NOT NULL,

    `last_message` VARCHAR(50) NOT NULL,

    `member_1` VARCHAR(20) NOT NULL,
    `member_2` VARCHAR(20) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    UNIQUE KEY (`member_1`, `member_2`),
    FOREIGN KEY (`member_1`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`member_2`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_messages` (
    `id` VARCHAR(10) NOT NULL,
    `channel_id` VARCHAR(10) NOT NULL,
    `sender` VARCHAR(20) NOT NULL,

    `content` VARCHAR(500) NOT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`sender`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_pinned_videos` (
    `username` VARCHAR(20) NOT NULL,
    `video_id` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`username`, `video_id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_notifications` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(20) NOT NULL,
    
    `from` VARCHAR(20) NOT NULL,
    `type` VARCHAR(20) NOT NULL, -- like, comment, follow, save, reply or like_comment
    `video_id` VARCHAR(10) DEFAULT NULL,
    `comment_id` VARCHAR(10) DEFAULT NULL,

    `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`from`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone_tiktok_unread_messages` (
    `username` VARCHAR(20) NOT NULL,
    `channel_id` VARCHAR(10) NOT NULL,
    `amount` INT(11) NOT NULL DEFAULT 0,

    PRIMARY KEY (`username`, `channel_id`),
    FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts`(`username`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

DELIMITER //

-- Triggers for phone_tiktok_follows
-- Increment phone_tiktok_accounts.follower_count and phone_tiktok_accounts.following_count after inserting a new row into phone_tiktok_follows
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_follow
AFTER INSERT ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Increment the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    -- Increment the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END;

-- Decrement phone_tiktok_accounts.follower_count and phone_tiktok_accounts.following_count after deleting a row from phone_tiktok_follows
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_unfollow
AFTER DELETE ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Decrement the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    -- Decrement the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END;

-- Trigger for phone_tiktok_videos
-- Trigger to increment phone_tiktok_accounts.video_count after inserting a new row into phone_tiktok_videos
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_count
AFTER INSERT ON phone_tiktok_videos
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    SET video_count = video_count + 1
    WHERE username = NEW.username;
END;

-- Trigger for phone_tiktok_likes
-- Trigger to increment phone_tiktok_videos.likes after inserting a new row into phone_tiktok_likes
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes + 1
    WHERE id = NEW.video_id;
END;

-- Trigger to decrement phone_tiktok_videos.likes after deleting a row from phone_tiktok_likes
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes - 1
    WHERE id = OLD.video_id;
END;

-- Trigger to increment phone_tiktok_accounts.like_count for the user after a new like is inserted into phone_tiktok_likes
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_account_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count + 1
    WHERE phone_tiktok_videos.id = NEW.video_id;
END;

-- Trigger to decrement phone_tiktok_accounts.like_count for the user after a like is removed from phone_tiktok_likes
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_account_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count - 1
    WHERE phone_tiktok_videos.id = OLD.video_id;
END;

-- Triggers for phone_tiktok_views
-- Trigger to increment phone_tiktok_videos.views when a new view is inserted into phone_tiktok_views
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_views
AFTER INSERT ON phone_tiktok_views
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET views = views + 1
    WHERE id = NEW.video_id;
END;

-- Triggers for phone_tiktok_saves
-- Increment saves after inserting a new row into phone_tiktok_saves
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_saves
AFTER INSERT ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves + 1
    WHERE id = NEW.video_id;
END;

-- Decrement saves after deleting a row from phone_tiktok_saves
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_saves
AFTER DELETE ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves - 1
    WHERE id = OLD.video_id;
END;

-- Triggers for phone_tiktok_comments
-- Increment phone_tiktok_videos.comments after inserting a new row into phone_tiktok_comments
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_comments
AFTER INSERT ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET comments = comments + 1
    WHERE id = NEW.video_id;
END;

-- Decrement phone_tiktok_videos.comments after deleting a row from phone_tiktok_comments
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_comments
BEFORE DELETE ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    DECLARE v_replies_count INT;

    -- Count the replies for the comment
    SELECT COUNT(*) INTO v_replies_count
    FROM phone_tiktok_comments
    WHERE reply_to = OLD.id;

    -- Update the video's comments count
    UPDATE phone_tiktok_videos
    SET comments = comments - (1 + v_replies_count)
    WHERE id = OLD.video_id;
END;

-- Triggers for phone_tiktok_comments_likes
-- Increment phone_tiktok_comments.likes after inserting a new row into phone_tiktok_comments_likes
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_comment_likes
AFTER INSERT ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes + 1
    WHERE id = NEW.comment_id;
END;

-- Decrement phone_tiktok_comments.likes after deleting a row from phone_tiktok_comments_likes
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_comment_likes
AFTER DELETE ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes - 1
    WHERE id = OLD.comment_id;
END;

-- Triggers for phone_tiktok_messages
-- Trigger to update phone_tiktok_channels.last_message after a new message is inserted into phone_tiktok_messages
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_last_message
AFTER INSERT ON phone_tiktok_messages
FOR EACH ROW
BEGIN
    DECLARE modified_content TEXT;
    
    IF NEW.content LIKE '<!SHARED-VIDEO-URL%' THEN
        SET modified_content = 'Shared a video';
    ELSEIF LENGTH(NEW.content) > 50 THEN
        SET modified_content = CONCAT(SUBSTR(NEW.content, 1, 17), '...');
    ELSE
        SET modified_content = NEW.content;
    END IF;
    
    UPDATE phone_tiktok_channels
    SET last_message = modified_content
    WHERE id = NEW.channel_id;
END;

-- Procedures for phone_tiktok_notifications
-- Procedure to make sure each notification entry is unique.
CREATE PROCEDURE IF NOT EXISTS tiktok_insert_notification_if_unique(
    IN p_username VARCHAR(20),
    IN p_from VARCHAR(20),
    IN p_type VARCHAR(20),
    IN p_video_id VARCHAR(10),
    IN p_comment_id VARCHAR(10)
)
BEGIN
    DECLARE duplicate_entry INT DEFAULT 0;

    SELECT COUNT(*)
    INTO duplicate_entry
    FROM phone_tiktok_notifications
    WHERE (username = p_username)
    AND (`from` = p_from)
    AND (`type` = p_type)
    AND (video_id = p_video_id OR (video_id IS NULL AND p_video_id IS NULL))
    AND (comment_id = p_comment_id OR (comment_id IS NULL AND p_comment_id IS NULL));

    IF duplicate_entry = 0 THEN
        INSERT INTO phone_tiktok_notifications (username, `from`, `type`, video_id, comment_id)
        VALUES (p_username, p_from, p_type, p_video_id, p_comment_id);
    END IF;
END;

//
DELIMITER ;

CREATE TABLE IF NOT EXISTS `multijobs` (
  `citizenid` varchar(100) NOT NULL,
  `jobdata` text DEFAULT NULL,
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `outdoor_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `strain` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `hunger` double NOT NULL,
  `thirst` double NOT NULL,
  `quality` double NOT NULL,
  `growth` double NOT NULL,
  `growthrate` int(11) NOT NULL,
  `degrade` int(11) NOT NULL,
  `coords` text DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

create table rcore_guidebook_categories
(
    id             int auto_increment,
    label          VARCHAR(255) not null,
    `key`          VARCHAR(255) not null,
    order_number   int default 1 null,
    is_enabled     tinyint(1) default 1 null,
    default_expand tinyint(1) default 1 null,
    constraint rcore_guidebook_categories_pk
        primary key (id)
);

create unique index rcore_guidebook_categories_key_uindex
    on rcore_guidebook_categories (`key`);

create table rcore_guidebook_pages
(
    id           int auto_increment,
    label        varchar(255) not null,
    `key`        varchar(255) not null,
    category_key varchar(255) not null,
    order_number int default 1 null,
    is_enabled   tinyint(1) default 1 null,
    content      LONGTEXT null,
    constraint rcore_guidebook_pages_pk
        primary key (id)
);

create unique index rcore_guidebook_pages_key_uindex
    on rcore_guidebook_pages (`key`);

INSERT INTO rcore_guidebook_categories (label, `key`, order_number, is_enabled, default_expand)
VALUES ('Home', 'home', 1, 1, 1);

INSERT INTO rcore_guidebook_pages (label, `key`, category_key, order_number, is_enabled, content)
VALUES ('Welcome', 'welcome', 'home', 1, 1, '<h2>Welcome to this server :)</h2>
<p>This is the demo page of rcore_guidebook resource.</p>
<p>You can change all this with the administration command if you have the rights to do.<br /><br /></p>
<p>If you need any help contact us on our discord <a href="https://discord.gg/F28PfsY">https://discord.gg/F28PfsY</a></p>');

create table rcore_guidebook_points
(
    id                int auto_increment,
    `key`             varchar(50)                           not null,
    label             varchar(255) null,
    is_enabled        tinyint(1) default 1 not null,
    can_navigate      tinyint(1) default 1 not null,
    blip_sprite       varchar(255) null,
    blip_color        int null,
    blip_display_type int          default 4                null,
    blip_size              float        default 1.0              null,
    blip_enabled      tinyint(1) default 1 not null,
    marker_enabled      tinyint(1) default 1 not null,
    marker_size varchar(255) null,
    marker_draw_distance int null,
    marker_type varchar(255) null,
    marker_color varchar(255) null,
    show_date         timestamp null,
    hide_date         timestamp null,
    content           TEXT null,
    help_key          varchar(255) null,
    draw_distance     int null,
    position          varchar(255) default "vector3(0,0,0)" not null,
    size float default 1.0 null,
    color varchar(255) null,
    is_rotation_enabled tinyint(1) default 1 null,
    marker_rotation varchar(255) default '{"x":0.0,"y":0.0,"z":0.0}' null,
    font tinyint(1) default 0 null,
    constraint rcore_guidebook_points_pk
        primary key (id)
);

create unique index rcore_guidebook_points_key_uindex
    on rcore_guidebook_points (`key`);

ALTER TABLE rcore_guidebook_categories CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE rcore_guidebook_pages CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE rcore_guidebook_points CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

DROP TABLE IF EXISTS `rcore_reports`;
CREATE TABLE `rcore_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` text NOT NULL,
  `title` text NOT NULL,
  `state` varchar(20) NOT NULL,
  `tag` text NULL,
  `created_at` datetime NOT NULL,
  `in_resolve_at` datetime DEFAULT NULL,
  `in_resolve_by` text DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolved_by` text DEFAULT NULL,
  `players_in_area` text NOT NULL,
  `chat_room` text NOT NULL,
  `logger` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `rcore_reports_tags`;
CREATE TABLE `rcore_reports_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `rcore_reports_admin_chat`;
CREATE TABLE `rcore_reports_admin_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` text NOT NULL,
  `parentMessageId` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `t1ger_gangs`;
CREATE TABLE `t1ger_gangs` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`notoriety` INT(11) NOT NULL DEFAULT 0,
	`cash` INT(11) NOT NULL DEFAULT 0,
	`leader` VARCHAR(100) NOT NULL,
	`ranks` LONGTEXT DEFAULT NULL,
	`members` LONGTEXT DEFAULT NULL,
	`markers` LONGTEXT DEFAULT NULL,
	`disabled` TINYINT(1) NOT NULL DEFAULT 0,
	`rackets` LONGTEXT DEFAULT NULL,
	PRIMARY KEY (`id`)
);