-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 03:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'nimda', 'ee10c315eba2c75b403ea99136f5b48d', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `image` varchar(255) DEFAULT 'default.jpg',
  `email` varchar(128) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `nisn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nama`, `image`, `email`, `no_hp`, `nisn`) VALUES
(586, 'username580', 'default.jpg', 'email580@gmail.com', '01580', 1580),
(587, 'username581', 'default.jpg', 'email581@gmail.com', '01581', 1581),
(588, 'username582', 'default.jpg', 'email582@gmail.com', '01582', 1582),
(589, 'username583', 'default.jpg', 'email583@gmail.com', '01583', 1583),
(590, 'username584', 'default.jpg', 'email584@gmail.com', '01584', 1584),
(591, 'username585', 'default.jpg', 'email585@gmail.com', '01585', 1585),
(592, 'username586', 'default.jpg', 'email586@gmail.com', '01586', 1586),
(593, 'username587', 'default.jpg', 'email587@gmail.com', '01587', 1587),
(594, 'username588', 'default.jpg', 'email588@gmail.com', '01588', 1588),
(595, 'username589', 'default.jpg', 'email589@gmail.com', '01589', 1589),
(596, 'username590', 'default.jpg', 'email590@gmail.com', '01590', 1590),
(597, 'username591', 'default.jpg', 'email591@gmail.com', '01591', 1591),
(598, 'username592', 'default.jpg', 'email592@gmail.com', '01592', 1592),
(599, 'username593', 'default.jpg', 'email593@gmail.com', '01593', 1593),
(600, 'username594', 'default.jpg', 'email594@gmail.com', '01594', 1594),
(601, 'username595', 'default.jpg', 'email595@gmail.com', '01595', 1595),
(602, 'username596', 'default.jpg', 'email596@gmail.com', '01596', 1596),
(603, 'username597', 'default.jpg', 'email597@gmail.com', '01597', 1597),
(604, 'username598', 'default.jpg', 'email598@gmail.com', '01598', 1598),
(605, 'username599', 'default.jpg', 'email599@gmail.com', '01599', 1599),
(606, 'username600', 'default.jpg', 'email600@gmail.com', '01600', 1600),
(607, 'username601', 'default.jpg', 'email601@gmail.com', '01601', 1601),
(608, 'username602', 'default.jpg', 'email602@gmail.com', '01602', 1602),
(609, 'username603', 'default.jpg', 'email603@gmail.com', '01603', 1603),
(610, 'username604', 'default.jpg', 'email604@gmail.com', '01604', 1604),
(611, 'username605', 'default.jpg', 'email605@gmail.com', '01605', 1605),
(612, 'username606', 'default.jpg', 'email606@gmail.com', '01606', 1606),
(613, 'username607', 'default.jpg', 'email607@gmail.com', '01607', 1607),
(614, 'username608', 'default.jpg', 'email608@gmail.com', '01608', 1608),
(615, 'username609', 'default.jpg', 'email609@gmail.com', '01609', 1609),
(616, 'username610', 'default.jpg', 'email610@gmail.com', '01610', 1610),
(617, 'username611', 'default.jpg', 'email611@gmail.com', '01611', 1611),
(618, 'username612', 'default.jpg', 'email612@gmail.com', '01612', 1612),
(619, 'username613', 'default.jpg', 'email613@gmail.com', '01613', 1613),
(620, 'username614', 'default.jpg', 'email614@gmail.com', '01614', 1614),
(621, 'username615', 'default.jpg', 'email615@gmail.com', '01615', 1615),
(622, 'username616', 'default.jpg', 'email616@gmail.com', '01616', 1616),
(623, 'username617', 'default.jpg', 'email617@gmail.com', '01617', 1617),
(624, 'username618', 'default.jpg', 'email618@gmail.com', '01618', 1618),
(625, 'username619', 'default.jpg', 'email619@gmail.com', '01619', 1619),
(626, 'username620', 'default.jpg', 'email620@gmail.com', '01620', 1620),
(627, 'username621', 'default.jpg', 'email621@gmail.com', '01621', 1621),
(628, 'username622', 'default.jpg', 'email622@gmail.com', '01622', 1622),
(629, 'username623', 'default.jpg', 'email623@gmail.com', '01623', 1623),
(630, 'username624', 'default.jpg', 'email624@gmail.com', '01624', 1624),
(631, 'username625', 'default.jpg', 'email625@gmail.com', '01625', 1625),
(632, 'username626', 'default.jpg', 'email626@gmail.com', '01626', 1626),
(633, 'username627', 'default.jpg', 'email627@gmail.com', '01627', 1627),
(634, 'username628', 'default.jpg', 'email628@gmail.com', '01628', 1628),
(635, 'username629', 'default.jpg', 'email629@gmail.com', '01629', 1629),
(636, 'username630', 'default.jpg', 'email630@gmail.com', '01630', 1630),
(637, 'username631', 'default.jpg', 'email631@gmail.com', '01631', 1631),
(638, 'username632', 'default.jpg', 'email632@gmail.com', '01632', 1632),
(639, 'username633', 'default.jpg', 'email633@gmail.com', '01633', 1633),
(640, 'username634', 'default.jpg', 'email634@gmail.com', '01634', 1634),
(641, 'username635', 'default.jpg', 'email635@gmail.com', '01635', 1635),
(642, 'username636', 'default.jpg', 'email636@gmail.com', '01636', 1636),
(643, 'username637', 'default.jpg', 'email637@gmail.com', '01637', 1637),
(644, 'username638', 'default.jpg', 'email638@gmail.com', '01638', 1638),
(645, 'username639', 'default.jpg', 'email639@gmail.com', '01639', 1639),
(646, 'username640', 'default.jpg', 'email640@gmail.com', '01640', 1640),
(647, 'username641', 'default.jpg', 'email641@gmail.com', '01641', 1641),
(648, 'username642', 'default.jpg', 'email642@gmail.com', '01642', 1642),
(649, 'username643', 'default.jpg', 'email643@gmail.com', '01643', 1643),
(650, 'username644', 'default.jpg', 'email644@gmail.com', '01644', 1644),
(651, 'username645', 'default.jpg', 'email645@gmail.com', '01645', 1645),
(652, 'username646', 'default.jpg', 'email646@gmail.com', '01646', 1646),
(653, 'username647', 'default.jpg', 'email647@gmail.com', '01647', 1647),
(654, 'username648', 'default.jpg', 'email648@gmail.com', '01648', 1648),
(655, 'username649', 'default.jpg', 'email649@gmail.com', '01649', 1649),
(656, 'username650', 'default.jpg', 'email650@gmail.com', '01650', 1650),
(657, 'username651', 'default.jpg', 'email651@gmail.com', '01651', 1651),
(658, 'username652', 'default.jpg', 'email652@gmail.com', '01652', 1652),
(659, 'username653', 'default.jpg', 'email653@gmail.com', '01653', 1653),
(660, 'username654', 'default.jpg', 'email654@gmail.com', '01654', 1654),
(661, 'username655', 'default.jpg', 'email655@gmail.com', '01655', 1655),
(662, 'username656', 'default.jpg', 'email656@gmail.com', '01656', 1656),
(663, 'username657', 'default.jpg', 'email657@gmail.com', '01657', 1657),
(664, 'username658', 'default.jpg', 'email658@gmail.com', '01658', 1658),
(665, 'username659', 'default.jpg', 'email659@gmail.com', '01659', 1659),
(666, 'username660', 'default.jpg', 'email660@gmail.com', '01660', 1660),
(667, 'username661', 'default.jpg', 'email661@gmail.com', '01661', 1661),
(668, 'username662', 'default.jpg', 'email662@gmail.com', '01662', 1662),
(669, 'username663', 'default.jpg', 'email663@gmail.com', '01663', 1663),
(670, 'username664', 'default.jpg', 'email664@gmail.com', '01664', 1664),
(671, 'username665', 'default.jpg', 'email665@gmail.com', '01665', 1665),
(672, 'username666', 'default.jpg', 'email666@gmail.com', '01666', 1666),
(673, 'username667', 'default.jpg', 'email667@gmail.com', '01667', 1667),
(674, 'username668', 'default.jpg', 'email668@gmail.com', '01668', 1668),
(675, 'username669', 'default.jpg', 'email669@gmail.com', '01669', 1669),
(676, 'username670', 'default.jpg', 'email670@gmail.com', '01670', 1670),
(677, 'username671', 'default.jpg', 'email671@gmail.com', '01671', 1671),
(678, 'username672', 'default.jpg', 'email672@gmail.com', '01672', 1672),
(679, 'username673', 'default.jpg', 'email673@gmail.com', '01673', 1673),
(680, 'username674', 'default.jpg', 'email674@gmail.com', '01674', 1674),
(681, 'username675', 'default.jpg', 'email675@gmail.com', '01675', 1675),
(682, 'username676', 'default.jpg', 'email676@gmail.com', '01676', 1676),
(683, 'username677', 'default.jpg', 'email677@gmail.com', '01677', 1677),
(684, 'username678', 'default.jpg', 'email678@gmail.com', '01678', 1678),
(685, 'username679', 'default.jpg', 'email679@gmail.com', '01679', 1679),
(686, 'username680', 'default.jpg', 'email680@gmail.com', '01680', 1680),
(687, 'username681', 'default.jpg', 'email681@gmail.com', '01681', 1681),
(688, 'username682', 'default.jpg', 'email682@gmail.com', '01682', 1682),
(689, 'username683', 'default.jpg', 'email683@gmail.com', '01683', 1683),
(690, 'username684', 'default.jpg', 'email684@gmail.com', '01684', 1684),
(691, 'username685', 'default.jpg', 'email685@gmail.com', '01685', 1685),
(692, 'username686', 'default.jpg', 'email686@gmail.com', '01686', 1686),
(693, 'username687', 'default.jpg', 'email687@gmail.com', '01687', 1687),
(694, 'username688', 'default.jpg', 'email688@gmail.com', '01688', 1688),
(695, 'username689', 'default.jpg', 'email689@gmail.com', '01689', 1689),
(696, 'username690', 'default.jpg', 'email690@gmail.com', '01690', 1690),
(697, 'username691', 'default.jpg', 'email691@gmail.com', '01691', 1691),
(698, 'username692', 'default.jpg', 'email692@gmail.com', '01692', 1692),
(699, 'username693', 'default.jpg', 'email693@gmail.com', '01693', 1693),
(700, 'username694', 'default.jpg', 'email694@gmail.com', '01694', 1694),
(701, 'username695', 'default.jpg', 'email695@gmail.com', '01695', 1695),
(702, 'username696', 'default.jpg', 'email696@gmail.com', '01696', 1696),
(703, 'username697', 'default.jpg', 'email697@gmail.com', '01697', 1697),
(704, 'username698', 'default.jpg', 'email698@gmail.com', '01698', 1698),
(705, 'username699', 'default.jpg', 'email699@gmail.com', '01699', 1699),
(706, 'username700', 'default.jpg', 'email700@gmail.com', '01700', 1700),
(707, 'username701', 'default.jpg', 'email701@gmail.com', '01701', 1701),
(708, 'username702', 'default.jpg', 'email702@gmail.com', '01702', 1702),
(709, 'username703', 'default.jpg', 'email703@gmail.com', '01703', 1703),
(710, 'username704', 'default.jpg', 'email704@gmail.com', '01704', 1704),
(711, 'username705', 'default.jpg', 'email705@gmail.com', '01705', 1705),
(712, 'username706', 'default.jpg', 'email706@gmail.com', '01706', 1706),
(713, 'username707', 'default.jpg', 'email707@gmail.com', '01707', 1707),
(714, 'username708', 'default.jpg', 'email708@gmail.com', '01708', 1708),
(715, 'username709', 'default.jpg', 'email709@gmail.com', '01709', 1709),
(716, 'username710', 'default.jpg', 'email710@gmail.com', '01710', 1710),
(717, 'username711', 'default.jpg', 'email711@gmail.com', '01711', 1711),
(718, 'username712', 'default.jpg', 'email712@gmail.com', '01712', 1712),
(719, 'username713', 'default.jpg', 'email713@gmail.com', '01713', 1713),
(720, 'username714', 'default.jpg', 'email714@gmail.com', '01714', 1714),
(721, 'username715', 'default.jpg', 'email715@gmail.com', '01715', 1715),
(722, 'username716', 'default.jpg', 'email716@gmail.com', '01716', 1716),
(723, 'username717', 'default.jpg', 'email717@gmail.com', '01717', 1717),
(724, 'username718', 'default.jpg', 'email718@gmail.com', '01718', 1718),
(725, 'username719', 'default.jpg', 'email719@gmail.com', '01719', 1719),
(726, 'username720', 'default.jpg', 'email720@gmail.com', '01720', 1720),
(727, 'username721', 'default.jpg', 'email721@gmail.com', '01721', 1721),
(728, 'username722', 'default.jpg', 'email722@gmail.com', '01722', 1722),
(729, 'username723', 'default.jpg', 'email723@gmail.com', '01723', 1723),
(730, 'username724', 'default.jpg', 'email724@gmail.com', '01724', 1724),
(731, 'username725', 'default.jpg', 'email725@gmail.com', '01725', 1725),
(732, 'username726', 'default.jpg', 'email726@gmail.com', '01726', 1726),
(733, 'username727', 'default.jpg', 'email727@gmail.com', '01727', 1727),
(734, 'username728', 'default.jpg', 'email728@gmail.com', '01728', 1728),
(735, 'username729', 'default.jpg', 'email729@gmail.com', '01729', 1729),
(736, 'username730', 'default.jpg', 'email730@gmail.com', '01730', 1730),
(737, 'username731', 'default.jpg', 'email731@gmail.com', '01731', 1731),
(738, 'username732', 'default.jpg', 'email732@gmail.com', '01732', 1732),
(739, 'username733', 'default.jpg', 'email733@gmail.com', '01733', 1733),
(740, 'username734', 'default.jpg', 'email734@gmail.com', '01734', 1734),
(741, 'username735', 'default.jpg', 'email735@gmail.com', '01735', 1735),
(742, 'username736', 'default.jpg', 'email736@gmail.com', '01736', 1736),
(743, 'username737', 'default.jpg', 'email737@gmail.com', '01737', 1737),
(744, 'username738', 'default.jpg', 'email738@gmail.com', '01738', 1738),
(745, 'username739', 'default.jpg', 'email739@gmail.com', '01739', 1739),
(746, 'username740', 'default.jpg', 'email740@gmail.com', '01740', 1740),
(747, 'username741', 'default.jpg', 'email741@gmail.com', '01741', 1741),
(748, 'username742', 'default.jpg', 'email742@gmail.com', '01742', 1742),
(749, 'username743', 'default.jpg', 'email743@gmail.com', '01743', 1743),
(750, 'username744', 'default.jpg', 'email744@gmail.com', '01744', 1744),
(751, 'username745', 'default.jpg', 'email745@gmail.com', '01745', 1745),
(752, 'username746', 'default.jpg', 'email746@gmail.com', '01746', 1746),
(753, 'username747', 'default.jpg', 'email747@gmail.com', '01747', 1747),
(754, 'username748', 'default.jpg', 'email748@gmail.com', '01748', 1748),
(755, 'username749', 'default.jpg', 'email749@gmail.com', '01749', 1749),
(756, 'username750', 'default.jpg', 'email750@gmail.com', '01750', 1750),
(757, 'username751', 'default.jpg', 'email751@gmail.com', '01751', 1751),
(758, 'username752', 'default.jpg', 'email752@gmail.com', '01752', 1752),
(759, 'username753', 'default.jpg', 'email753@gmail.com', '01753', 1753),
(760, 'username754', 'default.jpg', 'email754@gmail.com', '01754', 1754),
(761, 'username755', 'default.jpg', 'email755@gmail.com', '01755', 1755),
(762, 'username756', 'default.jpg', 'email756@gmail.com', '01756', 1756),
(763, 'username757', 'default.jpg', 'email757@gmail.com', '01757', 1757),
(764, 'username758', 'default.jpg', 'email758@gmail.com', '01758', 1758),
(765, 'username759', 'default.jpg', 'email759@gmail.com', '01759', 1759),
(766, 'username760', 'default.jpg', 'email760@gmail.com', '01760', 1760),
(767, 'username761', 'default.jpg', 'email761@gmail.com', '01761', 1761),
(768, 'username762', 'default.jpg', 'email762@gmail.com', '01762', 1762),
(769, 'username763', 'default.jpg', 'email763@gmail.com', '01763', 1763),
(770, 'username764', 'default.jpg', 'email764@gmail.com', '01764', 1764),
(771, 'username765', 'default.jpg', 'email765@gmail.com', '01765', 1765),
(772, 'username766', 'default.jpg', 'email766@gmail.com', '01766', 1766),
(773, 'username767', 'default.jpg', 'email767@gmail.com', '01767', 1767),
(774, 'username768', 'default.jpg', 'email768@gmail.com', '01768', 1768),
(775, 'username769', 'default.jpg', 'email769@gmail.com', '01769', 1769),
(776, 'username770', 'default.jpg', 'email770@gmail.com', '01770', 1770),
(777, 'username771', 'default.jpg', 'email771@gmail.com', '01771', 1771),
(778, 'username772', 'default.jpg', 'email772@gmail.com', '01772', 1772),
(779, 'username773', 'default.jpg', 'email773@gmail.com', '01773', 1773),
(780, 'username774', 'default.jpg', 'email774@gmail.com', '01774', 1774),
(781, 'username775', 'default.jpg', 'email775@gmail.com', '01775', 1775),
(782, 'username776', 'default.jpg', 'email776@gmail.com', '01776', 1776),
(783, 'username777', 'default.jpg', 'email777@gmail.com', '01777', 1777),
(784, 'username778', 'default.jpg', 'email778@gmail.com', '01778', 1778),
(785, 'username779', 'default.jpg', 'email779@gmail.com', '01779', 1779),
(786, 'username780', 'default.jpg', 'email780@gmail.com', '01780', 1780),
(787, 'username781', 'default.jpg', 'email781@gmail.com', '01781', 1781),
(788, 'username782', 'default.jpg', 'email782@gmail.com', '01782', 1782),
(789, 'username783', 'default.jpg', 'email783@gmail.com', '01783', 1783),
(790, 'username784', 'default.jpg', 'email784@gmail.com', '01784', 1784),
(791, 'username785', 'default.jpg', 'email785@gmail.com', '01785', 1785),
(792, 'username786', 'default.jpg', 'email786@gmail.com', '01786', 1786),
(793, 'username787', 'default.jpg', 'email787@gmail.com', '01787', 1787),
(794, 'username788', 'default.jpg', 'email788@gmail.com', '01788', 1788),
(795, 'username789', 'default.jpg', 'email789@gmail.com', '01789', 1789),
(796, 'username790', 'default.jpg', 'email790@gmail.com', '01790', 1790),
(797, 'username791', 'default.jpg', 'email791@gmail.com', '01791', 1791),
(798, 'username792', 'default.jpg', 'email792@gmail.com', '01792', 1792),
(799, 'username793', 'default.jpg', 'email793@gmail.com', '01793', 1793),
(800, 'username794', 'default.jpg', 'email794@gmail.com', '01794', 1794),
(801, 'username795', 'default.jpg', 'email795@gmail.com', '01795', 1795),
(802, 'username796', 'default.jpg', 'email796@gmail.com', '01796', 1796),
(803, 'username797', 'default.jpg', 'email797@gmail.com', '01797', 1797),
(804, 'username798', 'default.jpg', 'email798@gmail.com', '01798', 1798),
(805, 'username799', 'default.jpg', 'email799@gmail.com', '01799', 1799),
(806, 'username800', 'default.jpg', 'email800@gmail.com', '01800', 1800),
(807, 'username801', 'default.jpg', 'email801@gmail.com', '01801', 1801),
(808, 'username802', 'default.jpg', 'email802@gmail.com', '01802', 1802),
(809, 'username803', 'default.jpg', 'email803@gmail.com', '01803', 1803),
(810, 'username804', 'default.jpg', 'email804@gmail.com', '01804', 1804),
(811, 'username805', 'default.jpg', 'email805@gmail.com', '01805', 1805),
(812, 'username806', 'default.jpg', 'email806@gmail.com', '01806', 1806),
(813, 'username807', 'default.jpg', 'email807@gmail.com', '01807', 1807),
(814, 'username808', 'default.jpg', 'email808@gmail.com', '01808', 1808),
(815, 'username809', 'default.jpg', 'email809@gmail.com', '01809', 1809),
(816, 'username810', 'default.jpg', 'email810@gmail.com', '01810', 1810),
(817, 'username811', 'default.jpg', 'email811@gmail.com', '01811', 1811),
(818, 'username812', 'default.jpg', 'email812@gmail.com', '01812', 1812),
(819, 'username813', 'default.jpg', 'email813@gmail.com', '01813', 1813),
(820, 'username814', 'default.jpg', 'email814@gmail.com', '01814', 1814),
(821, 'username815', 'default.jpg', 'email815@gmail.com', '01815', 1815),
(822, 'username816', 'default.jpg', 'email816@gmail.com', '01816', 1816),
(823, 'username817', 'default.jpg', 'email817@gmail.com', '01817', 1817),
(824, 'username818', 'default.jpg', 'email818@gmail.com', '01818', 1818),
(825, 'username819', 'default.jpg', 'email819@gmail.com', '01819', 1819),
(826, 'username820', 'default.jpg', 'email820@gmail.com', '01820', 1820),
(827, 'username821', 'default.jpg', 'email821@gmail.com', '01821', 1821),
(828, 'username822', 'default.jpg', 'email822@gmail.com', '01822', 1822),
(829, 'username823', 'default.jpg', 'email823@gmail.com', '01823', 1823),
(830, 'username824', 'default.jpg', 'email824@gmail.com', '01824', 1824),
(831, 'username825', 'default.jpg', 'email825@gmail.com', '01825', 1825),
(832, 'username826', 'default.jpg', 'email826@gmail.com', '01826', 1826),
(858, 'username852', 'default.jpg', 'email852@gmail.com', '01852', 1852),
(859, 'username853', 'default.jpg', 'email853@gmail.com', '01853', 1853),
(860, 'username854', 'default.jpg', 'email854@gmail.com', '01854', 1854),
(861, 'username855', 'default.jpg', 'email855@gmail.com', '01855', 1855),
(862, 'username856', 'default.jpg', 'email856@gmail.com', '01856', 1856),
(863, 'username857', 'default.jpg', 'email857@gmail.com', '01857', 1857),
(864, 'username858', 'default.jpg', 'email858@gmail.com', '01858', 1858),
(865, 'username859', 'default.jpg', 'email859@gmail.com', '01859', 1859),
(866, 'username860', 'default.jpg', 'email860@gmail.com', '01860', 1860),
(867, 'username861', 'default.jpg', 'email861@gmail.com', '01861', 1861),
(868, 'username862', 'default.jpg', 'email862@gmail.com', '01862', 1862),
(869, 'username863', 'default.jpg', 'email863@gmail.com', '01863', 1863),
(870, 'username864', 'default.jpg', 'email864@gmail.com', '01864', 1864),
(871, 'username865', 'default.jpg', 'email865@gmail.com', '01865', 1865),
(872, 'username866', 'default.jpg', 'email866@gmail.com', '01866', 1866),
(873, 'username867', 'default.jpg', 'email867@gmail.com', '01867', 1867),
(874, 'username868', 'default.jpg', 'email868@gmail.com', '01868', 1868),
(875, 'username869', 'default.jpg', 'email869@gmail.com', '01869', 1869),
(876, 'username870', 'default.jpg', 'email870@gmail.com', '01870', 1870),
(877, 'username871', 'default.jpg', 'email871@gmail.com', '01871', 1871),
(878, 'username872', 'default.jpg', 'email872@gmail.com', '01872', 1872),
(879, 'username873', 'default.jpg', 'email873@gmail.com', '01873', 1873),
(880, 'username874', 'default.jpg', 'email874@gmail.com', '01874', 1874),
(881, 'username875', 'default.jpg', 'email875@gmail.com', '01875', 1875),
(882, 'username876', 'default.jpg', 'email876@gmail.com', '01876', 1876),
(883, 'username877', 'default.jpg', 'email877@gmail.com', '01877', 1877),
(884, 'username878', 'default.jpg', 'email878@gmail.com', '01878', 1878),
(885, 'username879', 'default.jpg', 'email879@gmail.com', '01879', 1879),
(886, 'username880', 'default.jpg', 'email880@gmail.com', '01880', 1880),
(887, 'username881', 'default.jpg', 'email881@gmail.com', '01881', 1881),
(888, 'username882', 'default.jpg', 'email882@gmail.com', '01882', 1882),
(889, 'username883', 'default.jpg', 'email883@gmail.com', '01883', 1883),
(890, 'username884', 'default.jpg', 'email884@gmail.com', '01884', 1884),
(891, 'username885', 'default.jpg', 'email885@gmail.com', '01885', 1885),
(892, 'username886', 'default.jpg', 'email886@gmail.com', '01886', 1886),
(893, 'username887', 'default.jpg', 'email887@gmail.com', '01887', 1887),
(894, 'username888', 'default.jpg', 'email888@gmail.com', '01888', 1888),
(895, 'username889', 'default.jpg', 'email889@gmail.com', '01889', 1889),
(896, 'username890', 'default.jpg', 'email890@gmail.com', '01890', 1890),
(897, 'username891', 'default.jpg', 'email891@gmail.com', '01891', 1891),
(898, 'username892', 'default.jpg', 'email892@gmail.com', '01892', 1892),
(899, 'username893', 'default.jpg', 'email893@gmail.com', '01893', 1893),
(900, 'username894', 'default.jpg', 'email894@gmail.com', '01894', 1894),
(901, 'username895', 'default.jpg', 'email895@gmail.com', '01895', 1895),
(902, 'username896', 'default.jpg', 'email896@gmail.com', '01896', 1896),
(903, 'username897', 'default.jpg', 'email897@gmail.com', '01897', 1897),
(904, 'username898', 'default.jpg', 'email898@gmail.com', '01898', 1898),
(905, 'username899', 'default.jpg', 'email899@gmail.com', '01899', 1899),
(906, 'username900', 'default.jpg', 'email900@gmail.com', '01900', 1900),
(907, 'username901', 'default.jpg', 'email901@gmail.com', '01901', 1901),
(908, 'username902', 'default.jpg', 'email902@gmail.com', '01902', 1902),
(909, 'username903', 'default.jpg', 'email903@gmail.com', '01903', 1903),
(910, 'username904', 'default.jpg', 'email904@gmail.com', '01904', 1904),
(911, 'username905', 'default.jpg', 'email905@gmail.com', '01905', 1905),
(912, 'username906', 'default.jpg', 'email906@gmail.com', '01906', 1906),
(913, 'username907', 'default.jpg', 'email907@gmail.com', '01907', 1907),
(914, 'username908', 'default.jpg', 'email908@gmail.com', '01908', 1908),
(915, 'username909', 'default.jpg', 'email909@gmail.com', '01909', 1909),
(916, 'username910', 'default.jpg', 'email910@gmail.com', '01910', 1910),
(917, 'username911', 'default.jpg', 'email911@gmail.com', '01911', 1911),
(918, 'username912', 'default.jpg', 'email912@gmail.com', '01912', 1912),
(919, 'username913', 'default.jpg', 'email913@gmail.com', '01913', 1913),
(920, 'username914', 'default.jpg', 'email914@gmail.com', '01914', 1914),
(921, 'username915', 'default.jpg', 'email915@gmail.com', '01915', 1915),
(922, 'username916', 'default.jpg', 'email916@gmail.com', '01916', 1916),
(923, 'username917', 'default.jpg', 'email917@gmail.com', '01917', 1917),
(924, 'username918', 'default.jpg', 'email918@gmail.com', '01918', 1918),
(925, 'username919', 'default.jpg', 'email919@gmail.com', '01919', 1919),
(926, 'username920', 'default.jpg', 'email920@gmail.com', '01920', 1920),
(927, 'username921', 'default.jpg', 'email921@gmail.com', '01921', 1921),
(928, 'username922', 'default.jpg', 'email922@gmail.com', '01922', 1922),
(929, 'username923', 'default.jpg', 'email923@gmail.com', '01923', 1923),
(930, 'username924', 'default.jpg', 'email924@gmail.com', '01924', 1924),
(931, 'username925', 'default.jpg', 'email925@gmail.com', '01925', 1925),
(932, 'username926', 'default.jpg', 'email926@gmail.com', '01926', 1926),
(933, 'username927', 'default.jpg', 'email927@gmail.com', '01927', 1927),
(934, 'username928', 'default.jpg', 'email928@gmail.com', '01928', 1928),
(935, 'username929', 'default.jpg', 'email929@gmail.com', '01929', 1929),
(936, 'username930', 'default.jpg', 'email930@gmail.com', '01930', 1930),
(937, 'username931', 'default.jpg', 'email931@gmail.com', '01931', 1931),
(938, 'username932', 'default.jpg', 'email932@gmail.com', '01932', 1932),
(939, 'username933', 'default.jpg', 'email933@gmail.com', '01933', 1933),
(940, 'username934', 'default.jpg', 'email934@gmail.com', '01934', 1934),
(941, 'username935', 'default.jpg', 'email935@gmail.com', '01935', 1935),
(942, 'username936', 'default.jpg', 'email936@gmail.com', '01936', 1936),
(943, 'username937', 'default.jpg', 'email937@gmail.com', '01937', 1937),
(944, 'username938', 'default.jpg', 'email938@gmail.com', '01938', 1938),
(945, 'username939', 'default.jpg', 'email939@gmail.com', '01939', 1939),
(946, 'username940', 'default.jpg', 'email940@gmail.com', '01940', 1940),
(947, 'username941', 'default.jpg', 'email941@gmail.com', '01941', 1941),
(948, 'username942', 'default.jpg', 'email942@gmail.com', '01942', 1942),
(949, 'username943', 'default.jpg', 'email943@gmail.com', '01943', 1943),
(950, 'username944', 'default.jpg', 'email944@gmail.com', '01944', 1944),
(951, 'username945', 'default.jpg', 'email945@gmail.com', '01945', 1945),
(952, 'username946', 'default.jpg', 'email946@gmail.com', '01946', 1946),
(953, 'username947', 'default.jpg', 'email947@gmail.com', '01947', 1947),
(954, 'username948', 'default.jpg', 'email948@gmail.com', '01948', 1948),
(955, 'username949', 'default.jpg', 'email949@gmail.com', '01949', 1949),
(956, 'username950', 'default.jpg', 'email950@gmail.com', '01950', 1950),
(957, 'username951', 'default.jpg', 'email951@gmail.com', '01951', 1951),
(958, 'username952', 'default.jpg', 'email952@gmail.com', '01952', 1952),
(959, 'username953', 'default.jpg', 'email953@gmail.com', '01953', 1953),
(960, 'username954', 'default.jpg', 'email954@gmail.com', '01954', 1954),
(961, 'username955', 'default.jpg', 'email955@gmail.com', '01955', 1955),
(962, 'username956', 'default.jpg', 'email956@gmail.com', '01956', 1956),
(963, 'username957', 'default.jpg', 'email957@gmail.com', '01957', 1957),
(964, 'username958', 'default.jpg', 'email958@gmail.com', '01958', 1958),
(965, 'username959', 'default.jpg', 'email959@gmail.com', '01959', 1959),
(966, 'username960', 'default.jpg', 'email960@gmail.com', '01960', 1960),
(967, 'username961', 'default.jpg', 'email961@gmail.com', '01961', 1961),
(968, 'username962', 'default.jpg', 'email962@gmail.com', '01962', 1962),
(969, 'username963', 'default.jpg', 'email963@gmail.com', '01963', 1963),
(970, 'username964', 'default.jpg', 'email964@gmail.com', '01964', 1964),
(971, 'username965', 'default.jpg', 'email965@gmail.com', '01965', 1965),
(972, 'username966', 'default.jpg', 'email966@gmail.com', '01966', 1966),
(973, 'username967', 'default.jpg', 'email967@gmail.com', '01967', 1967),
(974, 'username968', 'default.jpg', 'email968@gmail.com', '01968', 1968),
(975, 'username969', 'default.jpg', 'email969@gmail.com', '01969', 1969),
(976, 'username970', 'default.jpg', 'email970@gmail.com', '01970', 1970),
(977, 'username971', 'default.jpg', 'email971@gmail.com', '01971', 1971),
(978, 'username972', 'default.jpg', 'email972@gmail.com', '01972', 1972),
(979, 'username973', 'default.jpg', 'email973@gmail.com', '01973', 1973),
(980, 'username974', 'default.jpg', 'email974@gmail.com', '01974', 1974),
(981, 'username975', 'default.jpg', 'email975@gmail.com', '01975', 1975),
(982, 'username976', 'default.jpg', 'email976@gmail.com', '01976', 1976),
(983, 'username977', 'default.jpg', 'email977@gmail.com', '01977', 1977),
(984, 'username978', 'default.jpg', 'email978@gmail.com', '01978', 1978),
(985, 'username979', 'default.jpg', 'email979@gmail.com', '01979', 1979),
(986, 'username980', 'default.jpg', 'email980@gmail.com', '01980', 1980),
(987, 'username981', 'default.jpg', 'email981@gmail.com', '01981', 1981),
(988, 'username982', 'default.jpg', 'email982@gmail.com', '01982', 1982),
(989, 'username983', 'default.jpg', 'email983@gmail.com', '01983', 1983),
(990, 'username984', 'default.jpg', 'email984@gmail.com', '01984', 1984),
(991, 'username985', 'default.jpg', 'email985@gmail.com', '01985', 1985),
(992, 'username986', 'default.jpg', 'email986@gmail.com', '01986', 1986),
(993, 'username987', 'default.jpg', 'email987@gmail.com', '01987', 1987),
(994, 'username988', 'default.jpg', 'email988@gmail.com', '01988', 1988),
(995, 'username989', 'default.jpg', 'email989@gmail.com', '01989', 1989),
(996, 'username990', 'default.jpg', 'email990@gmail.com', '01990', 1990),
(997, 'username991', 'default.jpg', 'email991@gmail.com', '01991', 1991),
(998, 'username992', 'default.jpg', 'email992@gmail.com', '01992', 1992),
(999, 'username993', 'default.jpg', 'email993@gmail.com', '01993', 1993),
(1000, 'username994', 'default.jpg', 'email994@gmail.com', '01994', 1994),
(1001, 'username995', 'default.jpg', 'email995@gmail.com', '01995', 1995),
(1002, 'username996', 'default.jpg', 'email996@gmail.com', '01996', 1996),
(1003, 'username997', 'default.jpg', 'email997@gmail.com', '01997', 1997),
(1004, 'username998', 'default.jpg', 'email998@gmail.com', '01998', 1998),
(1005, 'username999', 'default.jpg', 'email999@gmail.com', '01999', 1999),
(117375, 'Jadi', 'default.jpg', 'jadi@gmail.com', '9830392', 9),
(439465, 'aaaxa', 'default.jpg', 'axa@gmail.cm', '983333', 9090),
(443925, 'Test', '443925def828643504.jpg', 'test1@gmail.com', '29281', 91),
(690605, 'LOL', 'default.jpg', 'lol@gmail.com', '123', 123),
(756155, 'XAS', 'default.jpg', 'xas@gmail.com', '0939022', 9101);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_baru`
--

CREATE TABLE `tb_mahasiswa_baru` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `no_hp` varchar(128) NOT NULL,
  `jalan` varchar(128) NOT NULL,
  `kota` varchar(128) NOT NULL,
  `provinsi` varchar(128) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `asal_sekolah` varchar(128) NOT NULL,
  `prodi` varchar(128) NOT NULL,
  `kelas` varchar(8) NOT NULL,
  `verifikasi` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa_baru`
--

INSERT INTO `tb_mahasiswa_baru` (`id`, `nama`, `email`, `no_hp`, `jalan`, `kota`, `provinsi`, `kode_pos`, `asal_sekolah`, `prodi`, `kelas`, `verifikasi`) VALUES
(18195, 'Alamsyah', 'alam_tamvan1@gmail.com', '085772272', 'Jl. Langkap No 92', 'Brebes', 'Jawa Tengah', 59292, 'SMA N 1', 'S1-Sistem Informasi', 'Sore', 0),
(57915, 'Rian Aminulloh', 'rian9909@gmail.com', '099302922', 'Jl. Langkap 001', 'Brebes', 'Jawa Tengah', 53382, 'SMK N 2', 'S1-Teknik Informatika', 'Pagi', 1),
(151235, 'Triyono', 'triyono@gmail.com', '0877777312', 'Jl. Raya Cipaku ', 'Purbalingga', 'Jawa Tengah', 53392, 'SMK N 1', 'S1-Teknik Informatika', 'Pagi', 0),
(406065, 'Sasongko ', 'sas002@gmail.com', '0587721212', 'Sokaraja Kulon No. 19', 'Banyumas ', 'Jawa Tengah', 53321, 'SMA N 1', 'S1-Teknik Informatika', 'Pagi', 0),
(462295, 'Lutfi Zabadi', 'lutfi008@gmail.com', '08544212212', 'Jl. Raya Bukateja', 'Purbalingga', 'Jawa Tengah', 53392, 'SMK N 1', 'S1-Teknik Informatika', 'Sore', 0),
(474275, 'Panggih Gentur', 'panggih991@gmail.com', '085866121', 'Jl. Jeruk 01', 'Purwokerto', 'Jawa Tengah', 58832, 'SMK N 1 ', 'S1-Teknik Informatika', 'Pagi', 1),
(1520365, 'Adi Purnomo', 'adipurnomo@gmail.com', '085877222112', 'Jl. Langkap No 1', 'Purbalingga', 'Jawa Tengah', 53392, 'SMA N 1 ', 'S1-Teknik Informatika', 'Sore', 1),
(2497305, 'Salim', 'salimtamvan00@gmail.com', '0877777', 'Jl. Raya Bantarkawung', 'Brebes', 'Jawa Tengah', 53312, 'SMK N 1', 'S1-Teknik Elektro', 'Pagi', 0),
(3145135, 'Firman Iyadi', 'firmaniyadi@icloud.com', '085877', 'Jl. Bantarkawung 19', 'Brebes', 'Jawa Tengah', 53321, 'SMA N 1', 'S1-Teknik Elektro', 'Sore', 1),
(4575395, 'Teguh Purnomo', 'teguhpurnomo@gmail.com', '0857772', 'Jl. Raya Stasiun', 'Purwokerto', 'Jawa Tengah', 45333, 'SMK BINTEK', 'S1-Teknik Elektro', 'Sore', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftar`
--

CREATE TABLE `tb_pendaftar` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pendaftar`
--

INSERT INTO `tb_pendaftar` (`id`, `username`, `password`) VALUES
(1, 'user1', '24c9e15e52afc47c225b757e7bee1f9d'),
(2, 'user2', '7e58d63b60197ceb55a1c487989a3720');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tokobuah`
--

CREATE TABLE `tb_tokobuah` (
  `product_id` int(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tokobuah`
--

INSERT INTO `tb_tokobuah` (`product_id`, `name`, `price`, `image`, `description`) VALUES
(5, 'Mangga Arum', 5000, '5decb29c4aefd.jpg', 'Mangga'),
(567885, 'Jeruk', 7000, '567885decb5aea8192.jpg', 'Jeruk Segar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(9, 'Admin', 'admin@gmail.com', 'default.jpg', '$2y$10$LRCXNyNm472jbk9c7kXWdOA9smnB/aG89D6IYkcs7zAM3UaZHgVOS', 1, 1, 1576151691),
(10, 'Member', 'member@gmail.com', 'default.jpg', '$2y$10$l6aT3osyzwEEKGPI0po9mOKE0QvDXPnI0E1qLEqsvv.uXXkir0Piu', 2, 1, 1576151868);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_role`
--

CREATE TABLE `tb_user_role` (
  `id` int(11) NOT NULL,
  `role_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user_role`
--

INSERT INTO `tb_user_role` (`id`, `role_id`) VALUES
(1, 'Admin'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mahasiswa_baru`
--
ALTER TABLE `tb_mahasiswa_baru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tokobuah`
--
ALTER TABLE `tb_tokobuah`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tb_user_role`
--
ALTER TABLE `tb_user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756156;

--
-- AUTO_INCREMENT for table `tb_mahasiswa_baru`
--
ALTER TABLE `tb_mahasiswa_baru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4575396;

--
-- AUTO_INCREMENT for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tokobuah`
--
ALTER TABLE `tb_tokobuah`
  MODIFY `product_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567886;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_user_role`
--
ALTER TABLE `tb_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
