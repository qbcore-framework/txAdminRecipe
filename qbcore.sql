CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4144 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `steam` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `steam` (`steam`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `steam` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `steam` (`steam`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1111 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `crypto` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=939 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `dealers` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `gloveboxitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=1551 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(2) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB AUTO_INCREMENT=7123 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `moneysafes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `safe` varchar(50) NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `transactions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `invoiceid` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`#`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=67023 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=6732 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=5436 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=12433 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `playerammo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `ammo` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=3638 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `playeritems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255891 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `players` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `steam` varchar(255) NOT NULL,
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
  PRIMARY KEY (`#`),
  KEY `citizenid` (`citizenid`),
  KEY `last_updated` (`last_updated`),
  KEY `steam` (`steam`)
) ENGINE=InnoDB AUTO_INCREMENT=4189 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=43010 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `player_boats` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `boathouse` varchar(50) DEFAULT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`#`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB AUTO_INCREMENT=8970 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(50) DEFAULT NULL,
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
  PRIMARY KEY (`#`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `steam` (`steam`)
) ENGINE=InnoDB AUTO_INCREMENT=2432 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_warns` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15024 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `stashitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stash` (`stash`)
) ENGINE=InnoDB AUTO_INCREMENT=2109 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=633 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `trunkitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=1127 DEFAULT CHARSET=latin1;

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `cashiercoords` longtext DEFAULT NULL,
  `beforevaults` longtext DEFAULT NULL,
  `vaults` longtext DEFAULT NULL,
  `vaultgate` longtext DEFAULT NULL,
  `finalgate` longtext DEFAULT NULL,
  `vg_spots` longtext DEFAULT NULL,
  `m_spots` longtext DEFAULT NULL,
  `bankOpen` tinyint(1) NOT NULL DEFAULT 1,
  `bankCooldown` int(11) NOT NULL DEFAULT 0,
  `bankType` enum('Small','Big','Paleto') NOT NULL DEFAULT 'Small',
  `moneyBags` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `banks` (`id`, `name`, `coords`, `cashiercoords`, `beforevaults`, `vaults`, `vaultgate`, `finalgate`, `vg_spots`, `m_spots`, `bankOpen`, `bankCooldown`, `bankType`, `moneyBags`) VALUES
(1, 'Fleeca', '{\"x\":149.88,\"y\":-1040.34,\"z\":29.37,\"h\":157.66}', '{\"door\":{\"outside\":{\"x\":145.26,\"y\":-1041.17,\"z\":29.37,\"h\":242.62},\"coords\":{\"x\":145.4186,\"y\":-1041.813,\"z\":29.64255}, \"hash\":-131754413, \"oh\":160.0 , \"ch\":249.846}, \"counters\":[{\"x\":146.87,\"y\":-1041.12,\"z\":29.37,\"h\":339.77},{\"x\":148.23,\"y\":-1041.62,\"z\":29.37,\"h\":345.57},{\"x\":149.66,\"y\":-1042.15,\"z\":29.37,\"h\":346.35},{\"x\":150.98,\"y\":-1042.62,\"z\":29.37,\"h\":332.29}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":147.515,\"y\":-1044.41,\"z\":29.47},\"drip\":{\"x\":147.29,\"y\":-1045.41,\"z\":29.37},\"bomb\":{\"offset\":{\"x\":0.20,\"y\":-0.025,\"z\":0.15},\"rotation\":{\"x\":90.0,\"y\":-90.0,\"z\":0.0}},\"heading\":250.0},\"coords\":{\"x\":148.0266,\"y\":-1044.364,\"z\":29.50693}, \"hash\":2121050683, \"oh\": 160.0, \"ch\":249.846}, \"coords\":{\"x\":146.94,\"y\":-1046.14,\"z\":29.37,\"h\":247.43}}', '{\"door\":{\"coords\":{\"x\":150.2913,\"y\":-1047.629,\"z\":29.6663}, \"hash\":-1591004109, \"oh\": 90.0, \"ch\":159.478}, \"coords\":{\"x\":148.55,\"y\":-1046.29,\"z\":29.35,\"h\":162.25}}', NULL, '[{\"x\":151.18,\"y\":-1046.7,\"z\":29.35,\"h\":248.73},{\"x\":150.53,\"y\":-1045.16,\"z\":29.35,\"h\":340.25},{\"x\":149.03,\"y\":-1044.7,\"z\":29.35,\"h\":333.25}]', '[{\"x\":147.11,\"y\":-1047.69,\"z\":29.35,\"h\":77.05},{\"x\":146.6,\"y\":-1049.02,\"z\":29.35,\"h\":69.09},{\"x\":146.94,\"y\":-1050.24,\"z\":29.35,\"h\":160.26},{\"x\":149.21,\"y\":-1051.16,\"z\":29.35,\"h\":158.39},{\"x\":150.6,\"y\":-1049.09,\"z\":29.35,\"h\":253.12}]', 1, 0, 'Small', NULL),
(2, 'Fleeca 2', '{\"x\":-350.83,\"y\":-49.6,\"z\":49.04,\"h\":156.65}', '{\"door\":{\"outside\":{\"x\":-355.5,\"y\":-50.52,\"z\":49.04,\"h\":250.89},\"coords\":{\"x\":-355.3892,\"y\":-51.06769,\"z\":49.31105}, \"hash\":-131754413, \"oh\":160.0 , \"ch\":249.846}, \"counters\":[{\"x\":-354.06,\"y\":-50.37,\"z\":49.04,\"h\":340.74},{\"x\":-352.64,\"y\":-50.92,\"z\":49.04,\"h\":342.21},{\"x\":-351.15,\"y\":-51.34,\"z\":49.04,\"h\":339.83},{\"x\":-349.83,\"y\":-51.82,\"z\":49.04,\"h\":332.06}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":-353.235,\"y\":-53.645,\"z\":49.14},\"drip\":{\"x\":-353.41,\"y\":-54.53,\"z\":49.04},\"bomb\":{\"rotation\":{\"x\":90.0,\"y\":-90.0,\"z\":0.0},\"offset\":{\"x\":0.25,\"y\":-0.125,\"z\":0.15}},\"heading\":250.0},\"coords\":{\"x\":-352.7365,\"y\":-53.57248,\"z\":49.17543}, \"hash\":2121050683, \"oh\": 160.0, \"ch\":249.846}, \"coords\":{\"x\":-353.85,\"y\":-55.32,\"z\":49.04,\"h\":247.94}}', '{\"door\":{\"coords\":{\"x\":-350.4144,\"y\":-56.79705,\"z\":49.3348}, \"hash\":-1591004109, \"oh\": 90.0, \"ch\":159.478}, \"coords\":{\"x\":-352.16,\"y\":-55.5,\"z\":49.01,\"h\":155.42}}', NULL, '[{\"x\":-349.55,\"y\":-55.83,\"z\":49.01,\"h\":250.5},{\"x\":-350.3,\"y\":-54.37,\"z\":49.01,\"h\":335.7},{\"x\":-351.58,\"y\":-53.84,\"z\":49.01,\"h\":344.11}]', '[{\"x\":-353.56,\"y\":-56.99,\"z\":49.01,\"h\":71.28},{\"x\":-354.12,\"y\":-58.49,\"z\":49.01,\"h\":70.56},{\"x\":-353.35,\"y\":-59.59,\"z\":49.01,\"h\":159.66},{\"x\":-351.55,\"y\":-60.29,\"z\":49.01,\"h\":169.66},{\"x\":-350.17,\"y\":-59.12,\"z\":49.01,\"h\":252.22}]', 1, 0, 'Small', NULL),
(3, 'Fleeca 3', '{\"y\":-278.46,\"z\":54.17,\"h\":161.96,\"x\":314.36}', '{\"door\":{\"outside\":{\"y\":-279.61,\"z\":54.16,\"h\":257.06,\"x\":309.62},\"coords\":{\"x\":309.74914550781,\"y\":-280.1796875,\"z\":54.439262390137}, \"hash\":-131754413, \"oh\":170.0 , \"ch\":249.86596679688}, \"counters\":[{\"y\":-279.47,\"z\":54.16,\"h\":336.19,\"x\":311.17},{\"y\":-280.04,\"z\":54.16,\"h\":335.54,\"x\":312.59},{\"y\":-280.57,\"z\":54.16,\"h\":348.41,\"x\":314.09},{\"y\":-281.04,\"z\":54.16,\"h\":346.89,\"x\":315.44}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":311.85,\"y\":-282.7875,\"z\":54.26},\"drip\":{\"x\":311.6,\"y\":-283.75,\"z\":54.16},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-70.0,\"z\":0.0},\"offset\":{\"x\":0.2775,\"y\":-0.04525,\"z\":0.15}},\"heading\":250.8},\"coords\":{\"x\":312.35800170898,\"y\":-282.73013305664,\"z\":54.303646087646}, \"hash\":2121050683, \"oh\": 160.0, \"ch\":249.86596679688}, \"coords\":{\"y\":-284.47,\"z\":54.16,\"h\":238.11,\"x\":311.25}}', '{\"door\":{\"coords\":{\"x\":314.62387084961,\"y\":-285.99447631836,\"z\":54.463008880615}, \"hash\":-1591004109, \"oh\": 90.0, \"ch\":159.86486816406}, \"coords\":{\"y\":-284.65,\"z\":54.14,\"h\":156.52,\"x\":312.85}}', NULL, '[{\"y\":-282.92,\"z\":54.14,\"h\":332.43,\"x\":313.28},{\"y\":-283.55,\"z\":54.14,\"h\":342.97,\"x\":314.91},{\"y\":-285.06,\"z\":54.14,\"h\":269.63,\"x\":315.49}]', '[{\"y\":-286.9,\"z\":54.14,\"h\":65.4,\"x\":311.13},{\"y\":-288.78,\"z\":54.14,\"h\":161.69,\"x\":311.49},{\"y\":-289.41,\"z\":54.14,\"h\":161.05,\"x\":313.18},{\"y\":-288.29,\"z\":54.14,\"h\":250.12,\"x\":314.91}]', 1, 0, 'Small', NULL),
(4, 'Fleeca 4', '{\"y\":-330.26,\"z\":37.79,\"h\":202.22,\"x\":-1212.98}', '{\"door\":{\"outside\":{\"y\":-334.43,\"z\":37.78,\"h\":297.06,\"x\":-1215.42},\"coords\":{\"x\":-1214.9053955078,\"y\":-334.72808837891,\"z\":38.055507659912}, \"hash\":-131754413, \"oh\":206.0 , \"ch\":296.86373901367}, \"counters\":[{\"y\":-333.21,\"z\":37.78,\"h\":20.72,\"x\":-1214.47},{\"y\":-332.53,\"z\":37.78,\"h\":27.31,\"x\":-1213.13},{\"y\":-331.85,\"z\":37.78,\"h\":23.82,\"x\":-1211.79},{\"y\":-331.23,\"z\":37.78,\"h\":29.4,\"x\":-1210.52}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":-1210.84,\"y\":-334.672,\"z\":37.88},\"drip\":{\"y\":-335.82,\"z\":37.78,\"h\":292.56,\"x\":-1211.04},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-117.0,\"z\":0.0},\"offset\":{\"x\":0.2275,\"y\":0.18525,\"z\":0.15}},\"heading\":300.0},\"coords\":{\"x\":-1211.2609863281,\"y\":-334.55960083008,\"z\":37.919891357422}, \"hash\":2121050683, \"oh\": 206.0, \"ch\":296.86373901367}, \"coords\":{\"y\":-336.54,\"z\":37.78,\"h\":300.07,\"x\":-1210.74}}', '{\"door\":{\"coords\":{\"x\":-1207.3282470703,\"y\":-335.12893676758,\"z\":38.079254150391}, \"hash\":-1591004109, \"oh\": 116.0, \"ch\":206.86373901367}, \"coords\":{\"y\":-335.44,\"z\":37.76,\"h\":208.27,\"x\":-1209.54}}', NULL, '[{\"y\":-333.94,\"z\":37.76,\"h\":18.13,\"x\":-1210.35},{\"y\":-333.27,\"z\":37.76,\"h\":17.2,\"x\":-1208.9},{\"y\":-333.75,\"z\":37.76,\"h\":297.68,\"x\":-1207.46}]', '[{\"y\":-338.26,\"z\":37.76,\"h\":116.27,\"x\":-1209.09},{\"y\":-339.5,\"z\":37.76,\"h\":209.88,\"x\":-1207.77},{\"y\":-338.33,\"z\":37.76,\"h\":206.97,\"x\":-1205.55},{\"y\":-336.61,\"z\":37.76,\"h\":293.18,\"x\":-1205.48}]', 1, 0, 'Small', NULL),
(5, 'Fleeca 5', '{\"y\":482.81,\"z\":15.7,\"h\":263.13,\"x\":-2963.45}', '{\"door\":{\"outside\":{\"y\":478.74,\"z\":15.7,\"h\":2.36,\"x\":-2960.71},\"coords\":{\"x\":-2960.1762695313,\"y\":479.0104675293,\"z\":15.971563339233}, \"hash\":-131754413, \"oh\":267.0 , \"ch\":357.54205322266}, \"counters\":[{\"y\":480.22,\"z\":15.7,\"h\":102.5,\"x\":-2961.21},{\"y\":481.59,\"z\":15.7,\"h\":80.38,\"x\":-2961.19},{\"y\":483.14,\"z\":15.7,\"h\":89.06,\"x\":-2961.07},{\"y\":484.51,\"z\":15.7,\"h\":89.16,\"x\":-2961.09}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":-2957.353,\"y\":483.2,\"z\":15.75},\"drip\":{\"y\":481.9,\"z\":15.7,\"h\":292.56,\"x\":-2957.33},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-180.0,\"z\":0.0},\"offset\":{\"x\":-0.0495,\"y\":0.22525,\"z\":0.15}},\"heading\":355.0},\"coords\":{\"x\":-2958.5385742188,\"y\":482.27056884766,\"z\":15.83594417572}, \"hash\":-63539571, \"oh\": 267.0, \"ch\":357.54205322266}, \"coords\":{\"y\":481.7,\"z\":15.7,\"h\":4.28,\"x\":-2956.5}}', '{\"door\":{\"coords\":{\"x\":-2956.1162109375,\"y\":485.42059326172,\"z\":15.995308876038}, \"hash\":-1591004109, \"oh\": 197.0, \"ch\":267.54205322266}, \"coords\":{\"y\":483.33,\"z\":15.68,\"h\":273.76,\"x\":-2956.87}}', NULL, '[{\"y\":483.36,\"z\":15.68,\"h\":88.47,\"x\":-2958.6},{\"y\":485.0,\"z\":15.68,\"h\":84.28,\"x\":-2958.44},{\"y\":485.96,\"z\":15.68,\"h\":359.14,\"x\":-2957.34}]', '[{\"y\":482.38,\"z\":15.68,\"h\":177.51,\"x\":-2954.18},{\"y\":483.4,\"z\":15.68,\"h\":269.76,\"x\":-2952.52},{\"y\":485.46,\"z\":15.68,\"h\":265.06,\"x\":-2952.43},{\"y\":486.28,\"z\":15.68,\"h\":350.95,\"x\":-2954.08}]', 1, 0, 'Small', NULL),
(6, 'Fleeca 6', '{\"y\":2706.07,\"z\":38.09,\"h\":3.7,\"x\":1175.15}', '{\"door\":{\"outside\":{\"y\":2708.92,\"z\":38.09,\"h\":93.29,\"x\":1179.26},\"coords\":{\"x\":1178.8695068359,\"y\":2709.3647460938,\"z\":38.362506866455}, \"hash\":-131754413, \"oh\":0.1 , \"ch\":90.0}, \"counters\":[{\"y\":2708.25,\"z\":38.09,\"h\":173.3,\"x\":1177.77},{\"y\":2708.23,\"z\":38.09,\"h\":181.91,\"x\":1176.23},{\"y\":2708.24,\"z\":38.09,\"h\":187.4,\"x\":1174.81},{\"y\":2708.21,\"z\":38.09,\"h\":183.0,\"x\":1173.38}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":1175.66,\"y\":2713.025,\"z\":38.19},\"drip\":{\"y\":2712.09,\"z\":38.09,\"h\":92.71,\"x\":1175.86},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-270.0,\"z\":0.0},\"offset\":{\"x\":-0.2195,\"y\":-0.05925,\"z\":0.13}},\"heading\":90.0},\"coords\":{\"x\":1175.5421142578,\"y\":2710.861328125,\"z\":38.226890563965}, \"hash\":2121050683, \"oh\": 0.1, \"ch\":90.0}, \"coords\":{\"y\":2712.88,\"z\":38.09,\"h\":97.27,\"x\":1175.97}}', '{\"door\":{\"coords\":{\"x\":1172.2911376953,\"y\":2713.1462402344,\"z\":38.386253356934}, \"hash\":-1591004109, \"oh\": 289.0, \"ch\":359.0}, \"coords\":{\"y\":2712.49,\"z\":38.07,\"h\":2.81,\"x\":1174.41}}', NULL, '[{\"y\":2710.82,\"z\":38.07,\"h\":183.46,\"x\":1174.3},{\"y\":2710.73,\"z\":38.07,\"h\":186.75,\"x\":1172.99},{\"y\":2711.95,\"z\":38.07,\"h\":90.38,\"x\":1171.78}]', '[{\"y\":2715.16,\"z\":38.07,\"h\":271.11,\"x\":1175.2},{\"y\":2716.82,\"z\":38.07,\"h\":356.82,\"x\":1174.22}{\"y\":2716.82,\"z\":38.07,\"h\":356.82,\"x\":1174.22},{\"y\":2716.79,\"z\":38.07,\"h\":1.54,\"x\":1172.25},{\"y\":2715.23,\"z\":38.07,\"h\":99.02,\"x\":1171.22}]', 1, 0, 'Small', NULL),
(7, 'Fleeca 7', '{\"y\":4850.56,\"z\":41.99,\"h\":96.41,\"x\":1653.78}', '{\"door\":{\"outside\":{\"y\":4854.28,\"z\":41.98,\"h\":186.04,\"x\":1650.66},\"coords\":{\"x\":1650.2530517578,\"y\":4853.880859375,\"z\":42.258907318115}, \"hash\":-131754413, \"oh\":97.0 , \"ch\":187.12115478516}, \"counters\":[{\"y\":4852.91,\"z\":41.98,\"h\":279.48,\"x\":1651.52},{\"y\":4851.56,\"z\":41.98,\"h\":273.93,\"x\":1651.71},{\"y\":4849.95,\"z\":41.98,\"h\":273.74,\"x\":1651.9},{\"y\":4848.58,\"z\":41.98,\"h\":277.28,\"x\":1652.07}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":1648.05,\"y\":4851.246,\"z\":42.08},\"drip\":{\"y\":4850.56,\"z\":41.98,\"h\":184.07,\"x\":1647.94},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-8.0,\"z\":0.0},\"offset\":{\"x\":0.06195,\"y\":-0.1995,\"z\":0.165}},\"heading\":190.0},\"coords\":{\"x\":1649.1805419922,\"y\":4850.3935546875,\"z\":42.123291015625}, \"hash\":2121050683, \"oh\": 97.0, \"ch\":187.12115478516}, \"coords\":{\"y\":4850.58,\"z\":41.98,\"h\":191.07,\"x\":1647.15}}', '{\"door\":{\"coords\":{\"x\":1647.3162841797,\"y\":4846.884765625,\"z\":42.282653808594}, \"hash\":-1591004109, \"oh\": 27.0, \"ch\":97.121147155762}, \"coords\":{\"y\":4849.02,\"z\":41.98,\"h\":90.35,\"x\":1647.73}}', NULL, '[{\"y\":4849.28,\"z\":41.97,\"h\":280.18,\"x\":1649.46},{\"y\":4847.74,\"z\":41.98,\"h\":277.31,\"x\":1649.65},{\"y\":4846.53,\"z\":41.98,\"h\":188.45,\"x\":1648.59}]', '[{\"y\":4849.6,\"z\":41.99,\"h\":6.09,\"x\":1644.94},{\"y\":4848.28,\"z\":42.01,\"h\":91.9,\"x\":1643.45},{\"y\":4846.57,\"z\":42.01,\"h\":93.97,\"x\":1643.63},{\"y\":4845.58,\"z\":42.0,\"h\":180.27,\"x\":1645.42}]', 1, 0, 'Small', NULL),
(8, 'Fleeca 8', '{\"h\":59.7,\"x\":-1074.67,\"y\":-2559.01,\"z\":13.97}', '{\"door\":{\"outside\":{\"h\":145.31,\"x\":-1075.26,\"y\":-2553.99,\"z\":13.96},\"coords\":{\"x\":-1075.8262939453,\"y\":-2554.0134277344,\"z\":14.236138343811}, \"hash\":-131754413, \"oh\":60.0 , \"ch\":149.57022094727}, \"counters\":[{\"h\":235.9,\"x\":-1075.47,\"y\":-2555.55,\"z\":13.96},{\"h\":246.14,\"x\":-1076.13,\"y\":-2556.79,\"z\":13.96},{\"h\":237.63,\"x\":-1076.95,\"y\":-2558.12,\"z\":13.96},{\"h\":245.43,\"x\":-1077.62,\"y\":-2559.35,\"z\":13.96}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":-1079.75,\"y\":-2554.45,\"z\":14.06},\"drip\":{\"h\":148.19,\"x\":-1079.7,\"y\":-2555.2,\"z\":13.96},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":30.0,\"z\":0.0},\"offset\":{\"x\":-0.070795,\"y\":-0.270195,\"z\":0.15}},\"heading\":150.0},\"coords\":{\"x\":-1078.8018798828,\"y\":-2556.1247558594,\"z\":14.100519180298}, \"hash\":2121050683, \"oh\": 60.0, \"ch\":149.57022094727}, \"coords\":{\"h\":160.61,\"x\":-1080.29,\"y\":-2554.64,\"z\":13.96}}', '{\"door\":{\"coords\":{\"x\":-1082.4187011719,\"y\":-2557.7705078125,\"z\":14.259883880615}, \"hash\":-1591004109, \"oh\": 0.1, \"ch\":59.57022857666}, \"coords\":{\"h\":59.56,\"x\":-1080.8,\"y\":-2556.32,\"z\":13.94}}', NULL, '[{\"h\":247.53,\"x\":-1079.19,\"y\":-2557.06,\"z\":13.94},{\"h\":247.92,\"x\":-1080.04,\"y\":-2558.5,\"z\":13.94},{\"h\":156.79,\"x\":-1081.64,\"y\":-2558.82,\"z\":13.94}]', '[{\"h\":335.51,\"x\":-1082.55,\"y\":-2554.26,\"z\":13.94},{\"h\":55.25,\"x\":-1084.62,\"y\":-2554.28,\"z\":13.94},{\"h\":53.21,\"x\":-1085.58,\"y\":-2555.85,\"z\":13.94},{\"h\":148.34,\"x\":-1084.78,\"y\":-2557.63,\"z\":13.94}]', 1, 0, 'Small', NULL),
(9, 'Paleto', '{\"x\":-112.22,\"h\":314.95,\"z\":31.63,\"y\":6468.92}', '{\"door\":{\"outside\":{\"y\":6468.29,\"z\":31.63,\"h\":41.06,\"x\":-108.89},\"reverse\":1,\"coords\":{\"x\":-108.91468811035,\"y\":6469.1049804688,\"z\":31.910284042358}, \"hash\":-1184592117, \"oh\":325.0 , \"ch\":44.863204956055}, \"counters\":[{\"y\":6468.99,\"z\":31.63,\"h\":136.44,\"x\":-110.22},{\"y\":6470.04,\"z\":31.63,\"h\":134.15,\"x\":-111.27},{\"y\":6471.14,\"z\":31.63,\"h\":134.03,\"x\":-112.28},{\"y\":6472.25,\"z\":31.63,\"h\":132.97,\"x\":-113.35}]}', '{\"door\":{\"coords\":{\"x\":-104.60489654541,\"y\":6473.4438476563,\"z\":31.795324325562,\"h\":150.00003051758},\"hash\":-1185205679,\"ch\":45.0,\"oh\":150.00003051758},\"coords\":{\"y\":6471.9,\"z\":31.63,\"h\":40.24,\"x\":-105.54}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":-105.8085,\"y\":6473.49509,\"z\":31.80},\"drip\":{\"y\":6472.29,\"z\":31.63,\"h\":184.07,\"x\":-105.49},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-225.0,\"z\":0.0},\"offset\":{\"x\":-0.32795,\"y\":0.220195,\"z\": 0.175}},\"heading\":45.0},\"reverse\":1,\"coords\":{\"x\":-104.81363677979,\"y\":6473.646484375,\"z\":31.9547996521}, \"hash\":1622278560, \"oh\": 325.0, \"ch\":45.013021469116}, \"coords\":{\"y\":6472.36,\"z\":31.63,\"h\":37.87,\"x\":-105.43}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":-105.552,\"y\":6476.13,\"z\":31.95},\"drip\":{\"y\":6474.6,\"z\":31.63,\"h\":314.79,\"x\":-105.82},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-135.0,\"z\":0.0},\"offset\":{\"x\":0.26795,\"y\":0.5495,\"z\":0.36}},\"heading\":320.0},\"coords\":{\"x\":-106.47130584717,\"y\":6476.1577148438,\"z\":31.9547996521}, \"hash\":1309269072, \"oh\": 244.0, \"ch\":314.96466064453}, \"coords\":{\"y\":6474.72,\"z\":31.63,\"h\":316.34,\"x\":-105.76}}', NULL, '[{\"y\":6472.92,\"z\":31.63,\"h\":141.47,\"x\":-106.56},{\"y\":6474.14,\"z\":31.63,\"h\":133.41,\"x\":-107.76},{\"y\":6475.82,\"z\":31.63,\"h\":55.73,\"x\":-107.53}]', '[{\"y\":6475.52,\"z\":31.63,\"h\":225.83,\"x\":-102.89},{\"y\":6477.48,\"z\":31.68,\"h\":320.61,\"x\":-102.47},{\"y\":6478.97,\"z\":31.63,\"h\":316.32,\"x\":-103.95},{\"y\":6478.68,\"z\":31.63,\"h\":39.94,\"x\":-105.89}]', 1, 0, 'Paleto', '{\"x\":-113.32,\"h\":316.07,\"z\":31.63,\"y\":6469.96}'),
(10, 'Pacific', '{\"x\":242.1,\"y\":224.44,\"z\":106.29,\"h\":336.9}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":257.457,\"y\":221.105,\"z\":106.39},\"drip\":{\"x\":257.27,\"y\":219.8,\"z\":106.29},\"bomb\":{\"rotation\":{\"x\":90.0,\"y\":-20.0,\"z\":0.0},\"offset\":{\"x\":0.135,\"y\":0.385,\"z\":0.15}},\"heading\":339.0},\"outside\":{\"x\":256.79,\"y\":220.03,\"z\":106.29,\"h\":355.46},\"coords\":{\"x\":256.31155395508,\"y\":220.65785217285,\"z\":106.42955780029,\"h\":340.00003051758},\"hash\":-222270721,\"ch\":-19.999971389771,\"oh\":70.0},\"coords\":{\"x\":256.79,\"y\":220.03,\"z\":106.29,\"h\":355.46}}', '{\"door\":{\"coords\":{\"x\":262.19808959961,\"y\":222.51881408691,\"z\":106.42955780029,\"h\":256.77621459961},\"hash\":746855201,\"ch\":-110.22378540039,\"oh\":-20.0},\"coords\":{\"x\":261.95,\"y\":223.1,\"z\":106.28,\"h\":241.67}}', '{\"door\":{\"coords\":{\"x\":255.22825622559,\"y\":223.97601318359,\"z\":102.39321899414,\"h\":160.17094421387},\"hash\":961976194,\"ch\":160.17094421387,\"oh\":70.0},\"coords\":{\"x\":253.29,\"y\":228.46,\"z\":101.68,\"h\":65.44}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":252.99,\"y\":221.75,\"z\":101.78},\"drip\":{\"x\":253.0,\"y\":220.97,\"z\":101.68},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":20.0,\"z\":0.0},\"offset\":{\"x\":-0.005,\"y\":-0.255,\"z\":0.15}},\"heading\":161.0},\"coords\":{\"x\":251.85757446289,\"y\":221.06549072266,\"z\":101.83240509033,\"h\":160.00001525879},\"hash\":-1508355822,\"ch\":160.00001525879,\"oh\":70.0},\"coords\":{\"x\":252.63,\"y\":221.29,\"z\":101.68,\"h\":156.96}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":261.65,\"y\":216.62,\"z\":101.78},\"drip\":{\"x\":261.4,\"y\":215.67,\"z\":101.68},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-70.0,\"z\": 0.0},\"offset\":{\"x\":0.25,\"y\":-0.0325,\"z\":0.15}},\"heading\":250.0},\"reverse\":-1,\"coords\":{\"x\":261.30041503906,\"y\":214.50514221191,\"z\":101.83240509033,\"h\":250.17224121094},\"hash\":-1508355822,\"ch\":-109.82776641846,\"oh\":170.0},\"coords\":{\"x\":261.12,\"y\":215.24,\"z\":101.68,\"h\":252.85},\"coords\":{\"x\":261.06,\"y\":215.22,\"z\":101.68,\"h\":247.37}}', '[{\"x\":258.16,\"y\":218.56,\"z\":101.68,\"h\":341.82},{\"x\":259.71,\"y\":218.03,\"z\":101.68,\"h\":359.39},{\"x\":261.44,\"y\":217.41,\"z\":101.68,\"h\":0.29},{\"x\":259.99,\"y\":213.48,\"z\":101.68,\"h\":159.81},{\"x\":258.27,\"y\":214.1,\"z\":101.68,\"h\":167.51},{\"x\":256.48,\"y\":214.76,\"z\":101.68,\"h\":169.49}]', '[{\"x\":263.19,\"y\":212.32,\"z\":101.68,\"h\":164.78},{\"x\":266.09,\"y\":213.42,\"z\":101.68,\"h\":275.82},{\"x\":264.66,\"y\":216.23,\"z\":101.68,\"h\":357.47}]', 1, 0, 'Big', NULL);

CREATE TABLE `bank_accounts` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(250) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `amount` bigint(255) NOT NULL DEFAULT 0,
  `account_type` enum('Current','Savings','Buisness','Gang') NOT NULL DEFAULT 'Current'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bank_statements` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `buisness` varchar(50) DEFAULT NULL,
  `buisnessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `deposited` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `companies` (
  `name` tinytext DEFAULT NULL,
  `label` tinytext DEFAULT NULL,
  `owner` tinytext DEFAULT NULL,
  `employees` tinytext DEFAULT NULL,
  `money` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) NULL DEFAULT NULL,
  `keybind1` varchar(50) NULL DEFAULT "num4",
  `emote1` varchar(255) NULL DEFAULT "",
  `keybind2` varchar(50) NULL DEFAULT "num5",
  `emote2` varchar(255) NULL DEFAULT "",
  `keybind3` varchar(50) NULL DEFAULT "num6",
  `emote3` varchar(255) NULL DEFAULT "",
  `keybind4` varchar(50) NULL DEFAULT "num7",
  `emote4` varchar(255) NULL DEFAULT "",
  `keybind5` varchar(50) NULL DEFAULT "num8",
  `emote5` varchar(255) NULL DEFAULT "",
  `keybind6` varchar(50) NULL DEFAULT "num9",
  `emote6` varchar(255) NULL DEFAULT ""
) ENGINE=InnoDB COLLATE=latin1_swedish_ci;

CREATE TABLE `player_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` varchar(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,
	`bail` bit DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `vehicle_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`plate` varchar(255) DEFAULT NULL,
	`stolen` bit DEFAULT 0,
	`notes` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `player_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` varchar(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	
	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` varchar(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `charges` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`char_id` varchar(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `jailtime` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
	(1, 'Assassination', 0, 0, 0),
	(2, 'Racketeering/RICO', 0, 0, 0),
	(3, 'Treason', 0, 0, 0),
	(4, 'Terrorism', 0, 0, 0),
	(5, 'Murder of a Government Official', 1500, 0, 60),
	(6, 'Attempted Murder of a Government Official', 500, 0, 20),
	(7, 'Assault on a Government Official', 250, 0, 10),
	(8, 'Impersonation of a Government Official', 200, 0, 5),
	(9, 'Possession of Government Property', 200, 0, 5),
	(10, 'Aggravated Armed Robbery', 300, 0, 10),
	(11, 'Armed Robbery', 200, 0, 5),
	(12, 'Felony Murder', 1000, 0, 45),
	(13, 'Attempted Murder', 250, 0, 5),
	(14, 'Torture', 150, 0, 5),
	(15, 'Manslaughter', 750, 0, 30),
	(16, 'Kidnapping', 100, 0, 5),
	(17, 'Attempted Kidnapping', 50, 0, 5),
	(18, 'Assault with a Deadly Weapon', 200, 0, 10),
	(19, 'Attempted/Unarmed Robbery', 100, 0, 5),
	(20, 'Grand Theft Auto', 250, 0, 5),
	(21, 'Theft of a Motor Vehicle', 125, 0, 5),
	(22, 'Hit and Run w/ Injuries', 150, 0, 5),
	(23, 'Felony Evading/Eluding an LEO', 200, 0, 5),
	(24, 'Felony Speeding/Reckless Driving', 150, 0, 5),
	(25, 'Harboring a Fugitive', 300, 0, 5),
	(26, 'Escaping Police Custody', 100, 0, 5),
	(27, 'Criminal Threats', 75, 0, 5),
	(28, 'Arson', 100, 0, 5),
	(29, 'Weapons Stockpiling/Trafficking/Sales', 1000, 0, 15),
	(30, 'Possession of Burglary Tools', 150, 0, 5),
	(31, 'Possession of a Class III Weapon', 1000, 0, 15),
	(32, 'Possession of a Class II Weapon', 500, 0, 10),
	(33, 'Criminal Possession of a Class I Firearm', 250, 0, 10),
	(34, 'Possession of illegal gun modifications', 250, 0, 5),
	(35, 'Possession of Dirty Money', 100, 0, 5),
	(36, 'Drug Cultivation/Manufacturing', 300, 0, 5),
	(37, 'Poss. of a CDS Schedule I w/ Intent to Sell', 300, 0, 5),
	(38, 'Poss. of a CDS Schedule II w/ Intent to Sell', 600, 0, 10),
	(39, 'Poss. of a CDS Schedule III w/ Intent to Sell', 1000, 0, 15),
	(40, 'Stalking', 100, 0, 5),
	(41, 'Perjury', 150, 0, 5),
	(42, 'Fraud', 150, 0, 5),
	(43, 'Extortion', 150, 0, 5),
	(44, 'Bribery', 150, 0, 5),
	(45, 'Felonious Trespassing', 500, 0, 10),
	(46, 'Burglary', 200, 0, 5),
	(47, 'Brandishing a Firearm', 150, 0, 0),
	(48, 'Negligent Discharge  of a Firearm', 150, 0, 0),
	(49, 'Failure to Inform LEO', 100, 0, 0),
	(50, 'Failure to Identify', 100, 0, 0),
	(51, 'Reckless Endangerment', 100, 0, 5),
	(52, 'Assault', 150, 0, 5),
	(53, 'Criminal Threats', 75, 0, 0),
	(54, 'Contempt of Court', 150, 0, 5),
	(55, 'Obstruction of Justice', 100, 0, 3),
	(56, 'Vandalism/Destruction of Property', 150, 0, 0),
	(57, 'Public Intoxication', 50, 0, 0),
	(58, 'Resisting Arrest', 100, 0, 5),
	(59, 'Disorderly Conduct/Disturbing the Peace', 100, 0, 0),
	(60, 'Harassment', 50, 0, 0),
	(61, 'Defmation/Slander', 50, 0, 0),
	(62, 'Loitering', 50, 0, 0),
	(63, 'Jay Walking', 50, 0, 0),
	(64, 'Reckless Driving', 100, 0, 5),
	(65, 'Attempted Grand Theft Auto', 150, 0, 5),
	(66, 'Driving While Intoxicated', 150, 0, 5),
	(67, 'Driving w/ out a License', 200, 0, 3),
	(68, 'Participation in a non sanction street race', 400, 0, 5),
	(69, 'Joyriding', 250, 0, 5),
	(70, 'Illegal Vehicle Modifications', 1000, 0, 0),
	(71, 'Evading Arrest ( Foot )', 200, 0, 5),
	(72, 'Money Laundering', 200, 0, 5),
	(73, 'Illegal Gambling', 200, 0, 5),
	(74, 'False Identification', 250, 0, 5),
	(75, 'Failure to Comply with a Court Order', 0, 0, 0),
	(76, 'Failure to Obey a Lawful Order', 250, 0, 5),
	(77, 'Misuse/Abuse of 911', 250, 0, 5),
	(78, 'False Statements ', 250, 0, 5),
	(79, 'Breaking and Entering', 750, 0, 0),
	(80, 'Trespassing', 250, 0, 5),
	(81, 'Poss. Illegal Contraband', 750, 0, 5),
	(82, 'Conspiracy to Commit a Misdemeanor', 750, 0, 5),
	(83, 'Indecent Exposure', 250, 0, 0),
	(84, 'Act of Sexual Intercourse in Public', 500, 0, 0),
	(85, 'Failure to Stop', 150, 0, 0),
	(86, 'General Speeding', 150, 0, 0),
	(87, 'Speeding 15 MPH Over', 250, 0, 0),
	(88, 'Speeding 30 MPH Over', 500, 0, 0),
	(89, 'Unroadworthy Vehicle', 250, 0, 0),
	(90, 'Careless Driving', 500, 0, 0),
	(91, 'Illegal U-Turn', 150, 0, 0),
	(92, 'Illegal Window TInt', 300, 0, 0),
	(93, 'Failure to Yield to Emergency Services', 250, 0, 0),
	(94, 'Failure to Give Right of Way', 250, 0, 0),
	(95, 'Light Law Violation', 250, 0, 0),
	(96, 'Parking Violation', 150, 0, 0),
	(97, 'Improper/Unsafe Turn', 150, 0, 0),
	(98, 'Improper/Missing Plate', 100, 0, 0),
	(99, 'Wrong Way of Travel', 250, 0, 0),
	(100, 'Improper/Illegal Passing', 150, 0, 0),
	(101, 'Failure to Maintain Lane', 150, 0, 0),
	(102, 'Illegal Use of Sirens/ELS', 300, 0, 0),
	(103, 'Obstructing/Impeding', 250, 0, 0),
	(104, 'Possession of Stolen Property', 150, 0, 3);
