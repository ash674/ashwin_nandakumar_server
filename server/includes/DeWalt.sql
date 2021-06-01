-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2021 at 10:31 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(2000) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `Name`) VALUES
(5, 'drill'),
(6, 'grinder'),
(7, 'kit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `productName` varchar(2000) NOT NULL,
  `productDesc` varchar(5000) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `ProductImage` varchar(2000) NOT NULL,
  `productVideo` varchar(2000) NOT NULL,
  `categoryId` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkey` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productDesc`, `productPrice`, `ProductImage`, `productVideo`, `categoryId`) VALUES
(1, '20-Volt MAX Brushless Cordless', 'Up to 42% more power** when paired with FLEXVOLT® batteries Compatible with all DEWALT® 20V MAX* and FLEXVOLT® Batteries GREAT BIT GRIP: Heavy-duty 1/2 in. ratcheting nitro-carburized metal chuck with carbide inserts for superior bit gripping strength20X BRIGHTER LED: 3-mode LED provides lighting in dark or confined spaces up to 20x brighter than the DEWALT® DCD985EXTENDED WORK TIME WITH LED: Spotlight mode features 20-minute shutoff function, allowing for extended work time in dark or confined spaces Tool Connect™ Chip Ready: Chip pocket accepts Tool Connect™ Chip DCE042 and connects with Tool Connect™ Site Manager app for easy asset management on the jobsite. (DCE042 sold separately)OPTIMIZE TOOL to task with 3-speed transmission', 179, 'atomic_20v_max.jpg', 'vid_1.mp4', 5),
(4, '20V MAX* XR® BRUSHLESS 1/2 IN', 'Brushless motor delivers up to 57% more runtime over brushed High-speed transmission with two speed settings (0-550/0-2,000 rpm)LED spotlight mode features 20-minute shutoff function, allowing for extended worktime in dark or confined spaces Compact (7-1/2 in. front to back), lightweight (2.7 lbs.) design fits into tight areas3-mode LED provides lighting in dark spaces', 200, '18v_compact_drill.jpg', 'vid_2.mp4', 5),
(5, 'ATOMIC 20V MAX* 1/2 IN. CORDLESS', 'Hammer functionality enables users to complete masonry drilling applications. Compact at only 6.9 in. front to back. Designed to fit in tight spaces. Lightweight at only 2.5 lbs. LED foot light for superior visibility .Variable-speed trigger allows for control and precision on delicate work surfaces. Brushless motor for efficient performance and runtime.1/2 in. ratcheting chuck provides superior gripping strength .340 UWO of power to help get the job done.', 199, 'vid_3.jpg', 'screeGauage.mp4', 5),
(6, 'XTREME 12V MAX* BRUSHLESS 3/8 IN. CORDLESS HAMMER DRILL', 'DEWALT built brushless motor for efficient performance and runtime3/8 in. ratcheting chuck for a wide variety of bits2-Speed transmission and 15 clutch settings for a variety of applications LED foot light for superior visibility Lightweight at only 2.3 lbs. (Tool Only)Compact at only 6.6 in. front to back', 99, 'xtreme_12v_max.jpg', 'vid_4.mp4', 5),
(7, 'XTREME™ 12V MAX* BRUSHLESS 3/8 IN.', '32% more power**20% shorter**Brushless motor for maximum runtime and durability3/8 in. ratcheting chuck for a wide variety of bits2-speed transmission and 15 clutch settings for a variety of applications LED foot light for superior visibility Lightweight at 1.9 lbs. (tool only)', 200, 'power_detect_drill.jpg', 'vid_5.mp4', 5),
(8, '4-1/2 IN. - 5 IN. HIGH PERFORMANCE TRIGGER GRIP GRINDER', 'The DWE43113 4-1/2 in. - / 5 in. High Performance Grinder w/ Trigger Grip is powered by a 13 Amp motor and equipped with the Dust Ejection System™ technology designed to protect the tool from damaging dust and debris that enters through air intake vents.', 129, '2.7hp_grinder.jpg', 'vid_6.mp4', 6),
(9, '5 IN. 20V MAX* XR® FLATHEAD PADDLE SWITCH SMALL ANGLE GRINDER', 'Brushless motor requires no brush changes. Kickback Brake engages when a pinch, stall, or bind-up event is sensed and the electronic brake engages with maximum force to quickly stop the wheel, reduce the movement of the grinder and shut the grinder off. POWER-LOSS RESET® - The ON/OFF trigger switch has a no-volt release function. In the event of a power outage or other unexpected shut down, the trigger switch will need to be cycled (turned off and then on) to restart tool. Two stage trigger requires two actions to activate tool.', 279, '11_amp_grinder.jpg', 'vid_7.mp4', 6),
(10, '20V MAX* XR® 4.5 IN. PADDLE SWITCH SMALL ANGLE GRINDER', 'Brushless motor requires no brush changes. Brake stops wheel in 2 seconds or less on average Kickback Brake engages when a pinch, stall, or bind-up event is sensed and the electronic brake engages with maximum force to quickly stop the wheel, reduce the movement of the grinder and shut the grinder off. Features E-Switch Protection™ - When the ON/OFF trigger switch has a no-volt release function. In the event of a power outage or other unexpected shut down, the trigger switch will need to be cycled (turned off and then on) to restart tool. Two stage trigger requires two actions to activate tool.', 199, '12in_small_angle_grinder.jpg', 'vid_8.mp4', 6),
(11, '7 IN. (180MM) MEDIUM ANGLE GRINDER', '13 Amp motor8,500 RPM Guard can be adjusted to redirect sparks away from user Single-wrench wheel changes with spindle-lock button Runs off of AC/DC power. The 7 in. Medium Angle Grinder features a 13 Amp motor, delivering 2,250 MWO and 8,000 RPM for a variety of metal grinding and cutting applicatons.', 99, 'small_angle_grinder.jpg', 'vid_9.mp4', 6),
(12, 'ANGLE DIE GRINDER', 'The 1/4\\\" Angle Die Grinder features a lightweight aluminum body with an ergonomically designed cushion grip for user comfort. It features a touch control trigger with a self-locking throttle to provide protection from accidental start ups.20000 RPM (Free Speed @90PSI) for heavy duty applications. Rear Air Exhaust helps blow exhaust away from work surface. Touch Control Trigger allows user to apply needed amount of power', 300, 'paddle_small_angle_grinder.jpg', 'vid_10.mp4', 6),
(13, '20V MAX* BRUSHLESS 1-1/2 IN. VARIABLE SPEED CORDLESS DIE GRINDER KIT', 'The 20V MAX* Cordless Die Grinder delivers 500 MWO with the brushless motor and uses the same battery and charger as your other 20V MAX* tools. Perform a variety of grinding applications with a variable speed range of up to 25,000 RPM. For ease of use, the handle can be grasped multiple ways with the dual-position rocker switch. DEWALT built brushless motor for efficient performance and runtime. Up to 25,000 RPM with variable speed trigger. Illuminate dark work areas with LEDs at the nose of the tool. Multiple handle grasping options with dual-position rocker switch', 200, '20v_max_kit.jpg', 'vid_11.mp4', 7),
(14, 'FLEXVOLT® CORDLESS HAMMERDRILL & IMPACT DRIVER KIT', 'DCD996 20V MAX* 1/2 in. hammer. drill 3-speed, high performance (0-2,000 rpm), all-metal transmission optimizes tool-to-task for fast application speeds and improved run-timeDCD996 20V MAX* 1/2 in. hammer drill 0-38,250 BPM for fast drilling in masonry materialsDCD996 20V MAX* 1/2 in. hammer. drill has a compact size (8.4 in. front-to-back length) and lightweight (4.7 lb) design to fit tight areasDCD996 20V MAX* hammer. drill includes 3-Mode LED providing lighting in dark or confined spaces up to 20X brighter than previous modelDCF887 20V MAX* 1/4 in. impact driver provides 1,825 in-lbs of max torque at fast 0-3,250 RPM speed and 0-3,600 impacts per minuteDCF887 20V MAX* 1/4 in. impact driver has a compact size (5.3 in. front-to-back length) and lightweight (3.4 lbs) design', 399, '18piece_combo_kit.jpg', 'vid_12.mp4', 7),
(15, '20V MAX* 10-TOOL COMBO KIT', 'DCD771 has a high speed transmission that delivers two speeds (0-450 & 1,500 rpm) for a range of fastening and drilling applicationsDCF885 offers 1-handed loading for its 1/4\\\" hex chuck that accepts 1\\\" bit tipsDCS381 with keyless blade clamp allows for quick blade change without touching blade or reciprocating shaft.DCL040 is a bright flashlight to illuminate your work area with LED output of 110 lumens.DCE100 has Max Air Flow of 100CFMDCS393 with 6-1/2\\\" carbide blade can cut 2x4\\\'s at a 45-degree angle in a single passDCR006 runs off DEWALT® 12V/20V MAX* battery packs and has Bluetooth 4.0DCG412 has an 8,000 rpm motor that provides high power for cutting and grinding applicationsDCS355 has a Quick-Change™ accessory system that allows blades and attachments to be changed quickly without wrenches', 849, '20v_max_premium_kit.jpg', 'vid_13.mp4', 7),
(16, '20V MAX* CORDLESS BRUSHLESS XR® HAMMERDRILL & IMPACT DRIVER COMBO KIT', 'DCD996 20V MAX* 1/2\\\" hammer drill 3-speed, high performance (0-2,250 rpm), all-metal transmission optimizes tool-to-task for fast application speeds and improved run-timeDCD996 20V MAX* 1/2\\\" hammer drill 0-38,250 BPM for fast drilling in masonry materialsDCD996 20V MAX* 1/2\\\" hammer drill has a compact size (8.4\\\" front-to-back length) and lightweight (4.7 lbs) design to fit tight areasDCD996 20V MAX* hammer drill includes 3-Mode LED providing lighting in dark or confined spaces up to 20X brighter than previous modelDCF887 20V MAX* 1/4\\\" impact driver provides 1,825 in-lbs of max torque at fast 0-3,250 RPM speed and 0-3,600 impacts per minuteDCF887 20V MAX* 1/4\\\" impact driver has a compact size (5.3\\\" front-to-back length) and lightweight (3.4 lbs) design', 399, 'brushless_3tool_kit.jpg', 'vid_14.mp4', 7),
(17, 'ATOMIC 20V MAX* BRUSHLESS CORDLESS 2-TOOL COMBO KIT', 'DCD708 - Compact at only 6.3 in. front to back designed to fit in tight spacesDCD708 - Lightweight at only 2.4 lbs.DCD708 - LED foot light for superior visibilityDCD708 - Variable speed trigger allows for control and precision on delicate work surfaces. DEWALT built brushless motor for efficient performance and runtimeDCD708 - 1/2 in. ratcheting chuck provides superior bit girpping strengthDCD708 - 340 UWO of power to help get the job doneDCF809 - Only 5.1 in. in length to fit in tight spacesDCF809 - 1700 in-lbs of torque delivering the power you need to get a majority of applications doneDCF809 - Variable speed trigger allows for control and precision on delicate work surfacesDCF809 - 3 bright LEDs for dimly lit workspaces', 229, 'xr_li-ion_compact_drill_kit.jpg', 'vid_15.mp4', 7);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fkey` FOREIGN KEY (`categoryId`) REFERENCES `category` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
