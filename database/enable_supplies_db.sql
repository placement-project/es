-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2016 at 07:50 PM
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
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
CREATE TABLE IF NOT EXISTS `workers` (
  `workerid` int(10) NOT NULL AUTO_INCREMENT,
  `name_prefix` varchar(6) DEFAULT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `job_title` varchar(35) DEFAULT NULL,
  `department` varchar(12) DEFAULT NULL,
  `pref_contact_type` varchar(10) DEFAULT NULL,
  `last_contact` date DEFAULT NULL,
  PRIMARY KEY (`workerid`)
) ENGINE=InnoDB AUTO_INCREMENT=529 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`workerid`, `name_prefix`, `first_name`, `last_name`, `job_title`, `department`, `pref_contact_type`, `last_contact`) VALUES
(1, '', 'doreen', 'tobin', '', '', '', '2014-03-07'),
(2, '', 'helen', 'guinan', '', '', '', '2008-03-04'),
(3, '', 'mark', 'hickey', '', '', '', '2000-01-01'),
(4, '', 'clare', 'rowe', '', '', '', '2014-02-10'),
(5, '', 'jessica', 'mcgrath', '', '', '', '2014-03-07'),
(6, '', 'jim', 'healy', '', '', '', '2013-08-12'),
(7, '', 'jim', 'kinsella', '', '', '', '2014-06-09'),
(8, '', 'martin', 'keegan', '', '', '', '2014-02-10'),
(9, '', 'mary', 'butler', '', '', '', '2000-01-01'),
(10, '', 'john', 'mcguire', 'director of nursing', '', '', '2014-03-10'),
(11, '', 'john', 'ryan', 'director of nursing', '', '', '2010-03-12'),
(12, '', 'john', 'walsh', 'director of nursing', '', '', '2014-03-10'),
(13, '', 'eamonn', 'martin', '', '', '', '2014-03-07'),
(14, '', 'pat', 'sealen', '', '', '', '2014-06-09'),
(15, '', 'jacqueline', 'hayes', '', '', '', '2014-01-28'),
(16, '', 'majella', 'french o''connor', '', '', '', '2010-03-15'),
(17, '', 'bernadette', 'mcmanus', '', '', '', '2010-03-15'),
(18, '', 'christina', 'ruane', '', '', '', '2010-03-15'),
(19, '', 'hilda', 'murphy', '', '', '', '2010-03-15'),
(20, '', 'onagh', 'baker', '', '', '', '2010-03-15'),
(21, '', 'agnes', 'malone', '', '', '', '2000-01-01'),
(22, '', 'alan', 'corcoran', '', '', '', '2000-01-01'),
(23, '', 'brendan', 'deering', '', '', '', '2000-01-01'),
(24, '', 'conor', 'smith', '', '', '', '2011-03-28'),
(25, '', 'daniel', 'mcinmery dunne', '', '', '', '2000-01-01'),
(26, '', 'donal', 'o''brien', '', '', '', '2000-01-01'),
(27, '', 'john', 'meeke', '', '', '', '2011-03-28'),
(28, '', 'ken', 'trimble', '', '', '', '2000-01-01'),
(29, '', 'kurtis', 'donnelly', '', '', '', '2000-01-01'),
(30, '', 'mary', 'dolan', '', '', '', '2009-08-25'),
(31, '', 'michael', 'joyce', '', '', '', '2000-01-01'),
(32, '', 'paddy', 'o''brien', '', '', '', '2014-02-17'),
(33, '', 'susan', 'mcnabb', '', '', '', '2013-08-21'),
(34, '', 'mary', 'o''connor', '', '', '', '2010-11-02'),
(35, '', 'kathleen', 'barry murphy', 'school principle', '', '', '2010-03-12'),
(36, '', 'pamala', 'emnis', 'occupational therapist', '', '', '2008-02-29'),
(37, '', 'ann', 'o''dwyer', '', '', '', '2014-03-10'),
(38, '', 'ann', 'o''dwyer', '', '', '', '2010-02-12'),
(39, '', 'avril', 'king', '', '', '', '2013-08-12'),
(40, '', 'cliona', 'ní néill', '', '', '', '2000-01-01'),
(41, '', 'evelyn', 'mcdermott', '', '', '', '2013-08-12'),
(42, '', 'mr', 'o''donnel', '', '', '', '2012-01-23'),
(43, '', 'ann', 'clusky', '', '', '', '2000-01-01'),
(44, '', 'ann', 'kildea', 'building and safety officer', '', '', '2014-06-09'),
(45, '', 'ann', 'sheedy', 'building and safety officer', '', '', '2013-11-27'),
(46, '', 'annmarie', 'flynn', 'building and safety officer', '', '', '2014-06-06'),
(47, '', 'anthony', 'higgins', '', '', '', '2008-02-12'),
(48, '', 'betty', 'synan', 'building and safety officer', '', '', '2013-11-27'),
(49, '', 'catherina', 'mcgrath', '', '', '', '2008-01-21'),
(50, '', 'christina', 'draney', '', '', '', '2014-01-28'),
(51, '', 'christina', 'pasley', 'building and safety officer', '', '', '2013-11-27'),
(52, '', 'con', 'o''sullivan', '', '', '', '2008-03-04'),
(53, '', 'donal', 'o''sullivan', '', '', '', '2010-11-08'),
(54, '', 'ethel', 'mccullagh', '', '', '', '2014-04-23'),
(55, '', 'jarleth', 'tunney', '', '', '', '2014-03-10'),
(56, '', 'joy', 'batzs', '', '', '', '2014-04-23'),
(57, '', 'katherine', 'duran', '', '', '', '2014-04-23'),
(58, '', 'kathy', 'doherty', 'building and safety officer', '', '', '2012-11-08'),
(59, '', 'lester', 'sutton', '', '', '', '2009-03-05'),
(60, '', 'liam', 'o''connor', '', '', '', '2013-02-19'),
(61, '', 'lilian', 'colgan', '', '', '', '2012-11-08'),
(62, '', 'limerick', 'institue of technology', 'building and safety officer', '', '', '2009-03-05'),
(63, '', 'liz', 'hayes', '', '', '', '2014-06-06'),
(64, '', 'lorraine', 'kenneally', '', '', '', '2014-06-06'),
(65, '', 'mai', 'thompson', '', '', '', '2013-02-19'),
(66, '', 'mairead', 'kerr', 'building and safety officer', '', '', '2010-02-12'),
(67, '', 'majella', 'french o''connor', '', '', '', '2010-07-06'),
(68, '', 'margaret', 'hughes', '', '', '', '2014-01-28'),
(69, '', 'margaret', 'lordan', '', '', '', '2000-01-01'),
(70, '', 'maureen', 'hannon', '', '', '', '2010-11-02'),
(71, '', 'mourice', 'o''riordan', '', '', '', '2014-04-23'),
(72, '', 'mrs', 'beatty', 'building and safety officer', '', '', '2014-06-06'),
(73, '', 'oonagh', 'magner', '', '', '', '2014-06-09'),
(74, '', 'paul', 'o''callaghan', '', '', '', '2014-04-23'),
(75, '', 'robert', 'blackmore', '', '', '', '2014-06-09'),
(76, '', 'stephanie', 'ryan', '', '', '', '2014-06-20'),
(77, '', 'tony', 'diver', '', '', '', '2014-01-20'),
(78, '', 'gabriel', 'keane', 'school principal', '', '', '2011-12-07'),
(79, '', 'george', 'mcmahon', 'school principal', '', '', '2008-04-09'),
(80, '', 'catherine', 'mcguiness', '', '', '', '2010-05-19'),
(81, '', 'ambrosse', 'lavery', '', '', '', '2014-01-22'),
(82, '', 'anthony', 'sheridan', '', '', '', '2000-01-01'),
(83, '', 'bernadette', 'kane', '', '', '', '2009-07-16'),
(84, '', 'caroline', 'acton', '', '', '', '2008-10-08'),
(85, '', 'elaine', 'mcgregors class', '', '', '', '2000-01-01'),
(86, '', 'elizabeth', 'halton', '', '', '', '2009-02-05'),
(87, '', 'jack', 'o''connor', '', '', '', '2000-01-01'),
(88, '', 'jane', 'fennessy', '', '', '', '2000-01-01'),
(89, '', 'jean', 'noctor', '', '', '', '2000-01-01'),
(90, '', 'kay', 'o''mahony', '', '', '', '2008-04-15'),
(91, '', 'margaret', 'mcnally', 'occupational therapist', '', '', '2000-01-01'),
(92, '', 'mary', 'seymore', '', '', '', '2000-01-01'),
(93, '', 'roseta', 'herr', '', '', '', '2000-01-01'),
(94, '', 'shane', 'mcloon', '', '', '', '2008-05-29'),
(95, '', 'stephen', 'boyd', '', '', '', '2000-01-01'),
(96, '', 'tricia', 'hamilton', '', '', '', '2000-01-01'),
(97, '', 'june', 'scannell', '', '', '', '2000-01-01'),
(98, '', 'cyril', 'crosbie', '', '', '', '2014-03-10'),
(99, '', 'karen', 'sheehan', '', '', '', '2010-09-14'),
(100, '', 'killarney', 'nursing home', '', '', '', '2014-07-11'),
(101, '', 'brendan', 'boyce', '', '', '', '2014-06-19'),
(102, '', 'deidre', 'courtney', '', '', '', '2014-06-19'),
(103, '', 'ger', 'o''doyal', '', '', '', '2014-06-19'),
(104, '', 'jennifer', 'quirke', '', '', '', '2014-06-19'),
(105, '', 'alan', 'smart', '', '', '', '2013-08-12'),
(106, '', 'anne', 'naughton', '', '', '', '2013-08-21'),
(107, '', 'brothers', 'of charity', '', '', '', '2013-08-21'),
(108, '', 'dairina', 'nic con iomaire', '', '', '', '2013-08-12'),
(109, '', 'denis', 'ferry', '', '', '', '2013-11-13'),
(110, '', 'ger', 'costello', '', '', '', '2013-08-12'),
(111, '', 'kathleen', 'corey', '', '', '', '2014-01-28'),
(112, '', 'margaret', 'bourke', '', '', '', '2013-08-21'),
(113, '', 'michelle', 'o''neill', '', '', '', '2013-08-12'),
(114, '', 'nicolas', 'dunne', '', '', '', '2000-01-01'),
(115, '', 'patrick', 'dwyer', '', '', '', '2011-06-17'),
(116, '', 'patrick', 'o''dwyer', '', '', '', '2000-01-01'),
(117, '', 'frank', 'devine', '', '', '', '2013-11-27'),
(118, '', 'mary', 'shanahan', '', '', '', '2014-02-17'),
(119, '', 'lorna', 'o''neill client', 'principal', '', '', '2013-08-06'),
(120, '', 'kevin', 'cusack', '', '', '', '2010-03-12'),
(121, '', 'jack', 'durkin', '', '', '', '2008-02-26'),
(122, '', 'ann', 'mcgrath', '', '', '', '2008-05-06'),
(123, '', 'jason', 'farrell', '', '', '', '2000-01-01'),
(124, '', 'liam', 'long', '', '', '', '2010-07-06'),
(125, '', 'yvonne', 'huston', 'administrator', '', '', '2008-04-15'),
(126, '', 'maura', 'ryan', '', '', '', '2009-07-23'),
(127, '', 'susan', 'doran', '', '', '', '2009-06-30'),
(128, '', 'una', 'baker', '', '', '', '2009-06-30'),
(129, '', 'jacqueline', 'o''reilly dillon', 'architect', '', '', '2014-03-10'),
(130, '', 'james', 'black', 'architect', '', '', '2014-03-10'),
(131, '', 'kathleen', 'doherty', 'architect', '', '', '2000-01-01'),
(132, '', 'kathleen', 'myers', 'architect', '', '', '2014-03-10'),
(133, '', 'mary', 'cooke', '', '', '', '2000-01-01'),
(134, '', 'sharon', 'friel', '', '', '', '2000-01-01'),
(135, '', 'clare', 'russell', '', '', '', '2014-07-11'),
(136, '', 'debbie', 'fahy', '', '', '', '2000-01-01'),
(137, '', 'margie', 'carty', '', '', '', '2013-08-12'),
(138, '', 'sinead', 'o''mahony', '', '', '', '2013-08-21'),
(139, '', 'joan', 'keehan', '', '', '', '2000-01-01'),
(140, '', 'mary', 'auchincloss', '', '', '', '2000-01-01'),
(141, '', 'patricia', 'mcnamee', '', '', '', '2000-01-01'),
(142, '', 'david', '& niall stewart', '', '', '', '2000-01-01'),
(143, '', 'martin', 'patwell', 'area manager', '', '', '2008-12-11'),
(144, '', 'neil', 'boyle', 'area manager', '', '', '2000-01-01'),
(145, '', 'dave', 'o''halloran', '', '', '', '2000-01-01'),
(146, '', 'tom', 'traynor', '', '', '', '2000-01-01'),
(147, '', 'elizabeth', 'coffey', '', '', '', '2014-07-11'),
(148, '', 'anne', 'gaffeny', 'director of services', '', '', '2011-08-08'),
(149, '', 'brigit', 'lang', 'director of services', '', '', '2011-08-08'),
(150, '', 'mary', 'pyne', 'director of services', '', '', '2012-08-24'),
(151, '', 'stephen', 'mahoney', 'director of services', '', '', '2000-01-01'),
(152, '', 'sue', 'islam', 'director of services', '', '', '2012-10-01'),
(153, '', 'jennifer', 'scott', '', '', '', '2014-02-10'),
(154, '', 'mary', 'moran', '', '', '', '2014-02-10'),
(155, '', 'ann', 'brouder', 'director of nursing', '', '', '2008-04-18'),
(156, '', 'cian', 'murphy', '', '', '', '2013-03-04'),
(157, '', 'gareth', 'mcmillan', 'occupational therapist', '', '', '2010-02-16'),
(158, '', 'ines', 'lawlor', '', '', '', '2008-03-14'),
(159, '', 'margaret', 'harte', '', '', '', '2000-01-01'),
(160, '', 'micheal', 'madden', '', '', '', '2012-01-20'),
(161, '', 'sr', 'catherine o''donovan', 'occupational therapist', '', '', '2008-02-28'),
(162, '', 'liam', 'aherne', 'services', '', '', '2000-01-01'),
(163, '', 'regina', 'brennan', '', '', '', '2000-01-01'),
(164, '', 'james', 'o''mahony', 'occupational therapist', '', '', '2000-01-01'),
(165, '', 'sean', 'o''connell', '', '', '', '2014-03-10'),
(166, '', 'carol', 'gannon', 'ceo', '', '', '2014-03-10'),
(167, '', 'pat', 'o''connor', 'nurse manager', '', '', '2012-07-20'),
(168, '', 'paul', 'cope', 'principal', '', '', '2014-06-09'),
(169, '', 'fred', 'lee', '', '', '', '2011-06-17'),
(170, '', 'kieran', 'byrne', '', '', '', '2013-01-14'),
(171, '', 'deirdre', 'kuaid', '', '', '', '2014-06-20'),
(172, '', 'aishling', 'barry', '', '', '', '2014-05-02'),
(173, '', 'anne', 'gaffney', '', '', '', '2014-05-02'),
(174, '', 'audrey', 'wright', '', '', '', '2014-05-02'),
(175, '', 'barry', 'mccauley', '', '', '', '2014-04-23'),
(176, '', 'bernard', 'ryan', '', '', '', '2012-04-26'),
(177, '', 'brendan', 'hanamy', '', '', '', '2014-05-02'),
(178, '', 'briege', 'laverty', '', '', '', '2014-05-02'),
(179, '', 'gerald', 'brennan', '', '', '', '2014-04-23'),
(180, '', 'jim', 'collins', '', '', '', '2014-05-02'),
(181, '', 'jodie', 'kelly', '', '', '', '2014-05-02'),
(182, '', 'john', 'mccormack', '', '', '', '2014-05-02'),
(183, '', 'kathleen', 'foley', '', '', '', '2014-05-02'),
(184, '', 'laura', 'hartrey', '', '', '', '2014-05-02'),
(185, '', 'maeve', 'lawlor', '', '', '', '2013-11-27'),
(186, '', 'marion', 'o''brien', '', '', '', '2014-05-02'),
(187, '', 'martina', 'mckinstrey', '', '', '', '2014-05-02'),
(188, '', 'michael', 'smyth', '', '', '', '2014-05-02'),
(189, '', 'miriam', 'butler', '', '', '', '2014-05-02'),
(190, '', 'niamh', 'mcmanus', '', '', '', '2014-05-02'),
(191, '', 'paddy', 'cowman', '', '', '', '2014-05-02'),
(192, '', 'paul', 'o''brien', '', '', '', '2014-05-02'),
(193, '', 'raymond', 'swan', '', '', '', '2000-01-01'),
(194, '', 'sandra', 'carroll', '', '', '', '2014-05-02'),
(195, '', 'sandra', 'collins', '', '', '', '2014-05-02'),
(196, '', 'sarah', 'gallagher', '', '', '', '2014-04-23'),
(197, '', 'sean', 'cullen', '', '', '', '2014-04-23'),
(198, '', 'stephen', 'eustace', '', '', '', '2014-05-02'),
(199, '', 'theresa', 'duffy', '', '', '', '2014-05-02'),
(200, '', 'tina', 'byrne', '', '', '', '2014-05-02'),
(201, '', 'tom', 'o''sullivan', '', '', '', '2014-05-02'),
(202, '', 'tom', 'sullivan', '', '', '', '2014-05-02'),
(203, '', 'yvonne', 'mckibbin', '', '', '', '2014-07-11'),
(204, '', 'sean', 'quish', '', '', '', '2000-01-01'),
(205, '', 'anthony', 'franey', '', '', '', '2013-09-02'),
(206, '', 'helen', 'lawrence', '', '', '', '2012-11-08'),
(207, '', 'rory', 'd''arcy', '', '', '', '2012-11-08'),
(208, '', 'rosie', 'gowran', '', '', '', '2012-11-08'),
(209, '', 'mary', 'prendergast', '', '', '', '2013-04-05'),
(210, '', 'joe', 'flawler', '', '', '', '2010-04-29'),
(211, '', 'mary', 'killane', 'manager', '', '', '2008-05-07'),
(212, '', 'sheila', 'murphy', '', '', '', '2008-04-02'),
(213, '', 'ann', 'costigan', '', '', '', '2014-04-23'),
(214, '', 'eamon', 'huges', '', '', '', '2009-08-17'),
(215, '', 'fiona', 'toolan', '', '', '', '2014-04-23'),
(216, '', 'frank', 'stephens', '', '', '', '2014-04-23'),
(217, '', 'patrick', 'spellman', '', '', '', '2014-04-23'),
(218, '', 'liam', 'fitzgerald', '', '', '', '2013-10-07'),
(219, '', 'margaret', 'wilson', '', '', '', '2013-10-07'),
(220, '', 'p', 'coady', '', '', '', '2012-04-16'),
(221, '', 'advance', 'maintenance', '', '', '', '2014-06-19'),
(222, '', 'aidan', 'o''brien', '', '', '', '2014-06-20'),
(223, '', 'alan', 'carrigan', '', '', '', '2014-06-19'),
(224, '', 'alice', 'duffy', '', '', '', '2014-06-19'),
(225, '', 'alice', 'malone', '', '', '', '2014-06-19'),
(226, '', 'andrew', 'farrell', '', '', '', '2013-11-27'),
(227, '', 'andrew', 'lambert', '', '', '', '2014-06-19'),
(228, '', 'ann', 'gaffney', '', '', '', '2014-06-19'),
(229, '', 'anne', 'connors', '', '', '', '2014-06-19'),
(230, '', 'anne', 'fleck byrne', '', '', '', '2014-06-19'),
(231, '', 'anne', 'o''leary', '', '', '', '2014-06-19'),
(232, '', 'anne', 'tierney', '', '', '', '2000-01-01'),
(233, '', 'annie', 'teresa grennan', '', '', '', '2014-06-19'),
(234, '', 'aoife', 'delaney', '', '', '', '2014-06-19'),
(235, '', 'aoife', 'delany', '', '', '', '2014-06-19'),
(236, '', 'aoife', 'delany', '', '', '', '2014-06-19'),
(237, '', 'ashling', 'quinn', '', '', '', '2000-01-01'),
(238, '', 'audrey', 'darby', '', '', '', '2014-06-19'),
(239, '', 'austin', 'daly', '', '', '', '2014-06-20'),
(240, '', 'avril', 'carberry', '', '', '', '2014-06-19'),
(241, '', 'avril', 'carbery', '', '', '', '2014-06-19'),
(242, '', 'batt', 'hegarty', '', '', '', '2014-06-19'),
(243, '', 'ber', 'power', '', '', '', '2000-01-01'),
(244, '', 'breda', 'sheehan', '', '', '', '2014-06-20'),
(245, '', 'brendan', 'byrne', '', '', '', '2014-06-19'),
(246, '', 'brigid', 'mcdonagh', '', '', '', '2000-01-01'),
(247, '', 'carmel', 'dempsey', '', '', '', '2014-02-17'),
(248, '', 'carol', 'hawkins', '', '', '', '2014-06-19'),
(249, '', 'catherine', 'fairclough', '', '', '', '2014-06-19'),
(250, '', 'cbc', 'secondary school', '', '', '', '2014-06-19'),
(251, '', 'celine', 'mulqueen', '', '', '', '2014-06-19'),
(252, '', 'cora', 'monaghan', '', '', '', '2000-01-01'),
(253, '', 'amy', 'monighan', '', '', '', '2013-08-12'),
(254, '', 'catherine', 'ivory', '', '', '', '2013-09-02'),
(255, '', 'deirdre', 'courtney', '', '', '', '2014-02-10'),
(256, '', 'ann', 'gaughran', 'director of services', '', '', '2014-06-09'),
(257, '', 'kay', 'o''keefe', 'director of services', '', '', '2013-01-14'),
(258, '', 'martina', 'wheelan', 'director of services', '', '', '2013-08-12'),
(259, '', 'nathan', 'forristal', 'director of services', '', '', '2013-01-14'),
(260, '', 'pat', 'o''halloran', 'director of services', '', '', '2013-11-13'),
(261, '', 'pat', 'o''halloran principal', 'director of services', '', '', '2013-02-21'),
(262, '', 'patrick', 'doran', 'director of services', '', '', '2013-11-13'),
(263, '', 'emer', 'murphy', '', '', '', '2008-03-12'),
(264, '', 'emily', 'mckenna', '', '', '', '2008-03-12'),
(265, '', 'fergall', 'mee', '', '', '', '2000-01-01'),
(266, '', 'lisa', 'coughlan', '', '', '', '2000-01-01'),
(267, '', 'sarah', 'hynes', 'school principle', '', '', '2000-01-01'),
(268, '', 'walter', 'maguire', 'school principle', '', '', '2008-04-09'),
(269, '', 'april', 'bryan', 'principal', '', '', '2012-07-16'),
(270, '', 'teresa', 'gordan', 'principal', '', '', '2012-07-16'),
(271, '', 'margaret', 'o''callaghan', '', '', '', '2011-05-04'),
(272, '', 'maria', 'o''riordan', '', '', '', '2011-11-23'),
(273, '', 'marie', 'leydon', '', '', '', '2012-06-18'),
(274, '', 'mary', 'brennan', '', '', '', '2011-11-23'),
(275, '', 'mary', 'mitchell', '', '', '', '2011-11-23'),
(276, '', 'mary', 'stack', '', '', '', '2011-11-23'),
(277, '', 'matthew', 'sharkey', '', '', '', '2011-11-23'),
(278, '', 'maura', 'hayes', '', '', '', '2011-11-23'),
(279, '', 'michael', 'bracken', '', '', '', '2011-11-23'),
(280, '', 'michael', 'doogan', '', '', '', '2011-11-23'),
(281, '', 'michelle', 'pender', '', '', '', '2011-11-23'),
(282, '', 'miriam', 'stokes', '', '', '', '2011-11-23'),
(283, '', 'mr', 'o''donoghue', '', '', '', '2012-03-26'),
(284, '', 'mrs a', 'mccarthy', '', '', '', '2011-11-23'),
(285, '', 'noel', 'mcgarr', '', '', '', '2011-05-04'),
(286, '', 'noreen', 'connolly', '', '', '', '2012-01-09'),
(287, '', 'nuala', 'boyd', '', '', '', '2011-11-23'),
(288, '', 'orla', 'murphy', '', '', '', '2011-11-23'),
(289, '', 'owen', 'ward', '', '', '', '2011-11-23'),
(290, '', 'pat', 'cronin', '', '', '', '2011-11-23'),
(291, '', 'pat', 'mangan', '', '', '', '2011-11-23'),
(292, '', 'pat', 'tobin', '', '', '', '2011-11-23'),
(293, '', 'patricia', 'brett', '', '', '', '2011-11-23'),
(294, '', 'patsy', 'o''keffe', '', '', '', '2011-11-23'),
(295, '', 'paul', '& michelle fitzpatrick', '', '', '', '2011-11-23'),
(296, '', 'paul', 'shee', '', '', '', '2011-05-04'),
(297, '', 'paula', 'steele', '', '', '', '2011-11-23'),
(298, '', 'pauline', 'vaughan', '', '', '', '2011-11-23'),
(299, '', 'principal', 'sodexo', '', '', '', '2011-11-23'),
(300, '', 'rebecca', 'davies', '', '', '', '2011-11-23'),
(301, '', 'rose', 'christie', '', '', '', '2011-11-23'),
(302, '', 'kathleen', 'o''mahony', 'director of nursing', '', '', '2009-07-16'),
(303, '', 'mairead', 'hallrohan', 'director of nursing', '', '', '2014-02-10'),
(304, '', 'paddy', 'mc inerney', 'director of nursing', '', '', '2014-02-10'),
(305, '', 'anne', 'o''dwyer', '', '', '', '2014-06-09'),
(306, '', 'anne', 'o''dwyer', '', '', '', '2011-08-10'),
(307, '', 'bernie', 'buckley', '', '', '', '2011-08-10'),
(308, '', 'cathal', 'o''riada', '', '', '', '2011-08-10'),
(309, '', 'gail', 'hickey', '', '', '', '2011-08-10'),
(310, '', 'jerry', 'llewellyn', '', '', '', '2011-08-10'),
(311, '', 'kayren', 'hayes', '', '', '', '2011-01-19'),
(312, '', 'mary', 'p. cousins', '', '', '', '2011-08-10'),
(313, '', 'mary', 'twohig mccarthy', '', '', '', '2013-11-13'),
(314, '', 'nuala', 'nolan', '', '', '', '2011-08-10'),
(315, '', 'ray', 'dwyer', '', '', '', '2011-01-19'),
(316, '', 'declan', 'ryan', '', '', '', '2014-06-09'),
(317, '', 'carmel', 'coomey', '', '', '', '2012-11-21'),
(318, '', 'louise', 'jackson', '', '', '', '2010-12-14'),
(319, '', 'sean', 'hanafin', '', '', '', '2013-02-20'),
(320, '', 'tara', 'fields', '', '', '', '2011-06-17'),
(321, '', 'eric', 'whelan', '', '', '', '2012-10-03'),
(322, '', 'anna', 'carr', '', '', '', '2010-05-24'),
(323, '', 'david', 'donergan', '', '', '', '2010-05-24'),
(324, '', 'tracy', 'harris', '', '', '', '2008-08-11'),
(325, '', 'kathleen', 'malloy', '', '', '', '2000-01-01'),
(326, '', 'julienne', 'donegan', '', '', '', '2014-06-09'),
(327, '', 'jean', 'mulvaney', '', '', '', '2000-01-01'),
(328, '', 'eddie', '& nell duffy', '', '', '', '2008-05-29'),
(329, '', 'michael', 'connolly', '', '', '', '2014-07-10'),
(330, '', 'michael', 'dunbarr', '', '', '', '2008-07-24'),
(331, '', 'pauline', 'travers', '', '', '', '2014-07-10'),
(332, '', 'john', 'scott', '', '', '', '2000-01-01'),
(333, '', 'michael', 'fanning', '', '', '', '2014-07-11'),
(334, '', 'a', 'another', '', '', '', '2011-01-19'),
(335, '', 'a', 'bunch of travellers', '', '', '', '2014-06-06'),
(336, '', 'breda', 'grealish', '', '', '', '2014-06-06'),
(337, '', 'catherine', 'farrell', '', '', '', '2013-11-27'),
(338, '', 'helen', 'mulroy', '', '', '', '2014-06-19'),
(339, '', 'john', 'campbell', '', '', '', '2014-01-28'),
(340, '', 'liam', 'mchugh', '', '', '', '2014-06-06'),
(341, '', 'don', 'campbell', '', '', '', '2008-07-14'),
(342, '', 'linda', 'mc carthy', '', '', '', '2008-07-14'),
(343, '', 'liz', 'james', '', '', '', '2008-07-14'),
(344, '', 'margaret', 'fitzgerald', '', '', '', '2008-07-14'),
(345, '', 'fiona', 'mcsweeney', '', '', '', '2000-01-01'),
(346, '', 'moira', 'grims', '', '', '', '2000-01-01'),
(347, '', 'ester', 'mcredmond', '', '', '', '2014-03-10'),
(348, '', 'karen', 'finson', '', '', '', '2014-03-10'),
(349, '', 'laureen', 'mckenna', '', '', '', '2012-04-13'),
(350, '', 'paddy', 'redmond', '', '', '', '2010-02-16'),
(351, '', 'carolin', 'ahlers', 'school principle', '', '', '2013-11-13'),
(352, '', 'colin', '& catherine sheehan', 'school principle', '', '', '2010-09-29'),
(353, '', 'clifford', 'martin', '', '', '', '2008-07-10'),
(354, '', 'garrett', 'hayes', '', '', '', '2008-07-10'),
(355, '', 'john', 'wycherley', '', '', '', '2008-07-10'),
(356, '', 'marc', 'sheehan', '', '', '', '2008-07-10'),
(357, '', 'liam', 'ryan', '', '', '', '2012-04-13'),
(358, '', 'noel', 'connolly', '', '', '', '2012-08-07'),
(359, '', 'theresa', 'smith', '', '', '', '2012-02-22'),
(360, '', 'mary', 'flanagan', '', '', '', '2008-05-06'),
(361, '', 'angela', 'hennesy', '', '', '', '2014-02-17'),
(362, '', 'margaret', 'kearney', '', '', '', '2014-02-17'),
(363, '', 'yvonne', 'mckibben', '', '', '', '2014-02-17'),
(364, '', 'mary', 'sheary', '', '', '', '2014-03-07'),
(365, '', 'margaret', 'langan', '', '', '', '2010-06-02'),
(366, '', 'nuala', 'o''reily', '', '', '', '2010-06-02'),
(367, '', 'david', '& deidre horan', 'school principle', '', '', '2014-06-09'),
(368, '', 'mary', 'mcswiney', 'principal', '', '', '2012-11-08'),
(369, '', 'maura', 'crowley', '', '', '', '2014-07-11'),
(370, '', 'colm', 'keher', '', '', '', '2014-02-10'),
(371, '', 'michele', 'cahalane', 'school principal', '', '', '2000-01-01'),
(372, '', 'michael', 'fogarty no longer has this', '', '', '', '2013-01-14'),
(373, '', 'kate', 'cullinane friel', '', '', '', '2013-06-21'),
(374, '', 'angela', 'cronin', '', '', '', '2008-09-16'),
(375, '', 'donal', 'mc kiernan', '', '', '', '2012-07-20'),
(376, '', 'william', 'mitchell', '', '', '', '2010-11-16'),
(377, '', 'john', 'patrick mccready', '', '', '', '2010-11-16'),
(378, '', 'yvonne', 'houston', '', '', '', '2010-11-16'),
(379, '', 'tony', 'heffernan', '', '', '', '2000-01-01'),
(380, '', 'sinead', 'seoighe', '', '', '', '2000-01-01'),
(381, '', 'monica', 'shannon', 'school principle', '', '', '2011-06-17'),
(382, '', 'aileen', 'costello', 'school principle', '', '', '2000-01-01'),
(383, '', 'gerard', 'mchale', 'school principal', '', '', '2011-08-08'),
(384, '', 'j', 'o''mahony', 'school principal', '', '', '2011-08-08'),
(385, '', 'judy', 'fahy', '', '', '', '2008-07-04'),
(386, '', 'dermot', 'healy', 'manager', '', '', '2000-01-01'),
(387, '', 'derry', 'mcmahon', '', '', '', '2014-01-28'),
(388, '', 'patrick', 'dawson', '', '', '', '2014-01-28'),
(389, '', 'eamon', 'corrigan', '', '', '', '2013-11-13'),
(390, '', 'jason', 'reylonds', '', '', '', '2013-11-13'),
(391, '', 'joe', 'flynn', '', '', '', '2000-01-01'),
(392, '', 'daniel', 'gubbins', '', '', '', '2000-01-01'),
(393, '', 'mary', 'power', '', '', '', '2010-11-02'),
(394, '', 'maurice', 'walsh', '', '', '', '2009-09-15'),
(395, '', 'liam', 'fitzgerald', 'maintenance manager', '', '', '2013-08-21'),
(396, '', 'marie', 'mcquillam', 'maintenance manager', '', '', '2010-09-15'),
(397, '', 'oonagh', 'magner', '', '', '', '2000-01-01'),
(398, '', 'denis', 'minihane', '', '', '', '2013-03-04'),
(399, '', 'margaret', 'butler', '', '', '', '2000-01-01'),
(400, '', 'stephen', 'mcnulty', '', '', '', '2000-01-01'),
(401, '', 'anne', 'davern', '', '', '', '2000-01-01'),
(402, '', 'bety', 'stack', '', '', '', '2000-01-01'),
(403, '', 'carolanne', 'fitzpatrick', '', '', '', '2000-01-01'),
(404, '', 'edward', 'o''kane', '', '', '', '2000-01-01'),
(405, '', 'linda', 'mccarthy', '', '', '', '2000-01-01'),
(406, '', 'val', 'nolan', '', '', '', '2000-01-01'),
(407, '', 'afoie', 'o''donohue', 'director of nursing', '', '', '2013-09-02'),
(408, '', 'carmel', 'connaughton', 'director of nursing', '', '', '2000-01-01'),
(409, '', 'helen', 'mulroy', 'director of nursing', '', '', '2013-09-02'),
(410, '', 'joe', 'cannon', 'director of nursing', '', '', '2013-09-02'),
(411, '', 'marie', 'breslin', 'director of nursing', '', '', '2013-09-02'),
(412, '', 'noelle', 'burke', 'director of nursing', '', '', '2013-09-02'),
(413, '', 'eunan', 'gallagher', 'school principal', '', '', '2000-01-01'),
(414, '', 'maurice', 'walsh', '', '', '', '2014-06-06'),
(415, '', 'bridie', 'murphy', '', '', '', '2000-01-01'),
(416, '', 'mary', 'dillan', '', '', '', '2000-01-01'),
(417, '', 'grainne', 'dooley', 'principal', '', '', '2011-08-10'),
(418, '', 'mary', 'stack', '', '', '', '2009-09-15'),
(419, '', 'laura', 'humphries', '', '', '', '2000-01-01'),
(420, '', 'leslie', 'mclaughlin', '', '', '', '2008-08-11'),
(421, '', 'geraldine', 'mclean', '', '', '', '2010-02-11'),
(422, '', 'katherine', 'kelly', '', '', '', '2011-08-11'),
(423, '', 'marian', 'hall', '', '', '', '2011-08-11'),
(424, '', 'marie', 'aiken', '', '', '', '2000-01-01'),
(425, '', 's', 'brophy', '', '', '', '2000-01-01'),
(426, '', 'blank', 'cogan', 'supplies dept.', '', '', '2011-10-21'),
(427, '', 'cathal', 'mulligan', '', '', '', '2000-01-01'),
(428, '', 'peter', 'forrest', 'maintenance', '', '', '2014-02-10'),
(429, '', 'yvonne', 'burd', 'maintenance', '', '', '2014-02-10'),
(430, '', 'diarmaid', 'hennessy', '', '', '', '2008-09-26'),
(431, '', 'n', 'finnegan', '', '', '', '2010-12-14'),
(432, '', 'noreen', 'mcsweeney', '', '', '', '2008-04-15'),
(433, '', 'pat', 'piggott', '', '', '', '2008-04-15'),
(434, '', 'margaret', 'o''sullivan', '', '', '', '2010-11-16'),
(435, '', 'ailbhe', 'king', 'school principle', '', '', '2008-03-04'),
(436, '', 'ciara', 'cunningham', 'school principle', '', '', '2012-01-20'),
(437, '', 'elaine', 'dalton', 'school principle', '', '', '2012-01-20'),
(438, '', 'tracy', 'hutchin', 'school principle', '', '', '2012-01-20'),
(439, '', 'mary', 'mcphilip', '', '', '', '2011-03-28'),
(440, '', 'anthony', 'leavy', '', '', '', '2013-06-21'),
(441, '', 'sinead', 'perez', '', '', '', '2000-01-01'),
(442, '', 'siobhan', 'bergin', '', '', '', '2000-01-01'),
(443, '', 'therese', 'mcdermott', '', '', '', '2000-01-01'),
(444, '', 'thomas', 'bruton', '', '', '', '2000-01-01'),
(445, '', 'tom', 'sargent', '', '', '', '2000-01-01'),
(446, '', 'trudie', 'rowan', '', '', '', '2000-01-01'),
(447, '', 'vincent', 'cagney', '', '', '', '2000-01-01'),
(448, '', 'stephen', 'harding', '', '', '', '2014-06-20'),
(449, '', 'finn', 'carey', '', '', '', '2000-01-01'),
(450, '', 'maeve', 'tierney', '', '', '', '2014-02-10'),
(451, '', 'marie', 'dunphy', '', '', '', '2011-08-10'),
(452, '', 'caroline', 'mc cormack', '', '', '', '2013-02-21'),
(453, '', 'daniel', 'ryan', '', '', '', '2008-01-21'),
(454, '', 'denis', 'welch', 'secretary', '', '', '2011-02-22'),
(455, '', 'eimear', 'goulding', 'secretary', '', '', '2011-02-22'),
(456, '', 'anthony', 'dormer', '', '', '', '2011-06-17'),
(457, '', 'kristy', 'sanderson', 'school principle', '', '', '2013-10-30'),
(458, '', 'ann', 'foxe', 'school principal', '', '', '2014-01-29'),
(459, '', 'sadie', 'mc kenna', '', '', '', '2008-10-07'),
(460, '', 'gillian', 'kelt', 'principal', '', '', '2009-11-11'),
(461, '', 'heather', 'lynch', '', '', '', '2000-01-01'),
(462, '', 'heather', 'lynch', '', '', '', '2014-01-20'),
(463, '', 'siobhan', 'taylor', '', '', '', '2000-01-01'),
(464, '', 'anne', 'lowry', 'director of servivce', '', '', '2013-10-30'),
(465, '', 'annemaree', 'quinn', 'director of servivce', '', '', '2013-10-30'),
(466, '', 'billy', 'rice', 'director of servivce', '', '', '2013-10-30'),
(467, '', 'dermot', 'duke', 'director of servivce', '', '', '2011-05-04'),
(468, '', 'derry', 'mcmahon', '', '', '', '2009-05-12'),
(469, '', 'des', 'connolly', 'director of servivce', '', '', '2014-02-10'),
(470, '', 'donal', 'o''murchu', 'director of services', '', '', '2013-10-30'),
(471, '', 'donal', 'o''murchu', 'director of services', '', '', '2013-10-30'),
(472, '', 'liz', 'carey', 'director of servivce', '', '', '2013-10-30'),
(473, '', 'orlaith', 'mangan', 'principal', '', '', '2000-01-01'),
(474, '', 'emer', 'murphy', '', '', '', '2011-08-02'),
(475, '', 'alice', 'kelly', 'manager', '', '', '2009-04-15'),
(476, '', 'anglea', 'keane', 'manager', '', '', '2000-01-01'),
(477, '', 'deirdre', 'o''sullivan', 'manager', '', '', '2000-01-01'),
(478, '', 'frances', 'winton', 'manager', '', '', '2009-04-15'),
(479, '', 'helen', 'lawrence', 'nurse manager', '', '', '2014-06-09'),
(480, '', 'marian', 'dillon', 'nurse manager', '', '', '2012-08-07'),
(481, '', 'terence', 'murphy', 'nurse manager', '', '', '2013-08-21'),
(482, '', 'donnan', 'jordan', '', '', '', '2000-01-01'),
(483, '', 'mary', 'verling', 'school principal', '', '', '2010-03-12'),
(484, '', 'sr', 'jean browne', 'school principal', '', '', '2013-06-24'),
(485, '', 'olivia', 'buckley', '', '', '', '2008-10-21'),
(486, '', 'john', 'stack', '', '', '', '2000-01-01'),
(487, '', 'michael', 'cronin', '', '', '', '2013-08-12'),
(488, '', 'michelle', 'foley', '', '', '', '2011-09-12'),
(489, '', 'jill', 'carey', '', '', '', '2014-03-10'),
(490, '', 'linda', 'leahy', '', '', '', '2014-06-09'),
(491, '', 'jarleth', 'tunney', '', '', '', '2012-01-20'),
(492, '', 'jonna', 'goranson', 'school principal', '', '', '2012-03-26'),
(493, '', 'ann', 'brennan', '', '', '', '2014-06-09'),
(494, '', 'anne', 'drake', '', '', '', '2014-06-09'),
(495, '', 'danny', 'doherty', '', '', '', '2014-06-09'),
(496, '', 'georgina', 'mccudden', '', '', '', '2014-08-15'),
(497, '', 'geraldine', 'coyle', '', '', '', '2014-02-10'),
(498, '', 'geraldine', 'mc clean', '', '', '', '2014-06-09'),
(499, '', 'jacinta', 'lyons', '', '', '', '2008-04-14'),
(500, '', 'jim', 'brennan', '', '', '', '2014-06-09'),
(501, '', 'kathleen', 'barrett', '', '', '', '2014-08-15'),
(502, '', 'margaret', 'maguire', '', '', '', '2014-06-09'),
(503, '', 'michael', 'o''donnell', '', '', '', '2014-06-09'),
(504, '', 'peter', 'mchugh', '', '', '', '2000-01-01'),
(505, '', 'seamus', 'o''branainn', '', '', '', '2014-06-09'),
(506, '', 'susan', 'clarke', '', '', '', '2014-06-09'),
(507, '', 'tony', 'kitterick', '', '', '', '2010-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `works_with`
--

DROP TABLE IF EXISTS `works_with`;
CREATE TABLE IF NOT EXISTS `works_with` (
  `workerid` int(10) NOT NULL,
  `companyid` int(10) NOT NULL,
  KEY `contactid` (`workerid`),
  KEY `contactid_2` (`workerid`),
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
