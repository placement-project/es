-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2016 at 03:56 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enable_supplies_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_dept`
--

DROP TABLE IF EXISTS `accounts_dept`;
CREATE TABLE IF NOT EXISTS `accounts_dept` (
  `accountid` int(12) NOT NULL,
  `email1` varchar(45) DEFAULT NULL,
  `email2` varchar(45) DEFAULT NULL,
  `email3` varchar(45) DEFAULT NULL,
  `phone_num1` int(12) DEFAULT NULL,
  `phone_num2` int(12) DEFAULT NULL,
  `phone_num3` int(12) DEFAULT NULL,
  `mobile_phone_num1` int(12) DEFAULT NULL,
  `mobile_phone_num2` int(12) DEFAULT NULL,
  `mobile_phone_num3` int(12) DEFAULT NULL,
  `address_line1` varchar(35) DEFAULT NULL,
  `address_line2` varchar(35) DEFAULT NULL,
  `address_line3` varchar(35) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `country` varchar(28) DEFAULT NULL,
  `pref_contact_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_dept`
--

DROP TABLE IF EXISTS `admin_dept`;
CREATE TABLE IF NOT EXISTS `admin_dept` (
  `adminid` int(12) NOT NULL,
  `email1` varchar(35) DEFAULT NULL,
  `email2` varchar(35) DEFAULT NULL,
  `email3` varchar(35) DEFAULT NULL,
  `phone_num1` int(12) DEFAULT NULL,
  `phone_num2` int(12) DEFAULT NULL,
  `phone_num3` int(12) DEFAULT NULL,
  `mobile_phone_num1` int(12) DEFAULT NULL,
  `mobile_phone_num2` int(12) DEFAULT NULL,
  `mobile_phone_num3` int(12) DEFAULT NULL,
  `address_line1` varchar(35) DEFAULT NULL,
  `address_line2` varchar(35) DEFAULT NULL,
  `address_line3` varchar(35) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `country` varchar(28) DEFAULT NULL,
  `pref_contact_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assigned`
--

DROP TABLE IF EXISTS `assigned`;
CREATE TABLE IF NOT EXISTS `assigned` (
  `userid` varchar(20) NOT NULL,
  `jobid` int(12) NOT NULL,
  `assignment_date` date NOT NULL,
  KEY `userid` (`userid`),
  KEY `jobid` (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clinical_dept`
--

DROP TABLE IF EXISTS `clinical_dept`;
CREATE TABLE IF NOT EXISTS `clinical_dept` (
  `clinicalid` int(12) NOT NULL,
  `email1` varchar(35) DEFAULT NULL,
  `email2` varchar(35) DEFAULT NULL,
  `email3` varchar(35) DEFAULT NULL,
  `phone_num1` int(12) DEFAULT NULL,
  `phone_num2` int(12) DEFAULT NULL,
  `phone_num3` int(12) DEFAULT NULL,
  `mobile_phone_num1` int(12) DEFAULT NULL,
  `mobile_phone_num2` int(12) DEFAULT NULL,
  `mobile_phone_num3` int(12) DEFAULT NULL,
  `address_line1` varchar(35) DEFAULT NULL,
  `address_line2` varchar(35) DEFAULT NULL,
  `address_line3` varchar(35) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `country` varchar(28) DEFAULT NULL,
  `pref_contact_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`clinicalid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `companyid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone_num` bigint(15) DEFAULT NULL,
  `mobile_phone_num` bigint(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` bigint(15) DEFAULT NULL,
  `address_line1` varchar(45) DEFAULT NULL,
  `address_line2` varchar(35) DEFAULT NULL,
  `address_line3` varchar(35) DEFAULT NULL,
  `address_line4` varchar(35) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `country` varchar(28) DEFAULT NULL,
  `contract_type` varchar(20) DEFAULT NULL,
  `business_type` varchar(25) DEFAULT NULL,
  `contract_renewal_date` date DEFAULT NULL,
  `trade` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=2351 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyid`, `name`, `phone_num`, `mobile_phone_num`, `email`, `fax`, `address_line1`, `address_line2`, `address_line3`, `address_line4`, `county`, `country`, `contract_type`, `business_type`, `contract_renewal_date`, `trade`) VALUES
(1, 'aras mhuire nursing unit', 6821470, NULL, 'amnh@eircom.net', NULL, '7 dublin road', 'pallative care 12b', '', 'tuam', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(2, 'adult centre', 2893323677, NULL, '', NULL, '72 ballymena road', 'bt40 2sg', '', 'larne', 'antrim', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(3, 'advance maintenance ltd', NULL, NULL, '', NULL, 'mirabell', 'dunkathel', 'glanmire', 'cork', '', 'ireland', '', '', '2000-01-01', 'trade'),
(4, 'aiglish national school', 6721271, NULL, '', NULL, '', '', '', 'nenagh', 'tipperary', 'ireland', '', 'education', '2000-01-01', 'trade'),
(5, 'ailbhe national school', 50421448, NULL, 'reception@scoilailbhe.ie', NULL, '', '', '', 'thurles', 'tipperary', 'ireland', '', '', '2016-01-19', 'trade'),
(6, 'an sli', NULL, NULL, '', NULL, 'bellewsbridge road', 'toberona', '', 'dundalk', 'louth', 'ireland', '', '', '2000-01-01', 'trade'),
(7, 'angle day care center', 749532658, 879263327, '', NULL, 'gweedore rd', '', '', 'dungloe', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(8, 'aquired brain injury ireland', NULL, NULL, 'dtobin@abiireland.ie', NULL, 'teach failte', 'mount bonus', '', 'tullamore', 'offaly', 'ireland', '', '', '2000-01-01', 'trade'),
(9, 'aras an phobail', 872059539, NULL, 'mairead@twrc.ie', NULL, 'croilar an mistealach', 'boherbee', '', 'tralee', 'kerry', 'ireland', '', 'school', '2016-02-02', 'trade'),
(10, 'aras chuchulain', 749157393, NULL, 'mairead@twrc.ie', NULL, 'resource centre', '', '', 'manorcunningham', 'donegal', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(11, 'aras ghaoth dobhair nursing home', 749560624, 876365473, 'efriel@arasgaothdohair.ie', 749560931, 'meenanillar', '', '', 'derrybeg', 'donegal', 'ireland', '', 'nursing home', '2000-01-01', 'trade'),
(12, 'aras mhuire nursing unit', 6821470, NULL, 'amnh@eircom.net', NULL, '7 dublin road', 'pallative care 12a', '', 'tuam', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(13, 'ardfert national school', 667134289, 861607421, 'ardfertns.ias@eircom.net', NULL, '', '', '', 'ardfert', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(14, 'athboy community school', 469487894, NULL, 'aleavy@athboycs.ie', NULL, '', '', '', 'athboy', 'meath', 'ireland', '', '', '2000-01-01', 'trade'),
(15, 'athlone primary care centre', 906424840, NULL, 'annenaughton@hse.ie', NULL, '', '', '', 'athlone', 'westmeath', 'ireland', '', '', '2000-01-01', 'trade'),
(16, 'aura leitrim leisure', 719671771, NULL, 'jscott@auragroup.ie', NULL, 'attfinlay', '', '', 'carrick-on-shannon', 'leitrim', 'ireland', '', '', '2000-01-01', 'trade'),
(17, 'ballinasloe community nursing unit', 91871200, 863816700, 'bernie.austin@hse.ie', NULL, 'assisted bathroom ground floor', '', '', 'ballinasloe', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(18, 'ballinsloe community nursing unit', 91871200, 863816700, 'bernie.austin@hse.ie', NULL, 'room no. 23 ground floor', '', '', 'ballinasloe', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(19, 'balltinglass district hospital', 596481255, NULL, 'carol.gannon@hse.ie', NULL, 'room 157', '', '', 'baltinglass', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(20, 'ballycar national school', NULL, NULL, '', NULL, 'newmarket on fergus', '', '', 'ballycar', 'clare', 'ireland', '', 'education', '2000-01-01', 'trade'),
(21, 'ballyfermot primary health centre', NULL, NULL, '', NULL, 'cherry orchard', '', '', 'ballyfermot', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(22, 'baltinglass district hospital', 596481255, 872040499, 'carol.gannon@hse.ie', NULL, 'baltinglass', 'room 96', '', 'baltinglass', 'wicklow', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(23, 'baltydaniel n.s. mallow', NULL, 872310075, '', NULL, '', '', '', 'newtwopothouse', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(24, 'baltydaniel national school', 2242646, NULL, '', NULL, 'newtwopothouse', '', '', 'mallow', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(25, 'bantry general hospital', NULL, NULL, '', NULL, '', '', '', 'bantry', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(26, 'beara comm. school', 2770177, NULL, 'beara2@eircom.net', NULL, '', '', '', 'castletownbere', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(27, 'beaumont residential care ltd.', 214292195, NULL, '', NULL, 'woodvale rd', 'ballintemple', '', 'cork', 'cork', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(28, 'bedroom', 879907126, NULL, '', NULL, '7 cois carraig', '', '', 'clarina', 'limerick', 'ireland', '', 'private house', '2016-06-29', 'private'),
(29, 'beech haven residential', 539235298, NULL, '', NULL, 'black stopps', '', '', 'enniscorthy', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(30, 'belvilla community unit', NULL, NULL, '', NULL, 'room 15', '129 south circular road', '', 'south circular road', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(31, 'bishop o''brien national school', NULL, NULL, '', NULL, 'bartelmy', '', '', 'fermoy', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(32, 'bonseoviors convent', NULL, NULL, '', NULL, 'st. anne''s', 'carriglea', '', 'dungarvan', 'waterford', 'ireland', '', '', '2000-01-01', 'trade'),
(33, 'borrisokane community college', NULL, NULL, '', NULL, '', '', '', 'borrisokane', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(34, 'bray town council', 12868285, NULL, 'braymd@wicklowcoco.ie', NULL, 'st. rita''s', 'upper dargle road', 'apt 1 green park rd', 'bray', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(35, 'bray urban district council', 12868285, NULL, 'braymd@wicklowcoco.ie', NULL, '37 hazelwood', 'fassnore rd', '', 'bray', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(36, 'breffni care center', 499525520, NULL, 'ann.gaffeny@hse.ie', 499525546, 'community service', 'room 18', '', 'ballyconnell', 'cavan', 'ireland', '', 'care center', '2000-01-01', 'trade'),
(37, 'brookhaven nursing home', 568830777, 872584952, '', NULL, 'dounoughmore', '', '', 'ballyragget', 'kilkenny', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(38, 'brothers of chairty', 91721400, NULL, 'helenlawrence@galway.brothersofcharity.ie', NULL, 'st. michael''s', 'john paul centre', 'ballybane', 'galway', '', 'ireland', '', '', '2000-01-01', 'trade'),
(39, 'brothers of charity', 214821012, NULL, '', NULL, 'lota,', 'bungalow 1 bathroom', '', 'glanmire', 'cork', 'ireland', '', 'residential home', '2000-01-02', 'trade'),
(40, 'brother''s of charity', 6433933, NULL, '', NULL, '7 countess grove', '', '', 'killarney', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(41, 'bun scoil na toirbirte', 2524264, NULL, 'bunscoilnatoirbhirte@gmail.com', NULL, '', '', '', 'mitchelstown', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(42, 'camphill', 567725114, NULL, 'brahim.camphill@camphill.ie', NULL, 'coolagh', 'ard lui house', '', 'callan', 'kilkenny', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(44, 'carlow co co', NULL, NULL, '', NULL, 'shrougan no. 31', '', '', 'tullow', 'carlow', 'ireland', '', '', '2000-01-01', 'trade'),
(45, 'carlow county council', 599136251, NULL, 'sgallagher@carlowcoco.ie', NULL, 'for: 1 pairc gleann na bearu', 'bagenalstown', '', '', 'carlow', 'ireland', '', 'private house', '2000-01-01', 'private'),
(46, 'carrick-on-shannon community school', 719620880, NULL, '', 719621703, '', '', '', 'carrick-on-shannon', 'leitrim', 'ireland', '', 'school', '2000-01-01', 'trade'),
(47, 'carrignabhfear national school', 214884509, 876176680, '', NULL, 'carrignabhfear', '', '', 'mallow', 'cork', 'ireland', '', 'school', '2000-01-01', 'trade'),
(48, 'castlepollard community school', 449661163, NULL, '', NULL, '', '', '', 'castlepollard', 'westmeath', 'ireland', '', 'education', '2000-01-01', 'trade'),
(49, 'castletownbere community hospital', NULL, NULL, '', NULL, '', '', '', 'castletownbere', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(50, 'cbc secondary school', 35350422054, NULL, 'principal@cbsthurles.ie', NULL, 'o donovan rossa street', '', '', 'thurles', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(51, 'ceathru caol national school', 749150169, NULL, '', NULL, '', '', '(close to lifford)', 'kerrykeel', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(52, 'chapel road hostel', 749521777, NULL, '', NULL, 'chapel road', '', '', 'dungloe', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(53, 'charter medical group', 16579005, 872773097, 'ksanderson@chartermedical.ie', NULL, 'the forge', 'smithfield market', 'smithfield', 'dublin 7', 'dublin', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(54, 'cheeverstown house ltd', 14993700, NULL, '', 14905753, 'templeogue', '', '', 'dublin 6w', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(55, 'cherry orchard hospital', 16206000, NULL, 'liz.carey@hse.ie', NULL, 'ballyfermot', '', '', 'dublin 10', '', 'ireland', '', '', '2000-01-01', 'trade'),
(56, 'cheshire homes', 214822192, NULL, '', NULL, 'lota', '', '', 'cork', 'cork', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(57, 'child & family centre', 27500067, NULL, '', NULL, '', 'ardnagennha', '', 'bantry', 'cork', 'ireland', '', 'co - action', '2000-01-01', 'trade'),
(58, 'cillaoibhinn group home', 7323031, NULL, '', NULL, 'killynard', '', '', 'donegal town', 'donegal', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(59, 'clare county council', 656846206, NULL, 'bboyce@clarecoco.ie', NULL, '30 westbourne court', 'watery road (john mcguire)', '', 'ennis', 'clare', 'ireland', '', '', '2000-01-01', 'trade'),
(60, 'cloghroe national school', 214385547, NULL, 'oifig@cloghroens.ie', NULL, 'bathroom', '', '', 'cloghroe', 'cork', 'ireland', '', 'riding school', '2000-01-01', 'trade'),
(61, 'clonbrusk resource center', NULL, NULL, '', NULL, 'coosan road', '', '', 'athlone', 'westmeath', 'ireland', '', '', '2000-01-01', 'trade'),
(62, 'clonmoney national school', NULL, NULL, '', NULL, '', '', '', 'newmarket on fergus', 'clare', 'ireland', '', 'education', '2000-01-01', 'trade'),
(63, 'clonskeagh c.n.u', NULL, NULL, '', NULL, 'room 012', 'block a, ground floor', '', 'clonskeagh', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(64, 'cnu ballincollig', 214620600, NULL, 'managerballincollig@mowlamhealthcare.com', NULL, 'top floor', '', '', 'ballincollig', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(65, 'cnu farranlea', NULL, NULL, '', NULL, '', '', '', 'farranlea', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(66, 'co-action', 2750114, NULL, 'ceo@co-action.ie', NULL, 'bathroom', '', '', 'bantry', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(67, 'colaiste na coiribe', 91753977, NULL, 'sinead.seoighe@gretb.ie', NULL, 'tuam road', '', '', 'galway', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(68, 'colaiste na trocaire', 6964094, NULL, 'mercycc@eircom.net', NULL, 'mercy community college', '', '', 'rathkeale', 'limerick', 'ireland', '', 'school', '2000-01-01', 'trade'),
(69, 'colaiste pobail bheanntrai', 2756434, NULL, 'admin@colaistepobailbheanntrai.com', NULL, 'seskin', '', '', 'bantry', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(70, 'college gardens (kashma)', 567763211, 866016365, 'codriscoll@soskilkenny.ie', 567764000, 'ingrid brennan', 'college gardens', 'callan road', 'kilkenny', 'kilkenny', 'ireland', '', '', '2015-07-29', 'trade'),
(71, 'college of commerce', 214255500, 868613806, '', 214314681, 'morrisons island', '', '', 'cork', 'cork', 'ireland', '', 'school', '2000-01-01', 'trade'),
(72, 'coloiste na toirbhirte bandon', 2341814, NULL, '', NULL, '', '', '', 'bandon', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(73, 'community hospital of the assumption', 50427723, NULL, '', NULL, '', '', '', 'thurles', 'tipperary', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(74, 'community services store', 749521044, NULL, 'sue.islam@hse.ie', NULL, 'hse west - unit 3', 'lisnennan', '', 'letterkenny', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(75, 'convent primary school', 719667171, NULL, '', NULL, '', '', '', 'boyle', 'roscommon', 'ireland', '', '', '2000-01-01', 'trade'),
(76, 'cope foundation', 214891472, 862592101, 'byrnem@cope-foundation.ie', NULL, 'scartagh', '', '', 'clonakilty', 'cork', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(77, 'cope foundation - duplicate', 214891472, 862592101, 'byrnem@cope-foundation.ie', NULL, 'scartagh', '', '', 'clonakilty', 'cork', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(78, 'cork college of commerce', NULL, NULL, '', NULL, 'morrisons island', 'south terrace', '', 'cork', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(79, 'crana college', 749361113, NULL, '', NULL, 'crana road', '', '', 'buncrana', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(80, 'crc waterford', 51301050, NULL, 'lhartrey@crc.ie', NULL, 'waterford regional hospital', 'waterford community services', 'cork road', 'waterford', 'waterford', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(81, 'crescent comprehensive college', 61229325, NULL, 'cresentfinance@gmail.com', NULL, 'dooradoyle', '', '', 'limerick', '', 'ireland', '', '', '2000-01-01', 'trade'),
(82, 'crowhill', NULL, 861572013, '', NULL, 'ballinoosky', '', '', 'newmarket on fergus', 'clare', 'ireland', '', '', '2000-01-01', 'trade'),
(83, 'cuanannie day services', 749125624, NULL, 'georgina.mccudden@hse.ie', NULL, '', 'ballyraine industrial estate', '', 'letterkenny', 'donegal', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(84, 'cuh cork - ward 5b', 214922000, NULL, 'mourice.oriordan@hse.ie', NULL, '5th floor', 'wilton', '', 'cork', 'cork', 'ireland', '', '', '2015-11-24', 'trade'),
(85, 'cuil aodha national', 2645342, NULL, 'cuilaodhans@eircom.net', NULL, 'cuil aodha', 'macroom', '', 'macroom', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(86, 'dalkey community unit', 12353202, NULL, 'siobhan.turner@hse.ie', NULL, 'kilbegnet close', '', '', 'dalkey', 'dublin', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(87, 'daughters of charity', 615014431, NULL, 'oonagh.magner@lim-docservice.ie', NULL, 'the rivers', 'sejare house', '', 'annacotty', 'limerick', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(88, 'daughter''s of charity', 18383234, NULL, '', NULL, 'st. vincent''s -', 'navan road', 'caoimhir-marie murphy', 'dublin 7', '', 'ireland', '', '', '2000-01-01', 'trade'),
(89, 'daughters of charity clonsilla', 529233419, NULL, 'tom.sullivan@hse.ie', NULL, 'st josephs', 'clonsilla', '', 'dublin', '', 'ireland', '', '', '2000-01-01', 'trade'),
(90, 'daughters of charity-st vincent''s', NULL, NULL, '', NULL, 'grainne o''connor c/o caoimhin', 'navan road', '', 'dublin 22', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(91, 'dawn house', 539233419, NULL, '', NULL, 'sjog', '', '', 'enniscorthy', 'wexford', 'ireland', '', 'residential home', '2017-01-13', 'trade'),
(92, 'dawn house', 529233419, NULL, 'tom.sullivan@hse.ie', NULL, 'sjog', '', '', 'wexford', 'wexford', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(93, 'day resource unit', NULL, 872223330, '', NULL, 'bree', '', '', 'castleblaney', 'monaghan', 'ireland', '', '', '2000-01-01', 'trade'),
(94, 'dean maxwell community nursing unit', 50521572, NULL, 'liam.carson@hse.ie', NULL, 'the valley', '', '', 'roscrea', 'tipperary', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(95, 'dean maxwell house', 50521572, NULL, 'liam.carson@hse.ie', NULL, '', '', '', 'roscrea', 'tipperary', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(96, 'deidre courtney', 667134289, NULL, '', NULL, '', '', '', 'ardfert', 'kerry', 'ireland', '', 'private house', '2016-08-19', 'private'),
(97, 'denray construction ltd', NULL, NULL, '', NULL, '5 beauliew view', '', '', 'drogheda', 'louth', 'ireland', '', '', '2000-01-01', 'trade'),
(98, 'department of agriculture', 16072000, NULL, '', NULL, '', 'kildare street', '', 'dublin 2', '', 'ireland', '', '', '2000-01-01', 'trade'),
(99, 'derg center', 6742336, NULL, 'mmoloney@mwhb.ie', 6741357, 'gortlandroe', '', '', 'nenagh', 'tipperary', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(100, 'derrane resource centre', 906625852, NULL, 'mbourkersg@eircom.net', NULL, '', 'derrane resource centre', '', 'derrane', 'roscommon', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(101, 'derrybeg national school', 906625852, NULL, 'mbourkersg@eircom.net', NULL, '', '', '', 'derrybeg', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(102, 'dingle community nursing unit', 669151455, NULL, 'deirdre.kuaid@hse.ie', NULL, '', '', '', 'dingle', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(103, 'disability services', NULL, 872486745, 'eimear.goulding@hse.ie', NULL, 'south west wing', 'st josephs hospital', 'limerick', 'limerick', 'limerick', 'ireland', '', 'private house', '2000-01-01', 'trade'),
(104, 'disablity service', 469073285, NULL, '', NULL, 'commons road', '', '', 'navan', 'meath', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(105, 'do not use - duplicate', NULL, NULL, '', NULL, 'oakvale', 'bungalow b room 6', '', 'youghal', 'cork', 'ireland', '', '', '2015-08-07', 'trade'),
(106, 'do not use- duplicate', NULL, NULL, '', NULL, 'oakvale e', '', '', 'youghal', 'cork', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(107, 'doc st vincents centre', 18245328, NULL, 'purchasing.stvin@docservice.ie', NULL, 'navan road', '(for anna gill - caoimhin)', '', 'dublin', 'dublin', 'ireland', '', 'nursing home', '2016-11-26', 'trade'),
(108, 'drakelands nursing home', NULL, NULL, '', NULL, '', '', '', 'kilkenny', 'kilkenny', 'ireland', '', '', '2000-01-01', 'trade'),
(109, 'dromclough n.s.', 6840226, NULL, 'Dromc@eircom.net', NULL, 'listowel', '', '', 'listowel', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(110, 'drumfries national school', 749363396, NULL, 'drumfriesschool.ias@eircom.net', NULL, '', '', '', 'drumfries', 'donegal', 'ireland', '', 'school', '2000-01-01', 'trade'),
(111, 'dubhras national school', 916386454, NULL, '', NULL, 'cinn mhara', '', '', 'galway', 'galway', 'ireland', '', 'school', '2000-01-01', 'trade'),
(112, 'dungloe district hospital', 749521160, 749521044, '', NULL, 'gweedore road', '', '', 'dungloe', 'donegal', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(113, 'dungloe national school', 749521316, NULL, '', NULL, 'dungloe', '', '', '', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(114, 'dunmanway swimming pool', 238845349, NULL, 'jenniferdeasy@corkcoco.ie', NULL, 'bantry road', '', '', 'dunmanway', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(115, 'enable ireland', 656943047, NULL, 'akildea@enableireland.ie', NULL, 'clonroad business park', 'clon road', '', 'ennis', 'clare', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(116, 'enable ireland - child center', NULL, NULL, '', NULL, 'oakview village', '', '', 'tralee', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(117, 'enable ireland galway', 91526321, NULL, 'asmart@enableIreland.ie', NULL, 'seamus quirke rd', '', '', 'newcastle', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(118, 'enable supplies', NULL, 876143399, 'marc.egan@enablesupplies.com', NULL, '7 kilnagleary business park', '', '', 'carrigaline', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(119, 'enable supplies ltd', NULL, 873288743, 'marc.egan@enablesupplies.ie', NULL, '', '', '', '', '', 'ireland', '', '', '2000-01-01', 'trade'),
(120, 'enniscorthy community workshop', 539233039, NULL, 'info@cwe.ie', NULL, 'bellefield', '', '', 'enniscorthy', 'wexford', 'ireland', '', '', '2015-07-15', 'trade'),
(121, 'falcarragh day hospital', 749135104, 749135133, 'geraldine.mclean@hse.ie', NULL, '', '', '', 'falcarragh', 'donegal', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(122, 'falcarragh nursing home', 749135104, NULL, '', NULL, '', '', '', 'falcarragh', 'donegal', 'ireland', '', 'hse', '2000-01-01', 'trade'),
(123, 'ferbane national school', NULL, NULL, '', NULL, '', '', '', 'ferbane', 'offaly', 'ireland', '', '', '2000-01-01', 'trade'),
(124, 'fermoy leisure centre', 2533272, NULL, 'fermoyleisurecentre@eircom.net', NULL, '', '', '', 'fermoy', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(125, 'festina lente enterprises ltd.', 12720704, 863549755, 'jillcarey@festinalente.ie', 12720708, 'old conaught avenue', '', '', 'bray', 'wicklow', 'ireland', '', 'riding school', '2000-01-01', 'trade'),
(126, 'firmount national school', 217337344, NULL, '', NULL, '', '', '', 'donoughmore', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(127, 'forest lodge respite childrens home', 2890903355, NULL, 'yvoone.mckibbin@belfasttrust.hscni.net', NULL, 'stockmans lane, musgrave park hospital', 'bt9 7jb', '', 'belfast', 'antrim', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(128, 'gael scoil', 2242709, NULL, '', NULL, 'thomas david', 'summerhill', '', 'mallow', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(129, 'gaelscoil mhic amhlaigh', 91590152, NULL, 'scoilma.ias@eircom.net', NULL, 'an coim in mor', 'bothar na gcepach', '', 'cnoc na cathrach', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(130, 'gallen community school', 906454548, NULL, 'ufinnegan@gallencs.com', NULL, '', '', '', 'ferbane', 'offaly', 'ireland', '', '', '2000-01-01', 'trade'),
(131, 'galway p.c.c.c. stores', NULL, 867924282, '', NULL, 'briarhill business park', '', '', 'ballybrit', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(132, 'garda retirement home', NULL, NULL, '', NULL, '476 howth road', 'raheny', '', 'raheny', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(133, 'garryhankard house', 868324700, NULL, '', NULL, '', '', '', 'upton', 'cork', 'ireland', '', '', '2000-01-01', 'private'),
(134, 'gorey educate together ns', 539489662, NULL, 'info@goreyeducatetogether.ie', NULL, 'kilnahue lane', 'carnew road', '', 'gorey', 'wexford', 'ireland', '', 'school', '2000-01-01', 'trade'),
(135, 'granstown priory scheme', NULL, NULL, '', NULL, 'grantstown', '', '', 'wellington bridge', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(136, 'grantstown day care centre', 51561016, NULL, '', NULL, '', '', '', 'wexford', '', 'ireland', '', '', '2000-01-01', 'trade'),
(137, 'grove court', 18297233, NULL, 'marian.glynn@hse.ie', NULL, 'grove road', '', '', 'blanchardstown', 'dublin 17', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(138, 'grove house', 214927942, NULL, '', NULL, 'st. mary''s orthopaedic hospital', '', '', 'gurranabraher', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(139, 'h.s.e. north east area', 494361800, NULL, '', NULL, 'local health office', '', '', 'lisdarn', 'cavan', 'ireland', '', '', '2000-01-01', 'trade'),
(140, 'hacketstown national school', NULL, NULL, '', NULL, '', '', '', 'hacketstown', 'carlow', 'ireland', '', '', '2000-01-01', 'trade'),
(141, 'hazel hall nursing home', 45986315, NULL, 'pauline.travers@hse.ie', NULL, 'prosperous', 'co kildare', '', 'cork', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(142, 'headway', 214871303, NULL, 'ocallaghanp@headway.ie', NULL, 'unit 3b', 'link road business park', '', '', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(143, 'healthy living centre', 51440270, NULL, '', NULL, 'hospital grounds', '', '', 'new ross', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(144, 'highfield hospital', 18374444, NULL, 'eustace@highfieldhaelthcare.ie', NULL, '4 bedwards', 'swords rd', '', 'whitehall, d10', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(145, 'holy angels day care centre', 599143911, NULL, 'sharon@theholyangels.org', NULL, 'strawhall industrial est', '', '', 'carlow', 'carlow', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(146, 'holy family school', 495552257, NULL, 'holyfamilysch.ias.@eircom.net', 495556150, 'old bridge road', '', '', 'cootehill', 'cavan', 'ireland', '', 'education', '2000-01-01', 'trade'),
(147, 'hse', NULL, NULL, '', NULL, 'rathcoole', '', '', 'fethard', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(148, 'hse - n.w.a.', NULL, NULL, '', NULL, '', '', '', 'falcarragh', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(149, 'hse department', NULL, NULL, '', NULL, 'ot dept', 'naas vista house', 'ballymore rd', 'naas', 'kildare', 'ireland', '', '', '2000-01-01', 'trade'),
(150, 'hse letterkenny', 749123501, NULL, 'anne.drake@hse.ie', NULL, '', '', '', 'letterkenny', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(151, 'hse ofalia house', 469731285, NULL, 'ofaliahouse@hse.ie', NULL, 'st mary''s road', '', '', 'edenderry', 'offaly', 'ireland', '', '', '2000-01-01', 'trade'),
(152, 'hse stores letterkenny', 749123501, NULL, 'anne.drake@hse.ie', NULL, 'lisnennan', '', '', 'letterkenny', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(153, 'i.w.a - south tipperary', 6252744, 872050869, 'donald.campbell@iwa.ie', NULL, '(ref johns court, the steeples)', 'brodeen', 'cashel rd', 'tipperary town', 'tipperary', 'ireland', '', 'private house', '2016-08-10', 'trade'),
(154, 'i.w.a.', 876949083, NULL, '', 667117657, '', 'ballygoluge rd.', '', 'listowel', 'kerry', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(155, 'imnda', 18730422, NULL, 'thutchin@imnda.ie', NULL, 'turvey cottages', 'coleraine house', 'coleraine street', 'dublin 7', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(156, 'inchicore community nursing unit', NULL, NULL, '', NULL, 'therapy room - ground floor', '', '', 'inchicore', 'dublin', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(157, 'iniscealtra national school', 61927299, NULL, '', NULL, '', '', '', 'mountshannon', 'clare', 'ireland', '', 'education', '2000-01-01', 'trade'),
(158, 'irish wheelchair assoc', NULL, NULL, '', NULL, '30 westbourne', 'watery road', '', 'ennis', 'clare', 'ireland', '', '', '2000-01-01', 'trade'),
(159, 'irish wheelchair association', 18186400, NULL, '', 18531256, 'black heath drive', 'clontarf', '', 'dublin 3', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(160, 'irish wheelchair association/lucan', 16302414, NULL, '', NULL, '', 'londonbridge road', 'irishtown', 'dublin 4', 'dublin', 'ireland', '', 'independent living', '2000-01-01', 'trade'),
(161, 'jd contracting', NULL, 868142211, '', NULL, '7 melrose gardens', '', '', 'clondalkin', 'dublin', 'ireland', '', 'contractor', '2000-01-01', 'trade'),
(162, 'journey man centre', 51641892, NULL, 'heatherlynchjournyman@gmail.com', NULL, 'ballynagarra', '', '', 'carrick on suir', 'tipperary', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(163, 'kanturk community hospital', 2950024, 872066643, 'margaretb.fitzgerald@hse.ie', 2951292, '', '', '', 'kanturk', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(164, 'kenmare community unit', 646641088, NULL, 'margaret.osullivan7@hse.ie', NULL, 'room 18 downstairs', '', '', 'kenmare', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(165, 'kerry co co , listowel', NULL, NULL, '', NULL, '11 stokers place', 'jb keane road', '', 'listowel', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(166, 'kilbeheny national school', 2584337, 862122236, 'kilbehennyns@hotmail.com', NULL, '', '', '', 'mitchelstown', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(167, 'kildysart national school', 656832477, 879305804, 'kildysartns.ias@eircom.net', NULL, '', '', '', 'kildysart', 'clare', 'ireland', '', 'school', '2000-01-01', 'trade'),
(168, 'kilfinnane national school', 6391326, NULL, '', NULL, '', '', '', 'kilfinnane', 'limerick', 'ireland', '', 'education', '2000-01-01', 'trade'),
(169, 'kilkenny community services', 567725812, 863334326, '', NULL, 'westcourt', '', '', 'callan', 'kilkenny', 'ireland', '', 'end customer', '2000-01-01', 'private'),
(170, 'killahan national school', 667135644, NULL, 'doyg@eircom.net', NULL, 'abbeydorney', '', '', 'tralee', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(171, 'killarney community college', 646632164, NULL, 'kccccom@iol.ie', 646632178, 'new road', '', '', 'killarney', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(172, 'killarney nursing home', 6435005, NULL, 'kccccom@iol.ie', NULL, '', '', '', 'killarney', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(173, 'killcreene regional orthopaedic hospital', 567785005, NULL, 'barry.mccauley@hse.ie', NULL, 'children''s disability unit', '', '', 'kilkenny', 'kilkenny', 'ireland', '', '', '2000-01-01', 'trade'),
(174, 'kinsale community hospital', 214772202, NULL, 'nualaoreily@hse.ie', NULL, '', '', '', 'kinsale', 'cork', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(175, 'knockanure national school', 6849130, NULL, '', NULL, 'moyvane', '', '', 'listowel', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(176, 'kolbe special school', NULL, NULL, '', NULL, 'portlaoise', '', '', 'portlaoise', 'laois', 'ireland', '', '', '2000-01-01', 'trade'),
(177, 'laragh national school', 238843313, NULL, 'laraghns.ias@eircom.net', NULL, '', '', '', 'bandon', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(178, 'laurel lodge', 4348033, NULL, '', NULL, 'templemichael glebe', '', '', 'longford', 'longford', 'ireland', '', '', '2000-01-01', 'trade'),
(179, 'letterkenny institute of technology', 749186112, NULL, 'ann.brennan@lyit.ie', NULL, 'port road', '', '', 'letterkenny', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(180, 'letterkenny leisure centre', NULL, NULL, '', NULL, '', 'sallaghagrane', '', 'letterkenny', 'donegal', 'ireland', '', 'leisure', '2000-01-01', 'trade'),
(181, 'limerick regional hospital', 61301111, NULL, 'bernard.ryan@hse.ie', NULL, 'dooradoyle', '', '', 'navan', 'co meath', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(182, 'linda mccarthy', NULL, 861613140, 'lindamccarthy@live.ie', NULL, 'derrygrath', '', '', 'clonmel', 'tipperary', 'ireland', '', 'private house', '2016-10-20', 'private'),
(183, 'lisdarn cnu (cavan gen hosp)', 494362333, 866006238, '', NULL, 'lisdarn unit for the elderly', '', '', 'cavan', 'cavan', 'ireland', '', 'residential home', '2016-09-07', 'trade'),
(184, 'lisdarn residential unit', 494362333, 866006238, 'bernadettek.mcmallet@hse.ie', NULL, 'cavan hospital', '', '', 'cavan', 'cavan', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(185, 'little angels school', 749122456, 868375812, '', NULL, 'knocknamona', '', '', 'letterkenny', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(186, 'long lane letterkenny', NULL, NULL, '', NULL, 'ballytrim house', '', '', 'raphoe', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(187, 'longford swimming pool', 4340994, NULL, '', NULL, '', '', '', 'longford', 'longford', 'ireland', '', '', '2000-01-01', 'trade'),
(188, 'loretto secondary school', 567765132, NULL, 'principal@lorrettokk.ie', NULL, 'granges road', '', '', 'kilkenny', 'kilkenny', 'ireland', '', 'education', '2000-01-01', 'trade'),
(189, 'loughrea community nursing unit', 91871200, NULL, 'bernie.austin@hse.ie', NULL, 'crannogs,room7', '', '', 'loughrea', 'galway', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(190, 'loughrea court house', 91841463, NULL, 'weasternro@corksourts.ie', NULL, '', '', '', 'loughrea', 'galway', 'ireland', '', '', '2000-01-01', 'trade'),
(191, 'lyreacrompane ns', 6848233, NULL, '', NULL, '', '', '', 'listowel', 'kerry', 'ireland', '', 'education', '2000-01-01', 'trade'),
(192, 'macroom community hospital', 2641002, NULL, 'Bernie.Buckley@hse.ie', NULL, '', '', '', 'macroom', 'cork', 'ireland', '', 'community hospital', '2000-01-01', 'trade'),
(193, 'magh ene college', NULL, NULL, '', NULL, '', '', '', 'bundoran', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(194, 'masonic hall', 12870131, NULL, '', NULL, 'castle street', '', '', 'dalkey', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(195, 'maynooth community care centre', 16106351, 16106361, 'nuala.nolan@hse.ie', 16106360, 'fitzgerald ward room 33', '', '', 'maynooth', 'kildare', 'ireland', '', '', '2000-01-01', 'trade'),
(196, 'meadow high school', NULL, NULL, '', NULL, 'royal lane', 'hillingdon', '', 'london', 'middlesex', 'ireland', '', '', '2000-01-01', 'trade'),
(197, 'meath county council', 469097269, NULL, 'ttraynor@meathcoco.ie', NULL, '(for ryan and justin mongan)', '43 ashbrook', '', 'navan', 'meath', 'ireland', '', 'private house', '2016-11-18', 'trade'),
(198, 'meath hospital', 17077909, NULL, 'pamala.emnis@hse.ie', NULL, 'o.t. room', 'heytesbury street', 'dublin 8', 'dublin', '', 'ireland', '', '', '2000-01-01', 'trade'),
(199, 'mercy hospital', 214271971, NULL, 'thamilton@muh.ie', NULL, 'childrens ward', '4th floor', '', 'cork', 'cork', 'ireland', '', '', '2015-07-27', 'trade'),
(200, 'merlin park hospital', 91775323, 876159891, 'alan.corcoran@hse.ie', NULL, 'unit 10a seating clinic', '', '', 'galway', 'galway', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(201, 'mid western regional hosptial', 61301111, NULL, 'bernard.ryan@hse.ie', NULL, 'assisted bathroom', 'room 52', '', 'limerick', '', 'ireland', '', '', '2000-01-01', 'trade'),
(202, 'middleton community hospital', 214635300, NULL, 'katherine.duran@hse.ie', NULL, '', '', '', 'middleton', 'cork', 'ireland', '', 'end customer', '2000-01-01', 'trade'),
(203, 'midleton community hospital', 214635300, NULL, 'katherine.duran@hse.ie', NULL, 'st. rita''s room', 'st. catherine''s ward', '', 'middleton', 'cork', 'ireland', '', 'end customer', '2000-01-01', 'trade'),
(204, 'midway services', 9249257, NULL, 'yburd@midwayservices.ie', 469282014, 'clima hall', 'oldcastle road', '', 'kells', 'meath', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(205, 'milford care centre', 61338244, NULL, '', NULL, 'plassey park road', '', '', 'castletroy', 'limerick', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(206, 'millbrook day centre', 539233419, NULL, '', NULL, 'enniscorthy (skills room)', '', '', 'enniscorthy', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(207, 'millhouse care centre', 51447200, 872609289, 'info@millhousecarecentre.com', NULL, 'newtown', 'cummons', '', 'newross', 'wexford', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(208, 'millstreet community school', 2970087, NULL, '', 2970179, '', '', '', 'millstreet', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(209, 'milltown national school', 499522802, NULL, '', NULL, '', '', '', 'belturbet', 'cavan', 'ireland', '', 'school', '2000-01-01', 'trade'),
(210, 'monastery cbs primary school', 6252656, NULL, 'moncbstipperary@eircom.net', NULL, 'st patricks avenue', '', '', 'tipperary town', 'tipperary', 'ireland', '', 'school', '2000-01-01', 'trade'),
(211, 'moorehaven centre', 6252437, NULL, '', 6233566, 'o''brien street', '', '', 'tipperary', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(212, 'mortuarty - connolly hospital', 16465000, NULL, 'dermot.duke@hse.ie', NULL, 'blanchardstown', '', '', 'dublin 15', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(213, 'mount alvernia hospital', 2258402, NULL, 'garrett.hayes@hse.ie', NULL, '', '', '', 'mallow', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(214, 'muckross park college', NULL, NULL, '', NULL, 'donnybrock', '', '', 'dublin', 'dublin', 'ireland', '', 'end customer', '2000-01-01', 'trade'),
(215, 'musgrave park hospital', 4890902000, NULL, '', 4890902222, 'regional aquired brain injury unit', 'bt9 7jb', '', 'belfast', 'antrim', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(216, 'nano nagle school', 6821942, NULL, '', NULL, '', '', '', 'listowel', 'kerry', 'ireland', '', 'school', '2000-01-01', 'trade'),
(217, 'national aquatic centre', 16464300, 860429881, '', NULL, 'snugborough road', 'blanchardstown', '', 'dublin 15', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(218, 'national learning network', 5281555, NULL, 'clonmel@ntdi.ie', 5281521, 'roseville', 'western rd', '', 'clonmel', 'tipperary', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(219, 'national rehab hospital', 12355507, 862611592, 'jasonfarrell@nrh.ie', NULL, 'st. gabriels ward', 'rochestown avenue', '', 'dun laoghaire', 'dublin', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(220, 'navan community hospital', 469078500, NULL, '', NULL, 'beaufort house', '144', '', 'navan', 'meath', 'ireland', '', '', '2015-07-10', 'trade'),
(221, 'navan road primary care centre', 16250329, NULL, 'micheal.madden@hse.ie', NULL, 'school for the deaf campus', '', '', 'dublin 7', 'dublin', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(222, 'nenagh general hospital', 6746711, NULL, 'mmoloney@mwhb.ie', NULL, '', '', '', 'nenagh', 'tipperary', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(223, 'new haughton hospital', 51421266, NULL, 'beryl.mckee@hse.ie', NULL, 'day care centre', '', '', 'new ross', 'wexford', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(224, 'new haughton hospital01/12/2014', 51421266, NULL, 'beryl.mckee@hse.ie', NULL, 'ground floor', 'dunbrody ward', '', 'new ross', 'wexford', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(225, 'new haughton hospital-duplicate', 51421266, NULL, 'beryl.mckee@hse.ie', NULL, 'ward 5', '', '', 'new ross', 'wexford', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(226, 'newbridge respite centre', 12974100, 872790430, '', NULL, '356 strand house road', '', '', 'newbridge', 'kildare', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(227, 'newgrove housing association', 91768700, NULL, 'ABIGalway@rehabcare.ie', NULL, 'rehab care', '24 heather grove', '', 'ballybane', 'galway', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(228, 'newpark school', 12883724, NULL, 'info@newparkschool.ie', 12881250, 'newtownpark ave', 'blackrock', '', 'dublin', 'dublin', 'ireland', '', 'school', '2000-01-01', 'trade'),
(229, 'newpark school sports centre', 12883724, NULL, 'info@newparkschool.ie', NULL, 'newtown park ave', '', '', 'blackrock', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(230, 'newport daycare centre', 61378566, 863569340, 'newportdcc@outlook.ie', NULL, 'church rd', '', '', 'newport', 'tipperary', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(231, 'newtownmountkennedy primary school', NULL, NULL, '', NULL, 'newtownmountkennedy', 'juniorschool - room 3', '', '', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(232, 'no longer in use', 12864010, 872525592, '', NULL, '40 glenlawn drive', 'cabinteely', '', 'dublin 18', 'dublin', 'ireland', '', 'end customer', '2000-01-01', 'private'),
(233, 'ns cnoc na manach', 214887272, 877786620, 'minanebridgens.ias@eircom.net', NULL, '', '', '', 'minane bridge', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(234, 'oaklee house', 4890329989, 448000000000, '', 4890331167, 'springfield ave', 'house 7', '', 'belfast', 'antrim', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(235, 'oaklodge nursing home', 214646080, 872366498, 'ossice@oaklodgenursinghome.ie', NULL, 'churchtown south', '', '', 'cloyne', 'cork', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(236, 'o''connell primary school', NULL, NULL, '', NULL, 'north richmond street', '', 'dublin', 'north circular rd', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(237, 'o''connor bros funeral home', NULL, NULL, '', NULL, 'north gate bridge', '', '', 'shanakiel', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(238, 'ofalia house', 469731285, NULL, '', NULL, 'room 12', '', '', 'edenderry', 'offaly', 'ireland', '', 'community hospital', '2016-12-18', 'trade'),
(239, 'offally co.co.', NULL, NULL, '', NULL, 'tinnymuck', '', '', 'moate', 'westmeath', 'ireland', '', '', '2000-01-01', 'trade'),
(240, 'orange blossom cottage', 2838394050, NULL, 'christina.drainey@foldgroup.co.uk', 2838399813, 'knockeadan', 'gildford park', '', 'portadown', 'armagh', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(241, 'our lady''s girl''s national school', NULL, NULL, '', NULL, '', '', '', 'rathdrum', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(242, 'our lady''s hospital', NULL, NULL, '', NULL, '', '', '', 'cashel', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(243, 'our lady''s hospital for sick children', 14096556, NULL, '', 4558873, '', '', '', 'crumlin', 'dublin', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(244, 'parents & friends stranorlar', 749131038, NULL, 'marie.aiken@hse.ie', NULL, 'house 3 ard greine', 'mullindrait', '', 'stranorlar', 'donegal', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(245, 'patricia brett', NULL, NULL, '', NULL, '1 whitewood', '', '', 'kilkenny', 'kilkenny', 'ireland', '', 'private house', '2016-02-11', 'trade'),
(246, 'peamount hosp newcastle', NULL, NULL, '', NULL, '', '', '', 'newcastle', 'dublin', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(247, 'physical & sensory disability services', NULL, NULL, '', NULL, 'bayview respite house', '', '', 'tullyhan', 'leitrim', 'ireland', '', 'respite home', '2000-01-01', 'trade'),
(248, 'pier mont house hostel', 879521388, NULL, 'yvoone.huston@hse.ie', NULL, 'teach piemount', 'church road', 'sitting room', 'dungloe', 'donegal', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(249, 'pier mont house hostel.', 779521388, NULL, 'yvoone.huston@hse.ie', NULL, 'teach piemount', 'church road', 'bathroom', 'dungloe', 'donegal', 'ireland', '', 'blank', '2000-01-01', 'trade'),
(250, 'piermount house', NULL, NULL, 'yvoone.huston@hse.ie', NULL, 'pool road', 'meenmore', '', 'dungloe', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(251, 'pobal scoil inbhear sceine', NULL, 879272293, '', NULL, '', '', '', 'kenmare', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(252, 'pontville school', NULL, NULL, '', NULL, 'black moss lane', 'ormskirk', '', '', 'lancashire', 'ireland', '', '', '2000-01-01', 'trade'),
(253, 'portmagee national school', 669477211, 872239933, 'portmageens@gmail.com', NULL, '', '', '', 'portmagee', 'kerry', 'ireland', '', 'education', '2000-01-01', 'trade'),
(254, 'portmarnoch community school', 18038056, NULL, 'office@portcs.iol.ie', NULL, '', '', '', 'dublin', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(255, 'pre-school ballaghderg', 749121596, NULL, 'katherinemary.kelly@hse.ie', 749103340, 'day care centre', 'ballaghderg, mountain top', '', 'letterkenny', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(256, 'presentation secondary school', 353000000000, NULL, 'info@presgalway.ie', NULL, '', '', '', 'listowel', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(257, 'rainbow view', 719167321, NULL, '', NULL, '', 'cloonmahon', '', 'collooney', 'sligo', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(258, 'raphoe central national school', 749145361, NULL, '', NULL, 'lisnoble', 'manse', '', 'raphoe', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(259, 'rathakevin nursing home', NULL, NULL, '', NULL, 'barna', 'cahir road', '', 'clonmel', 'tipperary', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(260, 'rathdrum boys national school', NULL, 40446585, 'bnsrathdrum@gmail.com', NULL, 'rathdrum', '', '', 'rathdrum', 'wicklow', 'ireland', '', 'school', '2017-01-11', 'trade'),
(261, 'ratoath independent living', 18027131, NULL, '', NULL, '', 'tankerstown', '', 'rathooth', 'meath', 'ireland', '', 'blank', '2000-01-01', 'trade'),
(262, 'redwood care facility', NULL, NULL, '', NULL, '', '', '', 'stamullen', 'meath', 'ireland', '', '', '2000-01-01', 'trade'),
(263, 'rehab care', 6743046, NULL, 'jonna.goranson@rehabcare.ie', NULL, '1 connels road', '', '', 'nenagh', 'tipperary', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(264, 'rehabcare', NULL, NULL, '', NULL, 'the meadows', 'athlumney', '', 'navan', 'meath', 'ireland', '', '', '2000-01-01', 'trade'),
(265, 'residential unit,', 719841952, NULL, '', NULL, 'main st', 'inbhear na mara', '', 'bundoran', 'donegal', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(266, 'riada house', 579359985, NULL, 'audreykwright@hse.ie', NULL, 'community nursing unit', 'day care centre', 'room 24 shower room', 'tullamore', 'offaly', 'ireland', '', '', '2000-01-01', 'trade'),
(267, 'ringaskiddy national school', 214378238, NULL, 'ringaskiddyns@eircom.net', NULL, '', '', '', 'ringaskiddy', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(268, 'rip', 567727764, 876233296, '', NULL, 'wooden grange', '', '', 'bennitsbridge', 'kilkenny', 'ireland', '', '', '2000-01-01', 'private'),
(269, 'rivendell house', 539120083, NULL, '', NULL, 'karen o leary/teresa duffy', '', 'kitestown', 'crossabeg', 'wexford', 'ireland', '', '', '2017-01-13', ''),
(270, 'rockwell college', 50442015, NULL, '', NULL, '', '', '', 'cashel', 'tipperary', 'ireland', '', 'education', '2000-01-01', 'trade'),
(271, 'roscare social housing', 949620524, 906628502, 'toconnor@roscommon.brothersofcharity.ie', NULL, 'srah', 'ballinlough', '', 'castlerea', 'roscommon', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(272, 'rose construction', 214502586, NULL, '', NULL, 'maglin road', '', '', 'ballincollig', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(273, 'rowanberry day centre', 578662160, 866012188, '', NULL, 'block road', '', '', 'portlaoise', 'laois', 'ireland', '', 'other', '2000-01-01', 'trade'),
(274, 'royal prior school', 749145389, NULL, '', NULL, '', '', '', 'raphoe', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(275, 'royal secondary school', 749145389, NULL, '', NULL, 'raphoe', '', '', 'lifford', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(276, 's.e.h.b. o.t. dept.', 5222838, 876296462, '', NULL, 'kickhamarch', 'davis road', '', 'clonmel', 'tipperary', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(277, 'sacred heart convent', 4936200, NULL, 'financebreda@gmail.com', NULL, 'new site', 'bessboro', '', 'blackrock', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(278, 'sacred heart nursing home', 4751069, NULL, '', NULL, 'roslea road', '', '', 'clones', 'monaghan', 'ireland', '', 'nursing home', '2000-01-01', 'trade'),
(279, 'sacred heart school', 51842155, NULL, '', NULL, 'sacred heart centre', '', '', 'ladies lane', 'waterford', 'ireland', '', 'education', '2000-01-01', 'trade'),
(280, 'san joseph', 61481423, 879368088, '', NULL, 'ballysimon road', '', '', 'limerick city', 'limerick', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(281, 'sandymount school', NULL, NULL, '', NULL, 'sandymount avenue', '', '', 'dublin', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(282, 'schull community college', 2828315, NULL, 'office@schullcommunitycollege.com', NULL, 'colla road', '', '', 'schull', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(283, 'scoil aonghusa', 6262644, NULL, 'collette@scoilaonghusa.ie', NULL, 'cahir road', '', '', 'cashel', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(284, 'scoil chormaic', 6261338, NULL, 'scoilcormac@eircom.net', NULL, 'therapy room', 'golden rd', '', 'cashel', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(285, 'scoil chriost ri', NULL, NULL, '', NULL, '', '', '', 'portlaoise', 'laois', 'ireland', '', '', '2000-01-01', 'trade'),
(286, 'scoil chronain naofa', 50521863, NULL, '', NULL, 'dromakernan', '', '', 'roscrea', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(287, 'scoil cormac', 6261338, 6261866, 'scoilcormac@eircom.net', 6261338, 'golden rd', '', '', 'cashel', 'tipperary', 'ireland', '', 'school', '2000-01-01', 'trade'),
(288, 'scoil eoin baiste', 749155132, NULL, '', NULL, '', '', '', 'carrigart', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(289, 'scoil mhuire', 719633223, NULL, '', NULL, 'convent of mercy', '', '', 'strokestown', 'roscommon', 'ireland', '', 'school', '2000-01-01', 'trade'),
(290, 'sean chara nursing home', NULL, NULL, '', NULL, 'st canice road', '', '', 'glasnevin', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(291, 'sean hanafin 2', 669151444, NULL, '', NULL, 'beenbawn', '', '', 'dingle', 'kerry', 'ireland', '', '', '2000-01-01', 'trade'),
(292, 'sean tracey memorial swimming pool', 6251806, NULL, '', NULL, '', '', '', 'tipperary', 'tipperary', 'ireland', '', 'swimming pool', '2000-01-01', 'trade'),
(293, 'sean tracey memorial swimmingpool', 6251806, NULL, '', NULL, '', '', '', 'tipperary', 'tipperary', 'ireland', '', '', '2015-07-09', 'trade'),
(294, 'seancara nursing home', 18373722, NULL, '', 18373770, 'st. canice road, off ballygall road east', 'glasnevin', '', 'dublin 11', 'dublin', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(295, 'sea-view house', 749735925, NULL, '', NULL, '', '', '', 'mountcharles', 'donegal', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(296, 'sister of mercy', NULL, NULL, '', NULL, 'st. leo''s convent', '', '', 'carlow', 'carlow', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(297, 'sisters of african mission convent', 214291851, NULL, '', NULL, 'ardfoyle', '', '', 'ballintemple', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(298, 'sisters of mercy', 238833391, NULL, '', NULL, 'aras muire', 'mccurtin hill', 'scartagh', 'clonakilty', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(299, 'sisters of the african mission convent', NULL, NULL, '', NULL, 'ardfoyle', 'ballintemple', '', 'cork', '', 'ireland', '', '', '2000-01-01', 'trade'),
(300, 'sjog', NULL, NULL, '', NULL, 'paddock lane', 'old long hill', '', 'enniskerry', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(301, 'sligo courthouse', NULL, NULL, '', NULL, '', '', '', 'sligo', 'sligo', 'ireland', '', '', '2000-01-01', 'trade'),
(302, 'sodexo - nagle rice complex', NULL, 878667877, '', NULL, 'borris road', '', '', 'portlaoise', 'laois', 'ireland', '', 'school', '2000-01-01', 'trade'),
(303, 'sophia housing', NULL, NULL, '', NULL, 'house 3', '', '', 'tubbercurry', 'sligo', 'ireland', '', '', '2000-01-01', 'trade'),
(304, 'southwestmeath hospice', NULL, NULL, '', NULL, 'athlone hospital', '', '', 'athlone', 'westmeath', 'ireland', '', '', '2000-01-01', 'trade'),
(305, 'special care unit', 469074808, NULL, '', NULL, '', '', '', 'navan', 'meath', 'ireland', '', 'hospital', '2000-01-01', 'trade');
INSERT INTO `company` (`companyid`, `name`, `phone_num`, `mobile_phone_num`, `email`, `fax`, `address_line1`, `address_line2`, `address_line3`, `address_line4`, `county`, `country`, `contract_type`, `business_type`, `contract_renewal_date`, `trade`) VALUES
(306, 'st mary''s phoenix park', 16250300, NULL, '', 16250452, 'st mary''s', 'phoenix park', '', 'phoenix park', 'dublin', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(307, 'st brogan''s college', NULL, NULL, '', NULL, 'bandon', '', '', 'bandon', 'cork', 'ireland', '', 'end customer', '2015-09-29', 'trade'),
(308, 'st catherines special school', 879098808, 12819485, '', NULL, 'killmullen lane', 'newcastle', '', 'newcastle', 'wicklow', 'ireland', '', 'education', '2000-01-01', 'trade'),
(309, 'st colmcille''s boys national school', 18401316, NULL, 'colmcilles@gmail.com', NULL, 'chapel lane', '', '', 'swords', 'dublin', 'ireland', '', 'school', '2016-11-26', ''),
(310, 'st columba''s girls nat school', NULL, NULL, '', NULL, '', '', '', 'douglas', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(311, 'st conleth''s national school', 469553940, NULL, 'principal@stconlethsns.ie', NULL, '', '', '', 'derrinturn', 'kildare', 'ireland', '', 'school', '2000-01-01', 'trade'),
(312, 'st cronan''s boys n.s.', 12860440, NULL, '', NULL, 'vevay crescent', 'vevay road', '', 'bray', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(313, 'st fanahans college', 2524314, NULL, '', NULL, 'mitchelstown', '', '', 'mitchelstown', 'cork', 'ireland', '', 'school', '2000-01-01', 'trade'),
(314, 'st fergals senior school', NULL, NULL, '', NULL, '', '', '', 'bray', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(315, 'st francis hospice', 18294083, 860403617, 'wmaguire@sfh.ie', NULL, 'blanchardstown', '', '', 'dublin 15', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(316, 'st joseph''s community hospital', 2970003, NULL, '', NULL, '', '', '', 'millstreet', 'cork', 'ireland', '', 'community hospital', '2000-01-01', 'trade'),
(317, 'st joseph''s hospital', NULL, NULL, '', NULL, '', '', '', 'raheny', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(318, 'st joseph''s national school', NULL, NULL, '', NULL, '', '', '', 'longford', '', 'ireland', '', '', '2000-01-01', 'trade'),
(319, 'st joseph''s primary school', 18373696, 879752437, 'principal@stjosephsprimaryvi.ie', NULL, 'grace park', '', '', 'drumcondra', 'dublin', 'ireland', '', 'school', '2000-01-01', 'trade'),
(320, 'st mary''s boys national school', NULL, NULL, '', NULL, 'grotto avenye', '', '', 'booterstown', 'dublin', 'ireland', '', 'school', '2000-01-01', 'trade'),
(321, 'st mary''s hospital', NULL, NULL, '', NULL, 'room 19', 'connell ward', '', 'dublin', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(322, 'st mary''s phoenix park', 16250300, NULL, 'micheal.madden@hse.ie', 16250452, 'physio room', 'phoenix park', '', 'phoenix park', 'dublin', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(323, 'st marys secondary school', 2221998, NULL, '', NULL, 'thomas davis street', '', '', 'mallow', 'cork', 'ireland', '', 'school', '2000-01-01', 'trade'),
(324, 'st mary''s secondary school', NULL, NULL, '', NULL, 'thomas david', '', '', 'birr', 'offaly', 'ireland', '', '', '2015-07-30', 'trade'),
(325, 'st mc cartans n.s.', 719841711, NULL, '', NULL, '', '', '', 'bundorn', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(326, 'st oliver plunkett national school', NULL, NULL, '', NULL, '', '', '', 'navan', 'meath', 'ireland', '', '', '2000-01-01', 'trade'),
(327, 'st oliver''s school', NULL, NULL, '', NULL, '', '', '', 'ballyvolane', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(328, 'st patrick national school', 909627109, 852447660, '', NULL, 'st patrick national school', 'killtormer', '', 'ballinasloe', 'galway', 'ireland', '', 'education', '2000-01-01', 'trade'),
(329, 'st patrick''s community hospital', 2531300, NULL, '', NULL, '', '', '', 'fermoy', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(330, 'st patrick''s community hospital fermoy', 2531300, NULL, '', NULL, '', '', '', 'fermoy', 'cork', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(331, 'st philomena''s national school', 12860498, 868032525, '', NULL, '', 'ravenswell', '', 'bray', 'wicklow', 'ireland', '', 'education', '2000-01-01', 'trade'),
(332, 'st raphael''s', NULL, NULL, '', NULL, '(oakvale)', '', '', 'youghal', 'cork', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(333, 'st raphael''s hospital', NULL, NULL, '', NULL, 'oakvale', 'bungalow a room 5', '', 'youghal', 'cork', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(334, 'st senna national school', 876147377, NULL, '', NULL, '', '', '', 'kilrush', 'clare', 'ireland', '', 'education', '2000-01-01', 'trade'),
(335, 'st vincents hospital', NULL, NULL, '', NULL, 'st theresa''s', '', '', 'mountmellick', 'laois', 'ireland', '', 'district hospital', '2000-01-01', 'trade'),
(336, 'st. agnes centre', 749721769, NULL, '', NULL, '', '', '', 'donegal town', 'donegal', 'ireland', '', 'residential home', '2015-07-24', 'trade'),
(337, 'st. angela''s national school', 949022902, NULL, '', NULL, 'castlebar', '', '', 'castlebar', 'mayo', 'ireland', '', '', '2000-01-01', 'trade'),
(338, 'st. brendan''s community school', NULL, NULL, '', NULL, '', '', '', 'birr', 'offaly', 'ireland', '', '', '2015-07-30', 'trade'),
(339, 'st. brid''s national school', NULL, NULL, '', NULL, '', '', '', 'castlebar', 'mayo', 'ireland', '', 'education', '2000-01-01', 'trade'),
(340, 'st. brigid''s hospital', 609648446, 909644112, '', NULL, 'horgans house', 'walnut grove', '', 'ballinasloe', 'galway', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(341, 'st. brigid''s national school', NULL, NULL, '', NULL, 'annacurragh', '', '', 'annacurragh', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(342, 'st. catherines school', 12812336, 879047188, '', NULL, 'junior room', 'kilmullen lane', '', 'newcastle', 'wicklow', 'ireland', '', 'education', '2000-01-01', 'trade'),
(343, 'st. columba''s hospital', NULL, NULL, '', NULL, 'thomastown', '', '', '', 'kilkenny', 'ireland', '', '', '2000-01-01', 'trade'),
(344, 'st. conals hospital', 749188829, 749188832, '', NULL, 'mortuary', '', '', 'letterkenny', 'donegal', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(345, 'st. crona''s national school', 749521316, NULL, '', NULL, 'classroom 14', 'chapel road', '', 'dungloe', 'donegal', 'ireland', '', '', '2000-01-01', 'trade'),
(346, 'st. davnets hospital', 4781822, 872434517, 'mariemcq@eircom.net', 4781527, 'swimming pool', 'rooskey', '', 'monaghan', 'monaghan', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(347, 'st. declan''s community college', NULL, NULL, '', NULL, '', '', '', 'kilmacthomas', 'waterford', 'ireland', '', '', '2000-01-01', 'trade'),
(348, 'st. fergals junior national school', 12868033, NULL, '', NULL, '', '', '', 'bray', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(349, 'st. finbarrs hospital', NULL, NULL, '', NULL, 'room 104', 'st josephs unit', 'old maternity hospital', 'douglas', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(350, 'st. gabriels special school', 214544068, NULL, '', NULL, 'curraheen road', '', 'bishopstown', 'cork', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(351, 'st. helens senior national school', 18464808, NULL, '', NULL, 'limetree avenue', '', '', 'portmarnock', 'dublin', 'ireland', '', 'school', '2000-01-01', 'trade'),
(352, 'st. hilda''s center', NULL, NULL, '', NULL, 'bedroom 2', 'hillquarter', 'coosan', 'athlone', 'westmeath', 'ireland', '', '', '2000-01-01', 'trade'),
(353, 'st. john the baptist national school', 6261833, NULL, '', NULL, 'old road', '', '', 'cashel', 'tipperary', 'ireland', '', 'education', '2000-01-01', 'trade'),
(354, 'st. joseph''s centre for the visually impaired', 18373635, NULL, '', 18368403, 'grace park road', '', 'dublin 9', 'drumcondra', 'dublin', 'ireland', '', 'care centre', '2000-01-01', 'trade'),
(355, 'st. josephs centre for visually impaired', NULL, NULL, '', NULL, 'c/o irish guide dogs training centre', 'model farm road', '', 'bishopstown', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(356, 'st. joseph''s community hospital', NULL, NULL, '', NULL, 'room 2', '', '', 'trim', 'meath', 'ireland', '', '', '2014-05-29', 'trade'),
(357, 'st. joseph''s daughters of charity', 18248636, NULL, '', NULL, 'sonas 4', 'heather', '', 'clonsilla', 'dublin 15', 'ireland', '', '', '2000-01-01', 'trade'),
(358, 'st. josephs hospital', 4346212, NULL, '', 4347927, 'padre pia ward', '', '', 'longford', 'longford', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(359, 'st. joseph''s national school', NULL, NULL, '', NULL, 'mardyke', '', '', 'cork', '', 'ireland', '', '', '2000-01-01', 'trade'),
(360, 'st. josephs primary school', NULL, NULL, '', NULL, 'dublin rd', '', '', 'longford', 'longford', 'ireland', '', '', '2000-01-01', 'trade'),
(361, 'st. leo''s convent', 5229438, 862593067, '', NULL, 'st. leo''s convent', 'dublin road', '', 'carlow', 'carlow', 'ireland', '', '', '2000-01-01', 'trade'),
(362, 'st. luke''s home', 4359444, NULL, '', NULL, 'mahon', '', '', 'cork', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(363, 'st. martins house', 749521388, NULL, '', 749521101, 'sitting room', '', '', 'falcarragh', 'donegal', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(364, 'st. mary''s hospital', 16250329, NULL, '', NULL, 'phoenix park', 'cun aoibheann unit', '', 'phoenix park', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(365, 'st. mary''s hospital#', 429795081, NULL, '', NULL, '', '', '', 'castleblaney', 'monaghan', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(366, 'st. mary''s national school', NULL, NULL, '', NULL, 'enniskeane', '', '', '', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(367, 'st. mary''s orthopaedic hospital', NULL, NULL, '', NULL, '', '', '', 'gurranabraher', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(368, 'st. mary''s secondary school', NULL, NULL, '', NULL, '', '', '', 'mallow', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(369, 'st. mary''s special school', 469023745, NULL, '', NULL, 'johnstown', '', '', 'navan', 'meath', 'ireland', '', 'school', '2000-01-01', 'trade'),
(370, 'st. michaels house', 18671053, NULL, '', NULL, 'the beeches', 'donoughmede', '', 'dublin 13', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(371, 'st. michael''s house', NULL, NULL, '', NULL, 'portrane road', '', '', 'donabate', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(372, 'st. michaels school', NULL, NULL, '', NULL, '', '', '', 'tipperary', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(373, 'st. olaf''s national school', NULL, 876799857, '', NULL, 'balally drive', 'dundrum', '', 'dublin 14', 'dublin', 'ireland', '', 'education', '2000-01-01', 'trade'),
(374, 'st. oliver plunkett hospital', 429334488, NULL, '', NULL, 'service for the older people', 'dublin road', '', 'dundalk', 'louth', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(375, 'st. olivers national school', 6432047, 877559237, '', NULL, 'ballycasheen', '', '', 'killarney', 'kerry', 'ireland', '', 'education', '2000-01-01', 'trade'),
(376, 'st. patricks girls n.s.', 12893293, NULL, '', NULL, 'hollypark', 'foxrock avenue', 'foxrock', 'dublin 18', 'dublin', 'ireland', '', 'school', '2000-01-01', 'trade'),
(377, 'st. patricks hospital', NULL, NULL, '', NULL, '', '', '', 'fermoy', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(378, 'st. patrick''s hospital', 6270328, NULL, '', NULL, 'st. claires ward', '', '', 'cashel', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(379, 'st. patricks junior school', NULL, NULL, '', NULL, 'pierce road', '', '', 'enniscorthy', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(380, 'st. patricks lurgybrack national school', 749125455, 861605847, 'lurgybrack@eircom.net', NULL, '', '', '', 'letterkenny', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(381, 'st. patricks n.s.', 12861649, NULL, '', NULL, 'churtlestown', '', '', 'enniskerry', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(382, 'st. patricks special school', 439233657, NULL, '', NULL, 'bohrean hill', '', '', 'enniscorthy', 'wexford', 'ireland', '', 'education', '2000-01-01', 'trade'),
(383, 'st. pauls school', 21450131, NULL, '', NULL, 'sp3', 'bonnington', '', 'montenotte', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(384, 'st. peter''s infant school', NULL, NULL, '', NULL, 'castlepark', '', '', 'arklow', 'wicklow', 'ireland', '', '', '2000-01-01', 'trade'),
(385, 'st. raphael''s hospital', NULL, 872837487, '', NULL, 'oakvale', 'bungalow e', '', 'youghal', 'cork', 'ireland', '', '', '2015-07-23', 'trade'),
(386, 'st. rita''s respite', 5284350, NULL, '', NULL, 'thomas street', '', '', 'clonmel', 'tipperary', 'ireland', '', 'health sector', '2000-01-01', 'trade'),
(387, 'st. vincents'' daughters of charity', NULL, 8873530726, '', NULL, 'the orchard - room 22', 'navan road', '', 'dublin 22', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(388, 'st. vincent''s boy''s school', NULL, NULL, '', NULL, 'north william street', '', '', 'dublin 1', '', 'ireland', '', '', '2000-01-01', 'trade'),
(389, 'st. vincents center', 214391333, NULL, '', NULL, 'st mary''s rd', '', '', 'cork city', 'cork', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(390, 'st.bridgid''s ns', 6845366, NULL, '', NULL, 'duagh', '', '', 'listowl', 'kerry', 'ireland', '', 'education', '2000-01-01', 'trade'),
(391, 'stewarts home care', NULL, 16518335, '', NULL, '28 kilcronan crescent', '', '', 'clondalkin', 'dublin', 'ireland', '', '', '2000-01-01', 'trade'),
(392, 'stewarts hospital', 16518316, NULL, '', NULL, 'woodlands 28', 'palmerstown', '', 'dublin', 'dublin', 'ireland', '', 'hospital', '2000-01-01', 'trade'),
(393, 'stewarts training and resouce center, balgaddy', NULL, NULL, '', NULL, 'balgaddy', '', '', 'lucan', 'dublin', 'ireland', '', 'community hospital', '2000-01-01', 'trade'),
(394, 'straffan national school', 16272255, NULL, '', NULL, '', '', '', 'straffan', 'kildare', 'ireland', '', 'education', '2000-01-01', 'trade'),
(395, 'summerhill house', NULL, NULL, '', NULL, '', '', '', 'enniscorthy', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(396, 'suzanne''s house', 14521966, 872684095, '', 14525504, '6 main road', 'tallaght', 'd24', 'tallaght', 'dublin', 'ireland', '', 'care centre', '2015-07-29', 'trade'),
(397, 'teach alter nursing home', NULL, NULL, '', NULL, 'room 6', '', '', 'newmarket', 'cork', 'ireland', '', 'nursing home', '2015-08-11', 'trade'),
(398, 'the derg centre day care', 6746766, NULL, '', 6746758, 'gortlandroe', '', '', 'nenagh', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(399, 'the martin trust', 4894424312, NULL, '', NULL, '48 ballyclare road', '', '', 'newtownabbey', 'antrim', 'ireland', '', '', '2000-01-01', 'trade'),
(400, 'thurles institute of technology', NULL, NULL, '', NULL, '', '', '', 'thurles', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(401, 'thurles leisure centre', NULL, NULL, '', NULL, '', '', '', 'thurles', 'tipperary', 'ireland', '', '', '2000-01-01', 'trade'),
(402, 'togher boys school', NULL, NULL, '', NULL, 'togher', '', '', 'cork', 'cork', 'ireland', '', '', '2000-01-01', 'trade'),
(403, 'university of limerick', 61202959, 876993376, '', NULL, '', '', '', 'limerick city', 'limerick', 'ireland', '', 'education', '2000-01-01', 'trade'),
(404, 'ursline secondary school', NULL, 861730726, '', NULL, '', '', '', 'blackrock', 'cork', 'ireland', '', 'education', '2000-01-01', 'trade'),
(405, 'ursuline national school', NULL, NULL, '', NULL, '', '', '', 'waterford', 'waterford', 'ireland', '', '', '2000-01-01', 'trade'),
(406, 'val nolan', NULL, 862538341, '', NULL, 'monashennach', 'ardagh', '', 'limerick', 'limerick', 'ireland', '', '', '2015-06-19', 'trade'),
(407, 'vec school', NULL, NULL, '', NULL, 'high rd,', 'ballyraine national school', '', 'letterkenny', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(408, 'vicarstown national school', 217332179, NULL, 'vicarstownns@eircom.net', NULL, 'vicarstown', '', '', 'blarney', 'cork', 'ireland', '', 'school', '2000-01-01', 'trade'),
(409, 'virginia care center', 498546212, NULL, '', NULL, 'dublin road', '6bed ward', '', 'virginia', 'cavan', 'ireland', '', 'residential home', '2000-01-01', 'trade'),
(410, 'waterford insitute for technology', 51302000, 51845548, '', NULL, 'nurse education building', 'cork road', '', 'waterford', 'waterford', 'ireland', '', 'education', '2015-07-29', 'trade'),
(411, 'westmeath county council', NULL, NULL, '', NULL, 'halting site beside st. mary''s hospital', '', '', 'mullingar', 'westmeath', 'ireland', '', '', '2000-01-01', 'trade'),
(412, 'wexford county council', 539375602, 860786914, '', NULL, '3 the willows', 'hospital hill', '', 'bunclody', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(413, 'wexford general hospital', NULL, NULL, '', NULL, 'creditors dept (millbrook house)', '', '', 'enniscorthy', 'wexford', 'ireland', '', '', '2000-01-01', 'trade'),
(414, 'whitfield clinic', 51337400, NULL, '', NULL, 'butlerstown north', 'cork road', '', 'waterford', 'waterford', 'ireland', '', '', '2000-01-01', 'trade'),
(415, 'woodlands national school', 749124498, NULL, '', 749124219, '', '', '', 'letterkenny', 'donegal', 'ireland', '', 'education', '2000-01-01', 'trade'),
(416, 'youghal community hospital', 2492106, NULL, '', NULL, 'st angela''s room', '', '', 'youghal', 'cork', 'ireland', '', '', '2000-01-01', 'trade');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `contactid` int(12) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `job_title` varchar(35) NOT NULL,
  `phone_num` int(12) NOT NULL,
  `mobile_num` int(12) NOT NULL,
  `email1` int(35) NOT NULL,
  `email2` int(35) NOT NULL,
  `postal_address_line1` int(35) NOT NULL,
  `postal_address_line2` int(35) NOT NULL,
  `postal_address_line3` int(35) NOT NULL,
  `postal_address_line4` int(35) NOT NULL,
  `country` int(28) NOT NULL,
  `name_prefix` varchar(6) NOT NULL,
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerid` int(12) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_num` int(12) NOT NULL,
  `mobile_phone_num` int(12) NOT NULL,
  `email` varchar(35) NOT NULL,
  `pref_contact_type` varchar(10) NOT NULL,
  `address_line1` varchar(35) NOT NULL,
  `address_line2` varchar(35) NOT NULL,
  `address_line3` varchar(35) NOT NULL,
  `county` varchar(20) NOT NULL,
  `country` varchar(28) NOT NULL,
  `contract_type` varchar(20) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `given`
--

DROP TABLE IF EXISTS `given`;
CREATE TABLE IF NOT EXISTS `given` (
  `jobid` int(12) NOT NULL,
  `quoteid` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `job_number` varchar(12) NOT NULL,
  UNIQUE KEY `job_number` (`job_number`),
  KEY `jobid` (`jobid`),
  KEY `quoteid` (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `going_on`
--

DROP TABLE IF EXISTS `going_on`;
CREATE TABLE IF NOT EXISTS `going_on` (
  `userid` varchar(20) NOT NULL,
  `holidayid` int(6) NOT NULL,
  KEY `holidayid` (`holidayid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `holidays_and_leave`
--

DROP TABLE IF EXISTS `holidays_and_leave`;
CREATE TABLE IF NOT EXISTS `holidays_and_leave` (
  `holidayid` int(6) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`holidayid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `jobid` int(12) NOT NULL,
  `job_type` varchar(17) NOT NULL,
  `job_description` varchar(200) NOT NULL,
  `job_status` varchar(14) NOT NULL,
  `due_date` date NOT NULL,
  `time` time NOT NULL,
  `department` varchar(11) NOT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_location`
--

DROP TABLE IF EXISTS `job_location`;
CREATE TABLE IF NOT EXISTS `job_location` (
  `jobid` int(12) NOT NULL,
  `address_line1` varchar(35) NOT NULL,
  `address_line2` varchar(35) NOT NULL,
  `address_line3` varchar(35) NOT NULL,
  `county` varchar(15) NOT NULL,
  `country` varchar(28) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `finish_date` date NOT NULL,
  `finish_time` time NOT NULL,
  `labour_hours` int(3) NOT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_dept`
--

DROP TABLE IF EXISTS `maintenance_dept`;
CREATE TABLE IF NOT EXISTS `maintenance_dept` (
  `maintenanceid` int(12) NOT NULL,
  `email1` varchar(35) DEFAULT NULL,
  `email2` varchar(35) DEFAULT NULL,
  `email3` varchar(35) DEFAULT NULL,
  `phone_num1` int(12) DEFAULT NULL,
  `phone_num2` int(12) DEFAULT NULL,
  `phone_num3` int(12) DEFAULT NULL,
  `mobile_phone_num1` int(12) DEFAULT NULL,
  `mobile_phone_num2` int(12) DEFAULT NULL,
  `mobile_phone_num3` int(12) DEFAULT NULL,
  `address_line1` varchar(35) DEFAULT NULL,
  `address_line2` varchar(35) DEFAULT NULL,
  `address_line3` varchar(35) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `country` varchar(28) DEFAULT NULL,
  `pref_contact_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`maintenanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `needs`
--

DROP TABLE IF EXISTS `needs`;
CREATE TABLE IF NOT EXISTS `needs` (
  `serialid` varchar(17) NOT NULL,
  `jobid` int(12) NOT NULL,
  `quantity` int(11) NOT NULL,
  `installation_date` date NOT NULL,
  `service_date` date NOT NULL,
  `inspection_date` date NOT NULL,
  `ownership` tinyint(1) NOT NULL,
  KEY `serialid` (`serialid`),
  KEY `jobid` (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

DROP TABLE IF EXISTS `password`;
CREATE TABLE IF NOT EXISTS `password` (
  `password` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
CREATE TABLE IF NOT EXISTS `quotes` (
  `quoteid` varchar(7) NOT NULL,
  PRIMARY KEY (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requires`
--

DROP TABLE IF EXISTS `requires`;
CREATE TABLE IF NOT EXISTS `requires` (
  `companyid` int(12) DEFAULT NULL,
  `customerid` int(12) DEFAULT NULL,
  `jobid` int(12) NOT NULL,
  `booking_date` date DEFAULT NULL,
  KEY `companyid` (`companyid`),
  KEY `jobid` (`jobid`),
  KEY `customerid` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `serialid` varchar(17) NOT NULL,
  `name` varchar(35) NOT NULL,
  `product_description` varchar(200) NOT NULL,
  `quantity_in_stock` int(5) NOT NULL,
  PRIMARY KEY (`serialid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `mobile_phone_num` varchar(12) NOT NULL,
  `email` varchar(45) NOT NULL,
  `department` varchar(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `works_with`
--

DROP TABLE IF EXISTS `works_with`;
CREATE TABLE IF NOT EXISTS `works_with` (
  `contactid` int(12) NOT NULL,
  `companyid` int(12) NOT NULL,
  KEY `contactid` (`contactid`),
  KEY `contactid_2` (`contactid`),
  KEY `companyid` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_dept`
--
ALTER TABLE `accounts_dept`
  ADD CONSTRAINT `link accounts to company` FOREIGN KEY (`accountid`) REFERENCES `company` (`companyid`);

--
-- Constraints for table `admin_dept`
--
ALTER TABLE `admin_dept`
  ADD CONSTRAINT `link admin to company` FOREIGN KEY (`adminid`) REFERENCES `company` (`companyid`);

--
-- Constraints for table `clinical_dept`
--
ALTER TABLE `clinical_dept`
  ADD CONSTRAINT `link to company` FOREIGN KEY (`clinicalid`) REFERENCES `company` (`companyid`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `link contacts to works_with` FOREIGN KEY (`contactid`) REFERENCES `works_with` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `holidays_and_leave`
--
ALTER TABLE `holidays_and_leave`
  ADD CONSTRAINT `holidays_and_leave_ibfk_1` FOREIGN KEY (`holidayid`) REFERENCES `going_on` (`holidayid`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `link jobs to assigned` FOREIGN KEY (`jobid`) REFERENCES `assigned` (`jobid`) ON DELETE CASCADE,
  ADD CONSTRAINT `link jobs to given` FOREIGN KEY (`jobid`) REFERENCES `given` (`jobid`) ON DELETE CASCADE,
  ADD CONSTRAINT `link jobs to job_location` FOREIGN KEY (`jobid`) REFERENCES `job_location` (`jobid`) ON DELETE CASCADE,
  ADD CONSTRAINT `link jobs to needs` FOREIGN KEY (`jobid`) REFERENCES `needs` (`jobid`) ON DELETE CASCADE,
  ADD CONSTRAINT `link jobs to requires` FOREIGN KEY (`jobid`) REFERENCES `requires` (`jobid`) ON DELETE CASCADE;

--
-- Constraints for table `maintenance_dept`
--
ALTER TABLE `maintenance_dept`
  ADD CONSTRAINT `link maintenance to company` FOREIGN KEY (`maintenanceid`) REFERENCES `company` (`companyid`);

--
-- Constraints for table `needs`
--
ALTER TABLE `needs`
  ADD CONSTRAINT `link stock to needs` FOREIGN KEY (`serialid`) REFERENCES `stock` (`serialid`);

--
-- Constraints for table `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `link quotes to given` FOREIGN KEY (`quoteid`) REFERENCES `given` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `requires`
--
ALTER TABLE `requires`
  ADD CONSTRAINT `link requires to company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `link user to assigned` FOREIGN KEY (`userid`) REFERENCES `assigned` (`userid`) ON DELETE CASCADE,
  ADD CONSTRAINT `link user to password` FOREIGN KEY (`userid`) REFERENCES `password` (`userid`) ON DELETE CASCADE,
  ADD CONSTRAINT `link users to going_on` FOREIGN KEY (`userid`) REFERENCES `going_on` (`userid`);

--
-- Constraints for table `works_with`
--
ALTER TABLE `works_with`
  ADD CONSTRAINT `link works with to company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
