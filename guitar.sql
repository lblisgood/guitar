-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-04-30 15:36:29
-- 服务器版本： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `guitar`
--

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) NOT NULL,
  `user` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `user`, `comment`, `date`) VALUES
(3, '廖木白', '嗯 这把吉他不错啊 音色很好 嗯 这把吉他不错啊 音色很好嗯 这把吉他不错啊 音色很好 嗯 这把吉他不错啊 音色很好嗯 这把吉他不错啊 音色很好 嗯 这把吉他不错啊 音色很好', '2015-04-14 09:35:49'),
(4, '廖木白', '嗯 这把吉他不错啊 音色很好 嗯 这把吉他不错啊 音色很好', '2015-04-14 09:37:36'),
(5, '廖木白', '马丁 Martin D-18 41寸 民谣吉他 挺好看的，手感很好，音色也不错，价钱也不贵，值得入手啊', '2015-04-14 09:39:03'),
(6, 'iadmin', '嗯 这把吉他不错啊 音色很好 嗯 这把吉他不错啊 音色很好嗯 这把吉他不错啊 音色很好 嗯 这把吉他不错啊 音色很好嗯 这把吉他不错啊 音色很好 嗯 这把吉他不错啊 音色很好', '2015-04-14 09:40:14'),
(7, 'iadmin', '小马丁 Martin LX1 LX1E 单板旅行吉他  很不错啊 旅行必备啊 ', '2015-04-14 09:40:48'),
(8, 'liaobolin', '啊~~~~~~~~~~~~~~~~~~~~~好想买啊 就是没有钱啊啊啊 ············', '2015-04-14 09:41:31'),
(9, 'liaobolin', '哎呦  网站做的不错哦', '2015-04-14 09:41:57'),
(10, '123456', '一二三 木头人  再不行动就要被扣分，我真的很想问，你是迟钝还是太天真 我数一二三  木头人 ', '2015-04-14 09:43:04'),
(11, '123456', '哦 啦啦啦啦啦啦啦', '2015-04-14 09:43:15'),
(12, '123456', '喜欢我的人我不喜欢， 我喜欢的人却总在彼岸  已经习惯，放弃对缘分的期盼，指靠老天，不如自己努力找出答案', '2015-04-14 10:02:02'),
(13, 'liaobolin', '慌慌张张 匆匆忙忙 为何生活总是这样', '2015-04-20 12:52:27'),
(14, '我是阿蛋', '日了狗了', '2015-04-20 12:53:05');

-- --------------------------------------------------------

--
-- 表的结构 `guitar_detail`
--

CREATE TABLE IF NOT EXISTS `guitar_detail` (
  `gid` int(10) NOT NULL,
  `main_pic` varchar(100) NOT NULL,
  `title` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
  `text` varchar(500) NOT NULL,
  `pic_detail` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `guitar_detail`
--

INSERT INTO `guitar_detail` (`gid`, `main_pic`, `title`, `price`, `text`, `pic_detail`) VALUES
(0, '', '', '', '', 'http://martinguitars.cn/wp-content/uploads/2014/10/D-45_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-45_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-45_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-45_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D'),
(19, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-42_x-710x270.jpg', ' 马丁 Martin D-42 41寸 全单民谣吉他', '2746RMB', '\r\n型号：马丁 Martin D-42 \r\n尺寸：41寸\r\n琴型：D型\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n指板：黑檀木\r\n琴桥：黑檀木\r\n琴颈：硬木\r\n琴体抛光：亮光抛光\r\n音梁结构：标准扇形结构\r\n琴颈形状：low profile\r\n指板宽度：1-11/16\r\n琴体尺寸：D-14 Fret\r\n弦长：25.4”\r\n包边：白色包边\r\n琴盒：Martin 640 Dreadnought Hardshell Case 马丁D型琴盒\r\n', 'http://martinguitars.cn/wp-conte\r\nnt/uploads/2014/04/D-42_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-42_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D\r\n-42_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-42_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-42_t.jpg'),
(29, 'http://martinguitars.cn/wp-content/uploads/2014/10/D-41_x-710x270.jpg', ' 马丁 Martin D-41 全单民谣吉他', '2407RMB', '型号：马丁 Martin D-41\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴桥：黑檀木\r\n指板：黑檀木\r\n琴颈：硬木\r\n音梁结构：标准X结构\r\n琴体抛光：亮光抛光\r\n琴颈形状：LOW PROLIFE\r\n指板宽度：1-11/16\r\n琴体尺寸：D-14 Fret\r\n弦长：25.4\r\n包边：白色包边\r\n琴盒：640 样式\r\n拾音器：可选\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/10/D-41_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-41_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-41_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-41_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-41_t.jpg'),
(39, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-45_x-710x270.jpg', ' 马丁 Martin D-45 41寸民谣吉他', '2576RMB', '型号：马丁 Martin D-45\r\n面板：单板云杉\r\n侧板：单板东印度玫瑰木\r\n背板：单板东印度玫瑰木\r\n琴颈：硬木\r\n琴桥：黑檀木\r\n指板：黑檀木\r\n音梁结构：标准X结构\r\n琴颈形状：LOW Perfile\r\n指板宽度：1-11/16\r\n琴体尺寸：D-14 Fret\r\n弦长：25.4\r\n琴体抛光：亮光抛光\r\n包边：白色包边\r\n琴盒：640 形\r\n拾音器：可选\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/10/D-45_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-45_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-45_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-45_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D'),
(40, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-35_x-710x270.jpg', ' 马丁 Martin D-35 全单民谣吉他', '2620RMB', '型号：马丁 Martin D-35\r\n面板：单板云杉\r\n侧板：单板东印度玫瑰木\r\n背板：单板东印度玫瑰木\r\n指板：黑檀木\r\n琴桥：黑檀木\r\n琴颈：硬木\r\n音梁结构：标准X结构\r\n琴体尺寸：D-14 Fret\r\n琴颈形状：low profile\r\n指板宽度：1-11/16\r\n弦长：25.4”\r\n琴体抛光：亮光抛光\r\n包边：白色包边\r\n琴盒：640 样式\r\n产地：美国\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/04/D-35_x.jpg,http://martinguitars.cn/wp-content/uploa\r\nds/2014/04/D-35_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-35_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/D-35_h.jp\r\ng,http://martinguitars.cn/wp-content/uploads/2014/04/D-35_t.jpg'),
(42, 'http://martinguitars.cn/wp-content/uploads/2014/07/D-18_x-710x270.jpg', ' 马丁 Martin D-18 41寸 民谣吉他', '2604RMB', '\r\n型号：马丁 Martin D-18    \r\n面板：单板云杉\r\n背板：单板桃花心木\r\n侧板：单板桃花心木\r\n琴桥：黑檀木\r\n指板：黑檀木\r\n琴颈：硬木\r\n音梁结构：标准扇形音梁\r\n琴颈形状：改良型椭圆形\r\n琴体抛光：亮光抛光\r\n琴身尺寸：D-14FRET\r\n指板宽度：1-3/4”\r\n弦长：25.4”\r\n包边：玳瑁色\r\n琴盒：445样式\r\n拾音器：可选\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/07/D-18_f.jpg,http://martinguitars.cn/wp-content/uploa\r\nds/2014/07/D-18_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/07/D-18_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/07/D-18_t.jp\r\ng'),
(44, 'http://martinguitars.cn/wp-content/uploads/2014/04/HD-28_x-710x270.jpg', ' 马丁 Martin HD-28 民谣吉他', '2288RMB', '型号：马丁 Martin HD28\r\n面板：单板云杉 \r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴桥：黑檀木\r\n指板：黑檀木\r\n琴颈：硬木\r\n音梁结构：标准扇形X结构\r\n琴体抛光：亮光抛光\r\n琴体尺寸：D-14 Fret\r\n琴颈形状：Low Profile\r\n指板宽度：1-11/16\r\n弦长：25.4”\r\n包边：白色包边\r\n琴盒：640型\r\n拾音器：可选\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/04/HD-28_f.jpg,http://martinguitars.cn/wp-content/uplo\r\nads/2014/04/HD-28_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/HD-28_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/HD-28_\r\nt.jpg'),
(46, 'http://martinguitars.cn/wp-content/uploads/2014/04/GPCPA4_x-710x270.jpg', ' 马丁 Martin GPCPA4 全单电箱民谣吉他', '2953RMB', '【型号】马丁 Martin GPCPA4 电箱民谣\r\n【面板】西提卡云杉单板\r\n【背板】沙比利单板\r\n【侧板】沙比利单板\r\n【指板】Black Richlite\r\n【琴颈】Select Hardwood\r\n【琴码】Black Richlite\r\n【拾音器】Fishman F1 Analog\r\n【赠送配件】Martin 375 Hardshell 马丁琴箱 \r\n【产地】美国\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/04/GPCPA4_f.jpg,http://martinguitars.cn/wp-content/upl\r\noads/2014/04/GPCPA4_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/GPCPA4_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/GPC\r\nPA4_t.jpg'),
(47, 'http://martinguitars.cn/wp-content/uploads/2014/07/LX1E_x_1-710x270.jpg', ' 小马丁 Martin LX1 LX1E 单板旅行吉他', '2712RMB', '【型号】马丁 LX1  Little Martin 原木色 原声款 面单吉他\r\n【型号】马丁 LX1  Little Martin 黑色   原声款\r\n【型号】马丁 LX1E Little Martin 原木色 电箱款\r\n【琴型以及品】Modified O - 14 Fret\r\n【面板】单板云杉\r\n【背板】桃花心木\r\n【侧板】桃花心木\r\n【琴颈】Rust Stratabond®\r\n【琴颈型状】Modified Low Oval\r\n【琴枕材质】White Corian®\r\n【指板材质】黑檀木\r\n【指板宽度】1 11/16''\r\n【12品指板宽度】2 1/16''\r\n【琴桥材质】 黑檀木\r\n【赠送配件】原装Martin加厚琴包', 'http://martinguitars.cn/wp-content/uploads/2014/11/LX1_x_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/LX-BLACK-Little-Martin_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/LX-BLACK-Little-Martin_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/LX-BLACK-Little-Martin_b.j'),
(49, 'http://martinguitars.cn/wp-content/uploads/2014/04', ' 马丁 Martin 000-15M 全单民谣吉他', '2064RMB', '型号：马丁 Martin 000-15M\r\n面板：单板桃花心木\r\n侧板：单板桃花心木\r\n背板：单板桃花心木\r\n指板：南美酸枝木\r\n琴桥：南美酸枝木\r\n琴颈：桃花心木\r\n音梁结构：标准X形音梁\r\n琴颈形状：改良椭圆型\r\n指板宽度：1-11/16''\r\n弦长：24.9\r\n琴身尺寸：000-14Fret\r\n包边：无\r\n琴体抛光：光滑亮光\r\n琴盒：Martin 330 马丁硬盒', 'http://martinguitars.cn/wp-content/uploads/2014/04/000-15M_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/000-15M_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/000-15M_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/04/000-15M_h.jpg'),
(50, 'http://martinguitars.cn/wp-content/uploads/2014/04', ' 马丁 Martin DX1AE 41寸 单板电箱民谣吉他', '2904RMB', '型号：马丁 Martin DX1AE\r\n尺寸：41寸 D型\r\n面板：单板云杉\r\n侧板：桃花心木\r\n背板：桃花心木\r\n琴颈：合成硬木\r\n指板：乌木\r\n琴桥：乌木\r\n音梁结构：人字形X结构\r\n琴颈形状：改良椭圆形\r\n琴体尺寸：D-14 Fret\r\n指板宽度：1-11/16”\r\n弦长：25.4”\r\n包边：无\r\n琴体抛光：打磨抛光\r\n琴盒：可挑选\r\n拾音器：Fishman Sonitone\r\n产地：墨西哥', 'http://martinguitars.cn/wp-content/uploads/2014/07/LX1E_f.jpg,http://martinguitars.cn/wp-content/uploa\r\nds/2014/07/LX1E_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/07/LX1E_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/07/LX1E_t.jp\r\ng'),
(51, 'http://martinguitars.cn/wp-content/uploads/2014/08/DRS2_x_1-710x270.jpg', ' 马丁 Martin DRS2 41寸民谣吉他', '2017RMB', '\r\n型号：马丁 Martin DRS2\r\n外形尺寸：D-14 Fret\r\n面板：单板云杉\r\n背侧板：单板沙比利\r\n指板：Black Richlite\r\n琴颈：Rust Stratabond\r\n配件：Martin 345 Hardshell Case 马丁琴盒\r\n拾音器：Fishman Sonitone\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/08/DXMAE_x.jpg,http://martinguitars.cn/wp-content/uplo\r\nads/2014/08/DXMAE_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DXMAE_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DXMAE_\r\nh.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DXMAE_t.jpg'),
(53, 'http://martinguitars.cn/wp-content/uploads/2014/08/DXMAE_x-710x270.jpg', ' 马丁 Martin DXMAE 民谣吉他', '2239RMB', '型号：马丁 Martin X Series DXMAE Acoustic\r\n琴型： Dreadnought型\r\n面板： 云杉\r\n背侧板： 桃花心木\r\n琴颈： 桦木\r\n指板： 乌木\r\n琴码： 乌木\r\n琴枕琴桥： 骨制\r\n调弦弦钮： 镍合金\r\n护板： 有\r\n琴弦： Martin\r\n品数： 20品\r\n琴颈连接方式： 插接\r\n指板包边： 无\r\n琴体包边： 有\r\n琴体漆面： 亚光\r\n琴颈漆面： 亚光\r\n拾音器系统：Fishmen sonitone', 'http://martinguitars.cn/wp-content/uploads/2014/07/D-28_f.jpg,http://martinguitars.cn/wp-content/uploa\r\nds/2014/07/D-28_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/07/D-28_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/07/D-28_t.jp\r\ng'),
(62, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-28_x-710x270.jpg', ' 马丁 Martin D28 41寸全单民谣吉他', '2023RMB', '\r\n型号：    马丁 Martin D28\r\n尺寸：    41寸 D型\r\n品数:     20品\r\n面板：    云杉单板\r\n侧板：    印度东部玫瑰木单板\r\n背板：    印度东部玫瑰木单板\r\n琴颈：    桃花心木\r\n指板：    印度东部玫瑰木\r\n琴桥：    印度东部玫瑰木\r\n琴头贴片：印度东部玫瑰木\r\n木材配置：全单板\r\n产地：    美国\r\n赠品附件：原装Matin马丁琴盒 1个\r\n价格:     $3,299美金 / ￥20,247\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/05/DRSGT_f.jpg,http://martinguitars.cn/wp-content/uplo\r\nads/2014/05/DRSGT_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/05/DRSGT_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/05/DRSGT_\r\nt.jpg'),
(69, 'http://martinguitars.cn/wp-content/uploads/2014/05/DRSGT_x-710x270.jpg', ' 马丁 Martin DRSGT 全单民谣吉他', '2239RMB', '型号：马丁 Martin DRSGT\r\n面板：DRSGT OOORSGT：云杉单板\r\nDRS1 : 沙比利单板 \r\nDRS2：云杉单板\r\n油漆：DRSGT OOORSGT：亮光面板 亚光背侧 DRS1，DRS2：全亚光\r\n背板：沙比利单板\r\n侧板：沙比利单板\r\n琴颈：Rust Stratabond\r\n指板：Black Richlite 混合乌木材质\r\n琴颈：Solid Sipo\r\n弦枕：合成材料\r\n琴桥：Ebony\r\n拾音器：Fishman Sonitone （DRSGT OOORST带USB录音功能）\r\n原厂配备：琴盒\r\n产地：墨西哥\r\n', 'http://martinguitars.cn/wp-cont\r\nent/uploads/2014/05/DRSGT_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/05/DRSGT_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/0\r\n5/DRSGT_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/05/DRSGT_t.jpg'),
(94, 'http://martinguitars.cn/wp-content/uploads/2014/08/Martin-D-1GT-710x270.jpg', ' 马丁 Martin D-1GT 41寸 D型 民谣吉他', '2671RMB', '【型号】Martin D-1GT\r\n【面板】西提卡云杉单板\r\n【背板】沙比利单板\r\n【侧板】沙比利单板\r\n【琴颈】Rust Stratabond\r\n【指板】Black Richlite\r\n【琴码】Black Richlite\r\n【产地】美国\r\n【型号】Martin OM-1GT\r\n【面板】西提卡云杉单板\r\n【背板】沙比利单板\r\n【侧板】沙比利单板\r\n【琴颈】Rust Stratabond\r\n【指板】Black Richlite\r\n【琴码】Black Richlite\r\n【产地】美国\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/10/D-1GT_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-1GT_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-1GT_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/D-1GT_t.jpg'),
(152, 'http://martinguitars.cn/wp-content/uploads/2014/08/DRS1_rev_x-710x270.jpg', ' 马丁 Martin DRS1 全单电箱民谣吉他', '2107RMB', '型号: 马丁 Martin DRS1\r\n面板：单板沙比利\r\n背板：单板沙比利\r\n侧板：单板沙比利\r\n琴颈：合成硬木\r\n指板：乌木\r\n琴桥：乌木\r\n音梁结构：人字形结构\r\n琴颈形状：改良椭圆形\r\n指板宽度：1-11/16\r\n弦长：25.4”\r\n琴体尺寸：D-14 品\r\n包边：无\r\n琴体抛光：亮光抛光\r\n拾音器：Fishman Sonitone\r\n产地：墨西哥\r\n琴盒：345 硬盒\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/08/DRS1_rev_x-710x270.jpg,http://martinguitars.cn/wp-c\r\nontent/uploads/2014/08/DRS1_rev_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DRS1_f.jpg,http://martinguitars.cn/wp-content/uploads/2\r\n014/08/DRS1_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DRS1_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DRS1_t.jpg'),
(159, 'http://martinguitars.cn/wp-content/uploads/2014/08/DX1RAE_x-710x270.jpg', ' 马丁 Martin DX1RAE 41寸 单板电箱民谣吉他', '2674RMB', '\r\n型号: 马丁 Martin DX1RAE\r\n尺寸：41寸 D型\r\n面板：单板云杉\r\n琴颈：合成硬木\r\n背侧板：玫瑰木\r\n指板：乌木\r\n琴桥：乌木\r\n音梁结构：人字形X结构\r\n琴颈形状：改良椭圆形\r\n指板宽度：1-11/16”\r\n琴体尺寸：D-14 Fret\r\n弦长：25.4”\r\n包边：无\r\n琴盒：可挑选\r\n琴体抛光：打磨抛光\r\n拾音器：Fishman Sonitone\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/08/DX1RAE_x-710x270.jpg,http://martinguitars.cn/wp-con\r\ntent/uploads/2014/08/DX1RAE_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DX1RAE_f.jpg,http://martinguitars.cn/wp-content/uploads/201\r\n4/08/DX1RAE_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DX1RAE_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/DX1RAE_t.jp\r\ng'),
(165, 'http://martinguitars.cn/wp-content/uploads/2014/08/HD-35_x-710x270.jpg', ' 马丁 Martin HD-35 全单民谣吉他', '2752RMB', '型号: 马丁 Martin HD-35 全单民谣\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n琴桥：乌木\r\n指板：乌木\r\n音梁结构：标准扇形结构\r\n琴颈形状：改良V形\r\n指板宽度：1-3/4\r\n弦长：25.4”\r\n琴体尺寸：D-12 品\r\n包边：颗粒纹包边\r\n琴盒：540 Geib 样式\r\n琴体抛光：亮光抛光\r\n拾音器：可选\r\n', 'http://martinguitars.cn/wp-cont\r\nent/uploads/2014/08/HD-35_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/HD-35_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/0\r\n8/HD-35_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/HD-35_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/HD-35_t.jpg'),
(171, 'http://martinguitars.cn/wp-content/uploads/2014/08/HD-45V_x-710x270.jpg', ' 马丁 Martin HD-28V 民谣吉他', '2608RMB', '型号: 马丁 Martin HD-28V\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n指板：乌木\r\n琴桥：乌木\r\n琴颈形状：改良V形\r\n音梁结构：标准扇形结构\r\n指板宽度：1-11/16\r\n弦长：25.4”\r\n琴体尺寸：D-14 品\r\n包边：颗粒纹包边\r\n琴盒：545E Geib 样式\r\n琴体抛光：亮光抛光\r\n琴弦：Martin MSP 4200\r\n产地：美产\r\n', 'http://martinguitars.cn/wp-con\r\ntent/uploads/2014/08/HD-45V_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/HD-28V_f.jpg,http://martinguitars.cn/wp-content/uploads/201\r\n4/08/HD-28V_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/HD-28V_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/HD-28V_t.jp\r\ng'),
(208, 'http://martinguitars.cn/wp-content/uploads/2014/11/000-28_x-710x270.jpg', ' 马丁 Martin 00028 全单民谣吉他', '2598RMB', '\r\n型号：马丁 Martin 00028 全单民谣吉他\r\n面板：西提卡云杉单板\r\n背板：印度东部玫瑰木单板\r\n侧板：印度东部玫瑰木单板\r\n琴颈：桃花心木\r\n指板：印度东部玫瑰木\r\n琴桥：印度东部玫瑰木\r\n琴头贴片：印度东部玫瑰\r\n附件：琴盒\r\n产地：美国\r\n', 'http://martinguitars.cn/wp-con\r\ntent/uploads/2014/11/000-28_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/000-28_f.jpg,http://martinguitars.cn/wp-content/uploads/201\r\n4/11/000-28_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/000-28_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/000-28_t.jp\r\ng'),
(209, 'http://martinguitars.cn/wp-content/uploads/2014/08/M-36_x-710x270.jpg', ' 马丁 Martin M-36 全单民谣吉他', '2636RMB', '型号：马丁 Martin M-36\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n指板：黑檀木\r\n琴桥：黑檀木\r\n颜色：原木色\r\n音梁结构：标准扇形结构\r\n琴颈形状：LOW PROFLIE\r\n指板宽度：1-11/16”\r\n弦长：25.4”\r\n琴身尺寸：M (0000) -14品\r\n包边：白色包边\r\n琴盒：570 GIEB样式\r\n琴体抛光：亮光抛光\r\n拾音器：可选\r\n', ',http://martinguitars.cn/wp-conte\r\nnt/uploads/2014/08/M-36_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/M-36_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/M\r\n-36_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/M-36_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/M-36_t.jpg'),
(234, 'http://martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_x-710x270.jpg', ' 马丁 Martin Backpacker 民谣旅行吉他', '2802RMB', '【型号】马丁民谣旅行吉他 Martin Steel String Backpacker Guitar\r\n【面板】云杉单板\r\n【背板】Tonewood单板\r\n【侧侧】Tonewood单板\r\n【琴颈】桃花心\r\n【指板】玫瑰木\r\n【品点】ABS\r\n【弦枕】牛骨\r\n【琴码】玫瑰木\r\n【琴弦】MARTIN 民谣钢弦\r\n【颜色】哑光原色\r\n【弦钮】MATTIN\r\n【产地】墨西哥\r\n【配件赠送】琴包\r\n', 'http:/\r\n/martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/Steel-Strin\r\ng-Backpacker-Guitar_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_b.jpg,http://martinguitars.cn/wp-con\r\ntent/uploads/2014/08/Steel-String-Backpacker-Guitar_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_t.jp\r\ng'),
(246, 'http://martinguitars.cn/wp-content/uploads/2014/08/Martin-D-16RGT_x-710x270.jpg', ' 马丁 Martin D-16RGT 41寸 全单民谣吉他', '2326RMB', '型号：马丁 Martin D-16RGT\r\n琴体尺寸：D-14 Fret\r\n面板：单板北美云杉\r\n背板：单板玫瑰木\r\n侧板：单板玫瑰木\r\n琴颈：黑色环氧树脂纤维复合材料\r\n琴劲型状：Modified Low Oval\r\n琴头贴片：印度东部玫瑰木\r\n琴桥：乌木/动物骨\r\n指板：精选硬木\r\n卷弦器：Chrome Enclosed w/ Small Buttons\r\n琴弦：Martin SP Lifespan Phosphor Bronze Medium Gauge (MSP7200)\r\n琴桥固弦器：白色/黑点\r\n产地：美国　\r\n赠送配件：Martin 琴盒\r\n', 'http:/\r\n/martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/Steel-Strin\r\ng-Backpacker-Guitar_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_b.jpg,http://martinguitars.cn/wp-con\r\ntent/uploads/2014/08/Steel-String-Backpacker-Guitar_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_t.jp\r\ng'),
(252, 'http://martinguitars.cn/wp-content/uploads/2014/10/OM-1GT_x-710x270.jpg', ' 马丁 Martin OM-1GT OM型 民谣吉他', '2183RMB', '型号: 马丁 Martin OM-1GT\r\nConstruction: Ply Blocks/Simple Dovetail Neck Joint\r\nBody Size: 000-14 Fret\r\nTop: Solid Sitka Spruce\r\nRosette: Style 28\r\nTop Bracing Pattern: Modified Hybrid ''X'' Scalloped\r\nTop Braces: Solid Sitka Spruce 5/16''\r\nBack Material: Solid Sapele\r\nBack Purfling: none\r\nSide Material: Solid Sapele\r\nEndpiece: Black Boltaron\r\nEndpiece Inlay: none\r\nBinding: Black Boltaron\r\nTop Inlay Style: Black/White Boltaron\r\nSide Inlay: none\r\nBack Inlay: none\r\nNeck Material: Rust Stratabond\r\nNeck Sha', ',http://martinguitars.cn/wp-con\r\ntent/uploads/2014/10/OM-1GT_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-1GT_f.jpg,http://martinguitars.cn/wp-content/uploads/201\r\n4/10/OM-1GT_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-1GT_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-1GT_t.jp\r\ng'),
(253, 'http://martinguitars.cn/wp-content/uploads/2014/11/D-28P_x-710x270.jpg', ' 马丁 Martin D-28P 全单民谣吉他', '2874RMB', '\r\n型号：马丁 Martin D28P 吉他\r\n面板：北美云杉\r\n背板：印度东部玫瑰木\r\n侧板：印度东部玫瑰木\r\n琴颈：精选HARDWOOD\r\n琴颈形状：LOW PROFILE\r\n面板样式：DOM\r\n面板支柱：NON-SCALLOPED 5/16”\r\n品点：骨制\r\n琴头贴片：印度东部玫瑰木\r\n指板：乌木\r\n比例长度：25.4"\r\n琴桥：乌木/动物骨\r\n卷弦器：Gotoh Chrome w/ Large Knobs\r\n琴弦：Martin SP 4200 Medium Phosphor Bronze\r\n琴桥固弦器：白色/黑点\r\n产地：美国　 \r\n附带：琴盒\r\nD28P 为D28的改进版本，P代表超薄指板。\r\n', ',http://martinguitars.cn/wp-cont\r\nent/uploads/2014/11/D-28P_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-28P_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/1\r\n1/D-28P_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-28P_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-28P_t.jpg'),
(254, 'http://martinguitars.cn/wp-content/uploads/2014/11/DXK2AE_x-710x270.jpg', ' 马丁 Martin DXK2AE 41寸 民谣吉他', '2101RMB', '\r\n型号：马丁 Martin DXK2AE\r\n面板：夏威夷相思木HPL纹理\r\n背板：夏威夷相思木HPL纹理\r\n侧板：夏威夷相思木HPL纹理\r\n琴颈：Natural Stratabond\r\n指板：Black Richlite\r\n琴码：Black Richlite\r\n拾音器：Fishman Sonitone（安装与音孔内侧）\r\n产地：墨西哥  \r\n附件：不含琴盒和琴包\r\n', 'http://martinguitars.cn/wp-con\r\ntent/uploads/2014/11/DXK2AE_x1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DXK2AE_f1.jpg,http://martinguitars.cn/wp-content/uploads/2\r\n014/11/DXK2AE_b1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DXK2AE_h1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DXK2AE_\r\nt1.jpg'),
(258, 'http://martinguitars.cn/wp-content/uploads/2014/10/OM-42_x-710x270.jpg', ' 马丁 Martin OM-42 全单民谣吉他', '2548RMB', '\r\n型号：马丁 Martin OM-42 \r\n面板：西岸云杉木单板\r\n音孔装饰：45型音孔饰圈\r\n背板：东印度玫瑰木单板\r\n侧板：东印度玫瑰木单板\r\n琴颈：桃花心木\r\n指板：乌木，有贝壳镶嵌\r\n琴颈形状：低型舒适琴颈\r\n琴体包边：象牙纹饰包边        \r\n镶嵌：天然珍珠鲍鱼贝\r\n琴枕：兽骨\r\n琴桥：乌木，有贝壳镶嵌\r\n弦钮：开放式ivoroid弦钮\r\n琴枕至桥距:25.4''\r\n尾钉和琴弦钉： 白色带鲍鱼贝圆点嵌饰\r\n琴头贴面：单板东印度玫瑰木/C.F. Martin标记——精选珍珠鲍鱼贝\r\n', 'http://martinguitars.cn/wp-cont\r\nent/uploads/2014/10/OM-42_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-42_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/1\r\n0/OM-42_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-42_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-42_t.jpg'),
(263, 'http://martinguitars.cn/wp-content/uploads/2014/10/SWDGT_x-710x270.jpg', ' 马丁 Martin SWDGT 41寸 全单民谣吉他', '2975RMB', '\r\n【型号】马丁 Martin SWDGT\r\n【琴体】D型\r\n【面板】西提卡云杉单板\r\n【背板】樱桃木单板\r\n【侧板】樱桃木单板\r\n【指板】樱桃木\r\n【琴颈】樱桃木\r\n【琴弦】Martin SP Lifespan Phosphor Bronze Medium Gauge (MSP7200)\r\n【附件】原装琴盒\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/10/SWDGT_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWDGT_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWDGT_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWDGT_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWDGT_t.jpg'),
(269, 'http://martinguitars.cn/wp-content/uploads/2014/10/SWOMGT_x-710x270.jpg', ' 马丁 Martin SWOMGT OM型 全单民谣吉他', '2930RMB', '【型号】马丁 Martin SWOMGT\r\n【琴体】OM型\r\n【面板】西提卡云杉单板\r\n【背板】樱桃木单板\r\n【侧板】樱桃木单板\r\n【指板】樱桃木\r\n【琴颈】樱桃木\r\n【琴弦】Martin SP Lifespan Phosphor Bronze Medium Gauge (MSP7200)\r\n【附件】原装琴盒\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/10/SWOMGT_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWOMGT_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWOMGT_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWOMGT_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/SWOMGT_t.jpg'),
(275, 'http://martinguitars.cn/wp-content/uploads/2014/10/D-15M_x-710x270.jpg', ' 马丁 Martin D-15M 41寸 全单民谣吉他', '2646RMB', '型号：马丁 Martin D-15M\r\n面板：单板桃花心木\r\n侧板：单板桃花心木\r\n背板：单板桃花心木\r\n指板：南美酸枝木\r\n琴桥：南美酸枝木\r\n琴颈：桃花心木\r\n音梁结构：标准X形音梁\r\n琴颈形状：改良椭圆型\r\n指板宽度：1-11/16''\r\n弦长：24.9\r\n琴身尺寸：000-14Fret\r\n包边：无\r\n琴体抛光：光滑亮光\r\n琴盒：330 硬盒', 'http://martinguitars.cn/wp-content/uploads/2014/11/D-15M_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-15M_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-15M_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-15M_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-15M_t.jpg'),
(297, 'http://martinguitars.cn/wp-content/uploads/2014/10/LXK2_x_1-710x270.jpg', ' Martin LXK2 Little Martin 小马丁', '2686RMB', '\r\n【型号】马丁 Martin LXK2 旅行吉他\r\n【尺寸】34寸 琴体长度：86.5CM 琴体宽度：32CM\r\n【类型】旅行吉他 民谣小吉他 \r\n【面板】HPL材质 夏威夷相思木\r\n【背板】HPL材质 夏威夷相思木\r\n【侧板】HPL材质 夏威夷相思木\r\n【琴颈】Natural Stratabond\r\n【指板】Richlite\r\n【琴码】Richlite\r\n【产地】墨西哥 \r\n【附件赠送】原装包\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/10/LXK2_x_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/LXK2_f_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/LXK2_b_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/LXK2_h_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/LXK2_t_1.jpg'),
(305, 'http://martinguitars.cn/wp-content/uploads/2014/10', ' 马丁 Martin OM-28V OM型 全单民谣吉他', '2200RMB', '型号：马丁 Martin D-15M\r\n面板：单板桃花心木\r\n侧板：单板桃花心木\r\n背板：单板桃花心木\r\n指板：南美酸枝木\r\n琴桥：南美酸枝木\r\n琴颈：桃花心木\r\n音梁结构：标准X形音梁\r\n琴颈形状：改良椭圆型\r\n指板宽度：1-11/16''\r\n弦长：24.9\r\n琴身尺寸：000-14Fret\r\n包边：无\r\n琴体抛光：光滑亮光\r\n琴盒：330 硬盒', 'http://martinguitars.cn/wp-content/uploads/2014/10/OM-28_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-28_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-28_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-28_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/10/OM-28_t.jpg'),
(318, 'http://martinguitars.cn/wp-content/uploads/2014/11/000-28EC_x-710x270.jpg', ' 马丁 Martin 00028EC 全单板民谣木吉他 Cl', '2366RMB', '\r\n型号：Martin 000-28EC Eric Clapton 签名款\r\n面板：北美云杉单板\r\n背侧板：玫瑰木单板\r\n琴颈：一体非洲桃花心木\r\n指板：乌木\r\n琴码：乌木\r\n琴枕琴桥：牛骨\r\n琴弦：MEC12\r\n弦钮：马丁\r\n产地：美国\r\n油漆：亮光\r\n配件：琴盒\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/000-28EC_x1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/000-28EC_f1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/000-28EC_b1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/000-28EC_h1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/000-28EC_t1.jpg'),
(334, 'http://martinguitars.cn/wp-content/uploads/2014/11/OM-21_x-710x270.jpg', ' 马丁 Martin OM-21 OM型 全单民谣吉他', '2026RMB', '型号：马丁 Martin OM-21 OM型 全单民谣吉他\r\n面板：云杉单板\r\n背板：印度东部玫瑰木单板\r\n侧板：印度东部玫瑰木单板\r\n木材配置：全单板\r\n琴颈：桃花心木\r\n指板：印度东部玫瑰木\r\n琴桥：印度东部玫瑰木\r\n琴头贴片：印度东部玫瑰木\r\n产地： 美国\r\n附件： Martin 433 Hardshell 马丁琴盒\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/OM-21_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/OM-21_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/OM-21_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/OM-21_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/OM-21_t.jpg'),
(340, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1E_x-710x270.jpg', ' 马丁 Martin DCX1E 41寸 D型电箱民谣吉他', '2538RMB', '\r\n型号: 马丁 Martin DCX1E 电箱民谣吉他\r\n琴形: Dreadnought缺角\r\n面板: 云杉单板\r\n背板: 桃花心木(HPL复合技术)\r\n侧板: 桃花心木(HPL复合技术)\r\n指板: 黑环氧树脂纤维复合材料(类似乌木)\r\n琴颈: 桦木\r\n弦枕: 骨质\r\n琴桥: 玫瑰木\r\n拾音器:Fishman Presys+ 拾音器\r\n琴弦: 原厂琴弦\r\n颜色: 原木色\r\n镶嵌: 贝壳\r\n弦钮: MARTIN\r\n产地: 墨西哥\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1E_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1E_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1E_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1E_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1E_t.jpg'),
(346, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1KE_x-710x270.jpg', ' 马丁 Martin DCX1KE 41寸 D型 电箱民谣吉', '2953RMB', '\r\n型号: 马丁 Martin DCX1KE 电箱民谣吉他\r\n琴形: Dreadnought缺角\r\n面板: 云杉单板\r\n背板: 相思木\r\n侧板: 相思木\r\n指板: 黑环氧树脂纤维复合材料(类似乌木)\r\n琴颈: 桦木\r\n弦枕: 骨质\r\n琴桥: 玫瑰木\r\n拾音器:	Fishman Presys+ 拾音器\r\n琴弦: 原厂琴弦\r\n颜色: 原木色\r\n镶嵌: 贝壳\r\n弦钮: MARTIN\r\n产地: 墨西哥\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1KE_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1KE_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1KE_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1KE_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1KE_t.jpg'),
(352, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1RE_x-710x270.jpg', ' 马丁 Martin DCX1RE 41寸 D型 电箱民谣吉', '2148RMB', '\r\n型号: 马丁 Martin DCX1RE 电箱民谣吉他\r\n琴形: Dreadnought缺角\r\n面板: 云杉单板\r\n背板: 玫瑰木\r\n侧板: 玫瑰木\r\n指板: 黑环氧树脂纤维复合材料(类似乌木)\r\n琴颈: 桦木\r\n弦枕: 骨质\r\n琴桥: 玫瑰木\r\n拾音器:	Fishman Presys+ 拾音器\r\n琴弦: 原厂琴弦\r\n颜色: 原木色\r\n镶嵌: 贝壳\r\n弦钮: MARTIN\r\n产地: 墨西哥\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1RE_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1RE_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1RE_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1RE_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCX1RE_t.jpg'),
(358, 'http://martinguitars.cn/wp-content/uploads/2014/11/GPCPA5_x-710x270.jpg', ' 马丁 Martin GPCPA5K 电箱民谣吉他', '2818RMB', '\r\n型号：马丁 Martin GPCPA5K 电箱民谣吉他\r\nDCPA5K： 41寸D型 \r\nGPCPA5K: 小腰型\r\n面板：    云杉单板\r\n背板：    HPL材质夏威夷相思木\r\n侧板：    HPL材质夏威夷相思木\r\n木材配置：面单板\r\n琴颈：    硬木\r\n指板：    合成乌木\r\n琴桥：    合成乌木\r\n琴头贴片：夏威夷相思木\r\n拾音器：Fishman F1 Analog\r\n产地：   墨西哥\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/GPCPA5_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/GPCPA5K_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/GPCPA5_b_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/GPCPA5_h_1.jpg,http://martinguitars.cn/wp-content/uplo'),
(359, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCPA5K_x-710x270.jpg', ' 马丁 Martin DCPA5K 41寸 D型 电箱民谣吉', '2762RMB', '型号：马丁 Martin DCPA5K 41寸 D型 电箱民谣吉他\r\nDCPA5K： 41寸D型 \r\nGPCPA5K: 小腰型\r\n面板：    云杉单板\r\n背板：    HPL材质夏威夷相思木\r\n侧板：    HPL材质夏威夷相思木\r\n木材配置：面单板\r\n琴颈：    硬木\r\n指板：    合成乌木\r\n琴桥：    合成乌木\r\n琴头贴片：夏威夷相思木\r\n拾音器：Fishman F1 Analog\r\n产地：   墨西哥', 'http://martinguitars.cn/wp-content/uploads/2014/11/DCPA5K_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCPA5K_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCPA5K_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCPA5K_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DCPA5K_t.jpg'),
(370, 'http://martinguitars.cn/wp-content/uploads/2014/11/DRS2_x_1-710x270.jpg', ' 马丁 Martin DRS2 全单电箱民谣吉他', '2550RMB', '型号：马丁 Martin DRS2 全单电箱吉他\r\n面板：云杉单板\r\n油漆：亚光\r\n背板：沙比利单板\r\n侧板：沙比利单板\r\n琴颈：Rust Stratabond\r\n指板：Black Richlite 混合乌木材质\r\n琴颈：Solid Sipo\r\n弦枕：合成材料\r\n琴桥：Ebony\r\n拾音器：Fishman Sonitone\r\n原厂配备：琴盒\r\n产地：墨西哥\r\n', 'http://martinguitars.cn/wp-con\r\ntent/uploads/2014/11/DRS2_x_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DRS2_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/\r\n11/DRS2_b_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DRS2_h_1.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/DRS2_t_1.jpg'),
(417, 'http://martinguitars.cn/wp-content/uploads/2014/11/D-28-Marquis-Sunburst_x-710x270.jpg', ' 马丁 Martin D-28 Marquis Sunbur', '2916RMB', '\r\n【型号】马丁 Martin D-28 Marquis Sunburst 侯爵/伯爵\r\n【尺寸】D型 41寸\r\n【面板】Adirondack云杉单板\r\n【背板】东印度玫瑰木单板\r\n【侧板】东印度玫瑰木单板\r\n【琴颈】Select Hardwood\r\n【指板】乌木\r\n【琴码】乌木\r\n【产地】美国 \r\n【赠品配件】Martin马丁原装琴盒\r\n【The Basics】\r\nThe D-28 Marquis Sunburst features “Martin Golden Era” (1930-1940) appointments \r\nand is constructed in East Indian rosewood, \r\nincluding a top embellished with the Martin 1935 sunburst pattern. \r\nPerfect for the advanced guitarist.\r\nGuitar of choice for Martin Ambassadors Band of Skulls and Of Monsters and Men.\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/D-28-Marquis-Sunburst_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-28-Marquis-Sunburst_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-28-Marquis-Sunburst_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-28-Marquis-Sunburst_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/D-28-Marquis-Sunburst_t.jpg'),
(445, 'http://martinguitars.cn/wp-content/uploads/2014/11/HD-45V_x-710x270.jpg', ' 马丁 Martin HD-28V 民谣吉他', '2908RMB', '\r\n型号: 马丁 Martin HD-28V\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n指板：乌木\r\n琴桥：乌木\r\n琴颈形状：改良V形\r\n音梁结构：标准扇形结构\r\n指板宽度：1-11/16\r\n弦长：25.4”\r\n琴体尺寸：D-14 品\r\n包边：颗粒纹包边\r\n琴盒：545E Geib 样式\r\n琴体抛光：亮光抛光\r\n琴弦：Martin MSP 4200\r\n产地：美产\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/11/HD-45V_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/HD-28V_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/HD-28V_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/HD-28V_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/11/HD-28V_t.jpg'),
(476, 'http://martinguitars.cn/wp-content/uploads/2014/12/DX1E_x-710x270.jpg', ' 马丁 Martin DX1E 电箱吉他', '2607RMB', '\r\n【型号】Martin DX1E 电箱民谣吉他\r\n【面板】Sitka云杉单板\r\n【背板】高级合成桃花心\r\n【侧板】高级合成桃花心\r\n【琴颈】独特纹路精选 HARDWOOD琴头琴颈为一体雕刻而成\r\n【指板】黑色环氧树脂纤维复合材料\r\n【弦枕】White Corian\r\n【品点】白色\r\n【琴码】黑色环氧树脂纤维复合材料\r\n【琴弦】MSP+ 4100 Coated Light Phosphor Bronze\r\n【颜色】哑光原色\r\n【弦钮】马丁\r\n【拾音器】Fishman Presys Plus w/Tuner\r\n【琴盒】: Available as an option\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/12/DX1E_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DX1E_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DX1E_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DX1E_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DX1E_t.jpg'),
(512, 'http://martinguitars.cn/wp-content/uploads/2014/12/00-15M_x-710x270.jpg', ' 马丁 Martin 00-15M 全单民谣吉他', '2521RMB', '型号：马丁 Martin 00-15M\r\n面板：单板桃花心木\r\n侧板：单板桃花心木\r\n背板：单板桃花心木\r\n指板：南美酸枝木\r\n琴桥：南美酸枝木\r\n琴颈：桃花心木\r\n音梁结构：标准X形音梁\r\n琴颈形状：改良椭圆型\r\n琴身尺寸：00-14Fret\r\n包边：无\r\n琴体抛光：光滑亮光\r\n赠送附件：Martin 330 马丁330琴箱\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/12/00-15M_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/00-15M_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/00-15M_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/00-15M_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/00-15M_t.jpg'),
(522, 'http://martinguitars.cn/wp-content/uploads/2014/12/D-16GT_x-710x270.jpg', ' 马丁 Martin D-16GT 全单民谣吉他', '2727RMB', '\r\n【型号】马丁 Martin D-16GT\r\n【琴体、尺寸】41寸 D型 D-14 Fret  \r\n【面板】单板北美云杉\r\n【背板】单板桃花芯木\r\n【侧板】单板桃花芯木\r\n【琴颈】 黑色环氧树脂纤维复合材料\r\n【琴劲型状】Modified Low Oval\r\n【琴头贴片】印度东部玫瑰木\r\n【指板】精选硬木\r\n【琴桥】乌木/动物骨\r\n【卷弦器】Chrome Enclosed w/ Small Buttons\r\n【琴弦】马丁 Martin SP Lifespan Phosphor Bronze Medium Gauge (Martin MSP7200)\r\n【琴桥固弦器】白色/黑点\r\n【产地】美国　\r\n【附带配件】Martin 345 马丁琴盒\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/12/D-16GT_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/D-16GT_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/D-16GT_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/D-16GT_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/D-16GT_t.jpg'),
(534, 'http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_x-710x270.jpg', ' 马丁 Martin DC-15ME 全单电箱吉他', '2106RMB', '【型号】马丁 Martin GPCPA4 Rosewood 电箱民谣\r\n【面板】西提卡云杉单板\r\n【背板】东印度玫瑰木单板\r\n【侧板】东印度玫瑰木单板\r\n【指板】Black Richlite\r\n【琴颈】Select Hardwood\r\n【琴码】Black Richlite\r\n【拾音器】Fishman F1 Analog\r\n【赠送配件】Martin 375 Hardshell 马丁琴箱 \r\n【产地】美国\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/12/DC-15ME_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DC-15ME_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DC-15ME_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DC-15ME_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DC-15ME_t.jpg'),
(624, 'http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_x-710x270.jpg', ' 马丁 Martin GPCPA4 Rosewood 全单电', '2775RMB', '【型号】马丁 Martin GPCPA4 Rosewood 电箱民谣\r\n【面板】西提卡云杉单板\r\n【背板】东印度玫瑰木单板\r\n【侧板】东印度玫瑰木单板\r\n【指板】Black Richlite\r\n【琴颈】Select Hardwood\r\n【琴码】Black Richlite\r\n【拾音器】Fishman F1 Analog\r\n【赠送配件】Martin 375 Hardshell 马丁琴箱 \r\n【产地】美国', 'http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_t.jpg'),
(627, 'http://martinguitars.cn/wp-content/uploads/2014/12/DCPA4_x-710x270.jpg', ' 马丁 Martin DCPA4 全单电箱吉他', '2771RMB', '\r\n型号： Martin 马丁 DCPA4 \r\n面板： 西提卡云杉单板 \r\n背侧板：Solid Siris wings w/ Solid East Indian Rosewood center wedge\r\n琴颈： Select Hardwood\r\n指板： Black Richlite   纤维材料\r\n弦码： Black Richlite\r\n弦钮： Gold Enclosed w/ Large Buttons\r\n琴弦： Martin Studio Performance Lifespan Phosphor Bronze Light (MSP7100)\r\n拾音器：Fishman F1 Analog\r\n产地： 美国 \r\n附件： Martin Case 345 Hardshell 棕色鼓面皮箱\r\n', 'http://martinguitars.cn/wp-content/uploads/2014/12/DCPA4_x.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DCPA4_f.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DCPA4_b.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DCPA4_h.jpg,http://martinguitars.cn/wp-content/uploads/2014/12/DCPA4_t.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `guitar_list`
--

CREATE TABLE IF NOT EXISTS `guitar_list` (
  `gid` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `guitar_list`
--

INSERT INTO `guitar_list` (`gid`, `image`, `link`, `title`, `price`, `date`, `data`) VALUES
(1, 'http://martinguitars.cn/wp-content/uploads/2014/04/Martin-Guitar-logo.png', 'http://martinguitars.cn/item/1', 'Martin 马丁 吉他分类', '2000RMB', '2014年4月24日', '\r\n\r\nMartin马丁吉他历史悠久，过去已经停产的，现在在产的，各种复刻版的，还有签名款的，型号很多。\r\n\r\n按系列分类，Martin…'),
(19, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-42_x-495x325.jpg', 'http://martinguitars.cn/item/19', '马丁 Martin D-42 41寸 全单民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n配置\r\n\r\n型号：马丁 Martin D-42 \r\n尺寸：41寸\r\n琴型：D型\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n指板：黑檀木\r\n琴桥：黑檀木\r\n琴颈：硬木\r\n琴体抛光：亮光抛光\r\n音梁结构：标准扇形结构\r\n琴颈形状：low…'),
(29, 'http://martinguitars.cn/wp-content/uploads/2014/10/D-41_x-495x325.jpg', 'http://martinguitars.cn/item/29', '马丁 Martin D-41 全单民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n\r\n\r\n\r\n\r\n配置\r\n型号：马丁 Martin D-41\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴桥：黑檀木\r\n指板：黑檀木\r\n琴颈：硬木\r\n音梁结构：标准X结构\r\n琴体抛光：亮光抛光\r\n琴颈形状：LOW…'),
(39, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-45_x-495x325.jpg', 'http://martinguitars.cn/item/39', '马丁 Martin D-45 41寸民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n配置\r\n型号：马丁 Martin D-45\r\n面板：单板云杉\r\n侧板：单板东印度玫瑰木\r\n背板：单板东印度玫瑰木\r\n琴颈：硬木\r\n琴桥：黑檀木\r\n指板：黑檀木\r\n音梁结构：标准X结构\r\n琴颈形状：LOW…'),
(40, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-35_x-495x325.jpg', 'http://martinguitars.cn/item/40', '马丁 Martin D-35 全单民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n配置\r\n型号：马丁 Martin D-35\r\n面板：单板云杉\r\n侧板：单板东印度玫瑰木\r\n背板：单板东印度玫瑰木\r\n指板：黑檀木\r\n琴桥：黑檀木\r\n琴颈：硬木\r\n音梁结构：标准X结构\r\n琴体尺寸：D-14…'),
(42, 'http://martinguitars.cn/wp-content/uploads/2014/07/D-18_x-495x325.jpg', 'http://martinguitars.cn/item/42', '马丁 Martin D-18 41寸 民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n配置\r\n\r\n型号：马丁 Martin D-18    \r\n面��…'),
(44, 'http://martinguitars.cn/wp-content/uploads/2014/04/HD-28_x-495x325.jpg', 'http://martinguitars.cn/item/44', '马丁 Martin HD-28 民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n配置\r\n型号：马丁 Martin HD28\r\n面板：单板云杉…'),
(46, 'http://martinguitars.cn/wp-content/uploads/2014/04/GPCPA4_x-495x325.jpg', 'http://martinguitars.cn/item/46', '马丁 Martin GPCPA4 全单电箱民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n配置\r\n【型号】马丁 Martin GPCPA4 电箱民谣\r\n【面板】西提卡云杉单板\r\n【背板】沙比利单板\r\n【侧板】沙比利单板\r\n【指板】Black…'),
(47, 'http://martinguitars.cn/wp-content/uploads/2014/07/LX1E_x_1-495x325.jpg', 'http://martinguitars.cn/item/47', '小马丁 Martin LX1 LX1E 单板旅行吉他', '2000RMB', '2014年11月11日', '\r\n\r\n\r\n\r\n\r\n吉他试听\r\n\r\n吉他配置\r\n【型号】马丁 LX1…'),
(49, 'http://martinguitars.cn/wp-content/uploads/2014/04/000-15M_x-495x325.jpg', 'http://martinguitars.cn/item/49', '马丁 Martin 000-15M 全单民谣吉他', '2000RMB', '2014年10月10日', '\r\n试听\r\n库存情况：现货发售\r\n\r\n配置\r\n型号：马丁…'),
(50, 'http://martinguitars.cn/wp-content/uploads/2014/04/DX1AE_x-495x325.jpg', 'http://martinguitars.cn/item/50', '马丁 Martin DX1AE 41寸 单板电箱民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n    \r\n    \r\n    \r\n  \r\n吉他配置\r\n\r\n型号：马丁…'),
(51, 'http://martinguitars.cn/wp-content/uploads/2014/08/DRS2_x_1-495x325.jpg', 'http://martinguitars.cn/item/51', '马丁 Martin DRS2 41寸民谣吉他', '2000RMB', '2014年4月24日', '\r\n吉他试听\r\n\r\n吉他配置\r\n\r\n型号：马丁 Martin DRS2\r\n外形尺寸：D-14…'),
(53, 'http://martinguitars.cn/wp-content/uploads/2014/08/DXMAE_x-495x325.jpg', 'http://martinguitars.cn/item/53', '马丁 Martin DXMAE 民谣吉他', '2000RMB', '2014年4月25日', '\r\n试听\r\n配置\r\n型号：马丁 Martin X Series DXMAE Acoustic\r\n琴型：…'),
(62, 'http://martinguitars.cn/wp-content/uploads/2014/04/D-28_x-495x325.jpg', 'http://martinguitars.cn/item/62', '马丁 Martin D28 41寸全单民谣吉他', '2000RMB', '2014年4月30日', '\r\n试听\r\n\r\n\r\n配置\r\n\r\n型号：    马丁 Martin D28\r\n尺寸：…'),
(69, 'http://martinguitars.cn/wp-content/uploads/2014/05/DRSGT_x-495x325.jpg', 'http://martinguitars.cn/item/69', '马丁 Martin DRSGT 全单民谣吉他', '2000RMB', '2014年5月26日', '\r\n试听\r\n配置\r\n型号：马丁 Martin DRSGT\r\n面板：DRSGT…'),
(94, 'http://martinguitars.cn/wp-content/uploads/2014/08/Martin-D-1GT-495x325.jpg', 'http://martinguitars.cn/item/94', '马丁 Martin D-1GT 41寸 D型 民谣吉他', '2000RMB', '2014年8月3日', '\r\n试听\r\n\r\n\r\n\r\n\r\n\r\n配置\r\n【型号】Martin D-1GT\r\n【面板】西提卡云杉单板\r\n【背板】沙比利单板\r\n【侧板】沙比利单板\r\n【琴颈】Rust…'),
(152, 'http://martinguitars.cn/wp-content/uploads/2014/08/DRS1_rev_x-495x325.jpg', 'http://martinguitars.cn/item/152', '马丁 Martin DRS1 全单电箱民谣吉他', '2000RMB', '2014年8月3日', ' \r\n试听\r\n\r\n千与千寻片尾曲Always with me 木吉他 solo…'),
(159, 'http://martinguitars.cn/wp-content/uploads/2014/08/DX1RAE_x-495x325.jpg', 'http://martinguitars.cn/item/159', '马丁 Martin DX1RAE 41寸 单板电箱民谣吉他', '2000RMB', '2014年8月3日', '\r\n吉他试听\r\n吉他配置\r\n\r\n型号: 马丁 Martin DX1RAE\r\n尺寸：41寸…'),
(165, 'http://martinguitars.cn/wp-content/uploads/2014/08/HD-35_x-495x325.jpg', 'http://martinguitars.cn/item/165', '马丁 Martin HD-35 全单民谣吉他', '2000RMB', '2014年8月5日', '\r\n试听\r\n\r\n配置\r\n型号: 马丁 Martin HD-35 全单民谣\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n琴桥：乌木\r\n指板：乌木\r\n音梁结构：标准扇形结构\r\n琴颈形状：改良V形\r\n指板宽度：1-3/4\r\n弦长：25.4”\r\n琴体尺寸：D-12…'),
(171, 'http://martinguitars.cn/wp-content/uploads/2014/08/HD-45V_x-495x325.jpg', 'http://martinguitars.cn/item/171', '马丁 Martin HD-28V 民谣吉他', '2000RMB', '2014年8月5日', '\r\n试听\r\n配置\r\n型号: 马丁 Martin HD-28V\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n指板：乌木\r\n琴桥：乌木\r\n琴颈形状：改良V形\r\n音梁结构：标准扇形结构\r\n指板宽度：1-11/16\r\n弦长：25.4”\r\n琴体尺寸：D-14…'),
(208, 'http://martinguitars.cn/wp-content/uploads/2014/11/000-28_x-495x325.jpg', 'http://martinguitars.cn/item/208', '马丁 Martin 00028 全单民谣吉他', '2000RMB', '2014年8月5日', '\r\n吉他配置\r\n\r\n型号：马丁 Martin 00028 全单民谣�…'),
(209, 'http://martinguitars.cn/wp-content/uploads/2014/08/M-36_x-495x325.jpg', 'http://martinguitars.cn/item/209', '马丁 Martin M-36 全单民谣吉他', '2000RMB', '2014年8月5日', '\r\n试听\r\n\r\n配置\r\n型号：马丁 Martin M-36\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n指板：黑檀木\r\n琴桥：黑檀木\r\n颜色：原木色\r\n音梁结构：标准扇形结构\r\n琴颈形状：LOW…'),
(234, 'http://martinguitars.cn/wp-content/uploads/2014/08/Steel-String-Backpacker-Guitar_x-495x325.jpg', 'http://martinguitars.cn/item/234', '马丁 Martin Backpacker 民谣旅行吉他', '2000RMB', '2014年8月7日', '\r\n试听\r\n配置\r\n【型号】马丁民谣旅行吉他 Martin…'),
(246, 'http://martinguitars.cn/wp-content/uploads/2014/08/Martin-D-16RGT_x-495x325.jpg', 'http://martinguitars.cn/item/246', '马丁 Martin D-16RGT 41寸 全单民谣吉他', '2000RMB', '2014年8月7日', '\r\n试听\r\n\r\n\r\n\r\n\r\n\r\n配置\r\n型号：马丁 Martin D-16RGT\r\n琴体尺寸：D-14…'),
(252, 'http://martinguitars.cn/wp-content/uploads/2014/10/OM-1GT_x-495x325.jpg', 'http://martinguitars.cn/item/252', '马丁 Martin OM-1GT OM型 民谣吉他', '2000RMB', '2014年8月8日', '\r\n试听\r\n\r\n配置\r\n型号: 马丁 Martin OM-1GT\r\nConstruction:…'),
(253, 'http://martinguitars.cn/wp-content/uploads/2014/11/D-28P_x-495x325.jpg', 'http://martinguitars.cn/item/253', '马丁 Martin D-28P 全单民谣吉他', '2000RMB', '2014年8月8日', '\r\n吉他配置\r\n\r\n型号：马丁 Martin D28P 吉他\r\n面板：北美云杉\r\n背板：印度东部玫瑰木\r\n侧板：印度东部玫瑰木\r\n琴颈：精选HARDWOOD\r\n琴颈形状：LOW…'),
(254, 'http://martinguitars.cn/wp-content/uploads/2014/11/DXK2AE_x-495x325.jpg', 'http://martinguitars.cn/item/254', '马丁 Martin DXK2AE 41寸 民谣吉他', '2000RMB', '2014年8月8日', '\r\n\r\n吉他配置\r\n\r\n型号：马丁 Martin DXK2AE\r\n面板：夏威夷相思木HPL纹理\r\n背板：夏威夷相思木HPL纹理\r\n侧板：夏威夷相思木HPL纹理\r\n琴颈：Natural…'),
(258, 'http://martinguitars.cn/wp-content/uploads/2014/10/OM-42_x-495x325.jpg', 'http://martinguitars.cn/item/258', '马丁 Martin OM-42 全单民谣吉他', '2000RMB', '2014年8月26日', '\r\n试听\r\n\r\n配置\r\n\r\n型号：马丁 Martin OM-42 \r\n面板：西岸云杉木单板\r\n音孔装饰：45型音孔饰圈\r\n背板：东印度玫瑰木单板\r\n侧板：东印度玫瑰木单板\r\n琴颈：桃花心木\r\n指板：乌木，有贝壳镶嵌\r\n琴颈形状：低型舒适琴颈\r\n琴体包边：象牙纹饰包边…'),
(263, 'http://martinguitars.cn/wp-content/uploads/2014/10/SWDGT_x-495x325.jpg', 'http://martinguitars.cn/item/263', '马丁 Martin SWDGT 41寸 全单民谣吉他', '2000RMB', '2014年10月31日', '\r\n试听\r\n\r\n配置\r\n\r\n【型号】马丁 Martin SWDGT\r\n【琴体】D型\r\n【面板】西提卡云杉单板\r\n【背板】樱桃木单板\r\n【侧板】樱桃木单板\r\n【指板】樱桃木\r\n【琴颈】樱桃木\r\n【琴弦】Martin…'),
(269, 'http://martinguitars.cn/wp-content/uploads/2014/10/SWOMGT_x-495x325.jpg', 'http://martinguitars.cn/item/269', '马丁 Martin SWOMGT OM型 全单民谣吉他', '2000RMB', '2014年10月31日', '\r\n试听\r\n\r\n配置\r\n【型号】马丁 Martin SWOMGT\r\n【琴体】OM型\r\n【面板】西提卡云杉单板\r\n【背板】樱桃木单板\r\n【侧板】樱桃木单板\r\n【指板】樱桃木\r\n【琴颈】樱桃木\r\n【琴弦】Martin…'),
(275, 'http://martinguitars.cn/wp-content/uploads/2014/10/D-15M_x-495x325.jpg', 'http://martinguitars.cn/item/275', '马丁 Martin D-15M 41寸 全单民谣吉他', '2000RMB', '2014年10月31日', '\r\n库存情况：现货发售\r\n试听\r\n\r\n配置\r\n型号：马丁…'),
(297, 'http://martinguitars.cn/wp-content/uploads/2014/10/LXK2_x_1-495x325.jpg', 'http://martinguitars.cn/item/297', 'Martin LXK2 Little Martin 小马丁 民谣吉他 旅行吉他', '2000RMB', '2014年11月11日', '\r\n\r\n\r\n\r\n产品配置\r\n\r\n【型号】马丁 Martin LXK2 旅行吉他\r\n【尺寸】34寸…'),
(305, 'http://martinguitars.cn/wp-content/uploads/2014/10/OM-28_x-495x325.jpg', 'http://martinguitars.cn/item/305', '马丁 Martin OM-28V OM型 全单民谣吉他', '2000RMB', '2014年10月31日', '\r\n吉他配置\r\n型号: 马丁 Martin OM-28V\r\n结构: Mahogany…'),
(318, 'http://martinguitars.cn/wp-content/uploads/2014/11/000-28EC_x-495x325.jpg', 'http://martinguitars.cn/item/318', '马丁 Martin 00028EC 全单板民谣木吉他 Clapton签名款', '2000RMB', '2014年11月2日', '\r\n马丁吉他试听\r\n\r\n吉他参数配置\r\n\r\n型号：Martin…'),
(334, 'http://martinguitars.cn/wp-content/uploads/2014/11/OM-21_x-495x325.jpg', 'http://martinguitars.cn/item/334', '马丁 Martin OM-21 OM型 全单民谣吉他', '2000RMB', '2014年11月2日', '\r\n吉他试听\r\n\r\n吉他配置\r\n型号：马丁 Martin OM-21…'),
(340, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1E_x-495x325.jpg', 'http://martinguitars.cn/item/340', '马丁 Martin DCX1E 41寸 D型电箱民谣吉他', '2000RMB', '2014年11月2日', '\r\n吉他试听\r\n参数配置\r\n\r\n型号: 马丁 Martin DCX1E 电箱民谣吉他\r\n琴形:…'),
(346, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1KE_x-495x325.jpg', 'http://martinguitars.cn/item/346', '马丁 Martin DCX1KE 41寸 D型 电箱民谣吉他', '2000RMB', '2014年11月2日', '\r\n吉他试听\r\n参数配置\r\n\r\n型号: 马丁 Martin DCX1KE…'),
(352, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCX1RE_x-495x325.jpg', 'http://martinguitars.cn/item/352', '马丁 Martin DCX1RE 41寸 D型 电箱民谣吉他', '2000RMB', '2014年11月2日', '\r\n吉他试听\r\n参数配置\r\n\r\n型号: 马丁 Martin DCX1RE…'),
(358, 'http://martinguitars.cn/wp-content/uploads/2014/11/GPCPA5_x-495x325.jpg', 'http://martinguitars.cn/item/358', '马丁 Martin GPCPA5K 电箱民谣吉他', '2000RMB', '2014年11月2日', ' \r\n吉他试听\r\n参数配置\r\n\r\n型号：马丁 Martin GPCPA5K…'),
(359, 'http://martinguitars.cn/wp-content/uploads/2014/11/DCPA5K_x-495x325.jpg', 'http://martinguitars.cn/item/359', '马丁 Martin DCPA5K 41寸 D型 电箱民谣吉他', '2000RMB', '2014年11月2日', '\r\n库存情况：现货发售\r\n吉他试听\r\n\r\n参数配置\r\n\r\n型号：马丁…'),
(370, 'http://martinguitars.cn/wp-content/uploads/2014/11/DRS2_x_1-495x325.jpg', 'http://martinguitars.cn/item/370', '马丁 Martin DRS2 全单电箱民谣吉他', '2000RMB', '2014年11月3日', '\r\n试听\r\n吉他配置\r\n型号：马丁 Martin DRS2 全单电箱吉他\r\n面板：云杉单板\r\n油漆：亚光\r\n背板：沙比利单板\r\n侧板：沙比利单板\r\n琴颈：Rust…'),
(417, 'http://martinguitars.cn/wp-content/uploads/2014/11/D-28-Marquis-Sunburst_x-495x325.jpg', 'http://martinguitars.cn/item/417', '马丁 Martin D-28 Marquis Sunburst 41寸 全单民谣吉他', '2000RMB', '2014年9月24日', '\r\n吉他试听评测\r\nhttps://www.youtube.com/watch?v=Zi2SQrTeXfQ\r\n吉他配置\r\n\r\n【型号】马丁…'),
(445, 'http://martinguitars.cn/wp-content/uploads/2014/11/HD-45V_x-495x325.jpg', 'http://martinguitars.cn/item/445', '马丁 Martin HD-28V 民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n\r\n配置\r\n\r\n型号: 马丁 Martin HD-28V\r\n面板：单板云杉\r\n背板：单板东印度玫瑰木\r\n侧板：单板东印度玫瑰木\r\n琴颈：硬木\r\n指板：乌木\r\n琴桥：乌木\r\n琴颈形状：改良V形\r\n音梁结构：标准扇形结构\r\n指板宽度：1-11/16\r\n弦长：25.4”\r\n琴体尺寸：D-14…'),
(476, 'http://martinguitars.cn/wp-content/uploads/2014/12/DX1E_x-495x325.jpg', 'http://martinguitars.cn/item/476', '马丁 Martin DX1E 电箱吉他', '2000RMB', '2014年12月4日', '吉他配置\r\n\r\n【型号】Martin DX1E 电箱民谣吉他\r\n【面板】Sitka云杉单板\r\n【背板】高级合成桃花心\r\n【侧板】高级合成桃花心\r\n【琴颈】独特纹路精选…'),
(512, 'http://martinguitars.cn/wp-content/uploads/2014/12/00-15M_x-495x325.jpg', 'http://martinguitars.cn/item/512', '马丁 Martin 00-15M 全单民谣吉他', '2000RMB', '2014年11月2日', '\r\n配置\r\n型号：马丁 Martin 00-15M\r\n面板：单板桃花心木\r\n侧板：单板桃花心木\r\n背板：单板桃花心木\r\n指板：南美酸枝木\r\n琴桥：南美酸枝木\r\n琴颈：桃花心木\r\n音梁结构：标准X形音梁\r\n琴颈形状：改良椭圆型\r\n琴身尺寸：00-14Fret\r\n包边：无\r\n琴体抛光：光滑亮光\r\n赠送附件：Martin…'),
(522, 'http://martinguitars.cn/wp-content/uploads/2014/12/D-16GT_x-495x325.jpg', 'http://martinguitars.cn/item/522', '马丁 Martin D-16GT 全单民谣吉他', '2000RMB', '2014年11月1日', '\r\n吉他配置\r\n\r\n【型号】马丁 Martin D-16GT\r\n【琴体、尺寸】41寸…'),
(534, 'http://martinguitars.cn/wp-content/uploads/2014/12/DC-15ME_x-495x325.jpg', 'http://martinguitars.cn/item/534', '马丁 Martin DC-15ME 全单电箱吉他', '2000RMB', '2014年10月20日', '\r\n吉他试听\r\n\r\n吉他配置\r\n\r\n【型号】马丁 Martin DC-15ME\r\n【尺寸】41寸…'),
(624, 'http://martinguitars.cn/wp-content/uploads/2014/12/GPCPA4_Rosewood_x-495x325.jpg', 'http://martinguitars.cn/item/624', '马丁 Martin GPCPA4 Rosewood 全单电箱民谣吉他', '2000RMB', '2014年4月24日', '\r\n试听\r\n配置\r\n【型号】马丁 Martin GPCPA4 Rosewood 电箱民谣\r\n【面板】西提卡云杉单板\r\n【背板】东印度玫瑰木单板\r\n【侧板】东印度玫瑰木单板\r\n【指板】Black…'),
(627, 'http://martinguitars.cn/wp-content/uploads/2014/12/DCPA4_x-495x325.jpg', 'http://martinguitars.cn/item/627', '马丁 Martin DCPA4 全单电箱吉他', '2000RMB', '2014年10月5日', '\r\n\r\n吉他试听\r\n\r\n\r\n吉他配置\r\n\r\n型号： Martin 马丁…');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`image`, `link`, `title`, `price`) VALUES
('http://item.jd.com/1456332552.html', 'http://img12.360buyimg.com/n7/jfs/t736/343/1378705461/209704/e9ce57cb/5534b60dNe2b39a5e.jpg', '卡卡（kaka）单板尤克里里 ukulele小吉他 乌克丽丽 非洲桃花芯  棕色 KUC/T-25D 23寸', 300),
('http://item.jd.com/1447690668.html', 'http://img13.360buyimg.com/n7/jfs/t850/337/443920136/86405/3d989b6f/55238daeNa6128572.jpg', '卢森23寸尤克里里Ukulele全相思木夏威夷四弦小吉他乌克丽丽儿童吉它 U-235 23寸', 300),
('http://item.jd.com/1080312369.html', 'http://img14.360buyimg.com/n7/jfs/t1144/275/442808277/164523/bf4c7567/5523c465N2a860f99.jpg', 'TOM TUC200B尤克里里 高品质23寸ukulele TUC200专业演奏级乌克丽丽 TUC200B 23寸 沙比利', 300),
('http://item.jd.com/1460891935.html', 'http://img10.360buyimg.com/n7/jfs/t1213/139/432815465/50965/7a692679/5523acb0Na7b24841.jpg', '维邦wellburn 单板尤克里里ukulele 夏威夷小吉他乌克丽丽 23寸 单板U-510纯木版', 300),
('http://item.jd.com/1368971038.html', 'http://img13.360buyimg.com/n7/jfs/t754/161/237872065/147418/8181033b/5496b98eNeb547e74.jpg', '艾薇儿23寸尤克里里ukulele 单板乌克丽丽 夏威夷旅行小四弦吉他 云杉玫瑰木电箱', 300),
('http://item.jd.com/1474557106.html', 'http://img11.360buyimg.com/n7/jfs/t778/341/1222672381/83485/a95aed79/5525cea4Nb40cb714.jpg', '速腾SAGITAR  尤克里里 Ukulele 四弦琴 23寸单板 吉他 玫瑰色', 300),
('http://item.jd.com/1456332554.html', 'http://img14.360buyimg.com/n7/jfs/t1066/354/464440010/131126/d33ceb13/55262091N01a621a2.jpg', '卡卡（kaka）单板尤克里里 ukulele小吉他 乌克丽丽 英格曼云杉 米白色 KUC/T-26D 23寸', 300),
('http://item.jd.com/1447690669.html', 'http://img14.360buyimg.com/n7/jfs/t1027/138/434636502/97014/cd55b64c/55238db2Nf01b3915.jpg', '卢森23寸尤克里里Ukulele全相思木夏威夷四弦小吉他乌克丽丽儿童吉它 U-239  23寸', 300),
('http://item.jd.com/1080312371.html', 'http://img11.360buyimg.com/n7/jfs/t175/239/545473138/170332/14a3108/5390375aNa761bee6.jpg', 'TOM TUC200B尤克里里 高品质23寸ukulele TUC200专业演奏级乌克丽丽 TUC200  23寸桃花芯木', 300),
('http://item.jd.com/1335611892.html', 'http://img12.360buyimg.com/n7/jfs/t754/256/1214021458/178977/3575b55/5524e98aN105fce03.jpg', '彩虹人AQUA CK2 CK3 古典琴头 相思木尤克里里 Ukulele 23寸 26寸 23寸', 300),
('http://item.jd.com/1433488959.html', 'http://img14.360buyimg.com/n7/jfs/t733/314/1207906562/174441/6b55fcce/5524dcb1Nce5636d7.jpg', 'Tom ukulele桃花心木单板尤克里里乌克丽丽 小吉他 23寸 TUC-230', 300),
('http://item.jd.com/1212615300.html', 'http://img10.360buyimg.com/n7/jfs/t181/124/1939349698/71883/b95a13a/53bd1813N27101f28.jpg', '帕特里克Patrick ukulele尤克里里 26寸云杉单板尤克里里', 300),
('http://item.jd.com/1472508596.html', 'http://img11.360buyimg.com/n7/jfs/t814/136/41173109/163761/ca4110e6/54f1bfafN440f2288.jpg', 'NALU 美人鱼530系列 ukulele尤克里里 桃花心木单板乌克丽丽 夏威夷小吉他 N-530C 23寸 桃花芯木', 300),
('http://item.jd.com/1460891939.html', 'http://img14.360buyimg.com/n7/jfs/t1048/254/444786783/70779/d4c4c8c/5523acd7N7bf52ec0.jpg', '维邦wellburn 单板尤克里里ukulele 夏威夷小吉他乌克丽丽 23寸 单板U-650纯木版', 300),
('http://item.jd.com/1035625042.html', 'http://img12.360buyimg.com/n7/jfs/t169/58/788796034/168754/42559364/53995fc7N650c9b43.jpg', 'TOM TUC700尤克里里 相思木23寸专业ukulele 夏威夷4弦小吉他 乌克丽丽', 300),
('http://item.jd.com/1482868362.html', 'http://img12.360buyimg.com/n7/jfs/t817/259/442825985/70922/e15d4f1b/5523a1a2Ne3eb4d60.jpg', '维邦WellBurn 吉他丽丽夏威夷六弦小吉他 28寸 单板U-678电箱', 300),
('http://item.jd.com/1430796797.html', 'http://img12.360buyimg.com/n7/jfs/t841/21/439211666/194415/a5079fc5/5524de87N7af6b2f6.jpg', 'Tom ukulele 相思木 尤克里里 四弦吉他 23寸 tuc-700', 300),
('http://item.jd.com/1481751797.html', 'http://img12.360buyimg.com/n7/jfs/t796/360/431410737/86511/c6cd4f2f/552357aaN43189a03.jpg', '台湾Uma Ukulele 全单板尤克里里乌克丽丽 26寸T型全单UK-20ST', 300),
('http://item.jd.com/1472508595.html', 'http://img10.360buyimg.com/n7/jfs/t865/154/47494151/163761/ca4110e6/54f1c03eNfba17b44.jpg', 'NALU 美人鱼530系列 ukulele尤克里里 桃花心木单板乌克丽丽 夏威夷小吉他 N-530T 26寸 桃花芯木', 300),
('http://item.jd.com/1422220788.html', 'http://img13.360buyimg.com/n7/jfs/t592/241/872014910/105680/420bdbd5/5490068dNe9039c99.jpg', '美国RP大师珍藏系列乌克丽丽ukulele尤克里里夏威夷四弦小吉他送包琴弦背带教材调音器 高档UK23全相思木*大礼包', 300),
('http://item.jd.com/1080312370.html', 'http://img10.360buyimg.com/n7/jfs/t151/85/524257875/167240/aa1ddfc7/5390388eNe5a1236e.jpg', 'TOM TUC200B尤克里里 高品质23寸ukulele TUC200专业演奏级乌克丽丽 TUS200B 21寸沙比利', 300),
('http://item.jd.com/1397124472.html', 'http://img12.360buyimg.com/n7/jfs/t490/334/603486854/165116/b9a8e5c6/54758b85Nad0f39a6.jpg', '尤克里里 ukulele小吉他 UMA图腾款 单板吉他 23寸太阳图腾', 300),
('http://item.jd.com/1431901859.html', 'http://img14.360buyimg.com/n7/jfs/t1021/231/449183825/178913/f84ed725/5524dcfbN04818266.jpg', 'Tom ukulele 相思木单板尤克里里 乌克丽丽 小吉他 26寸 TUT-730', 300),
('http://item.jd.com/1481751796.html', 'http://img11.360buyimg.com/n7/jfs/t955/150/435352540/95630/1dc4d795/552357a3N527265dd.jpg', '台湾Uma Ukulele 全单板尤克里里乌克丽丽 23寸C型全单UK-20SC', 300),
('http://item.jd.com/1460891938.html', 'http://img13.360buyimg.com/n7/jfs/t811/332/452110173/82918/5b7ddae2/5523acccN792ce679.jpg', '维邦wellburn 单板尤克里里ukulele 夏威夷小吉他乌克丽丽 23寸 单板U-560电箱版', 300),
('http://item.jd.com/1460701196.html', 'http://img11.360buyimg.com/n7/jfs/t1216/106/450834206/75524/5b09e99/5524eec5Ne3a43d67.jpg', 'LEHO LHC-SWR云杉单板玫瑰木凸背 高端UKULELE尤克里里 LHT-SWR(26寸)', 300),
('http://item.jd.com/1081225626.html', 'http://img11.360buyimg.com/n7/jfs/t157/313/807146211/182085/f476964d/53995d8cN5bd57042.jpg', 'kaka卡卡KUC28D 高端单板ukulele 23寸尤克里里 优质云杉木面单乌克丽丽', 300),
('http://item.jd.com/1471967664.html', 'http://img14.360buyimg.com/n7/jfs/t757/316/1188950621/74188/8fc88237/5523a18eN477610a5.jpg', '维邦WellBurn 吉他丽丽夏威夷六弦小吉他 28寸 维邦U-670纯木', 300),
('http://item.jd.com/1431901858.html', 'http://img13.360buyimg.com/n7/jfs/t1021/231/449183825/178913/f84ed725/5524dcfbN04818266.jpg', 'Tom ukulele 相思木单板尤克里里 乌克丽丽 小吉他 23寸 TUC-730', 300),
('http://item.jd.com/1017550244.html', 'http://img14.360buyimg.com/n7/jfs/t172/13/770335819/143578/7fb65144/53984747Nb1acd6b8.jpg', '帕特里克Patrick ukulele尤克里里 23寸尤克里里', 300),
('http://item.jd.com/1460891937.html', 'http://img12.360buyimg.com/n7/jfs/t751/73/1143399585/81954/f0034efc/5523acc5Nff73c3b5.jpg', '维邦wellburn 单板尤克里里ukulele 夏威夷小吉他乌克丽丽 23寸 单板U-560纯木版', 300),
('http://item.jd.com/1460701195.html', 'http://img10.360buyimg.com/n7/jfs/t1216/106/450834206/75524/5b09e99/5524eec5Ne3a43d67.jpg', 'LEHO LHC-SWR云杉单板玫瑰木凸背 高端UKULELE尤克里里 LHC-SWR(23寸)', 300),
('http://item.jd.com/1058487849.html', 'http://img14.360buyimg.com/n7/jfs/t169/141/526216439/155553/cbdcb139/53903ab7Nffa1414e.jpg', 'TOM TUC200尤克里里 高品质桃花芯木23寸ukulele 4弦小吉他 乌克丽丽 TUC200B 23寸沙比利款', 300),
('http://item.jd.com/1368971040.html', 'http://img10.360buyimg.com/n7/jfs/t565/321/889934971/176198/810f47d6/5496b9abNec0f1604.jpg', '艾薇儿23寸尤克里里ukulele 单板乌克丽丽 夏威夷旅行小四弦吉他 全桃花芯电箱', 300),
('http://item.jd.com/1430796800.html', 'http://img10.360buyimg.com/n7/jfs/t751/36/1223886612/191730/e8803d23/5524e06cN2aa12001.jpg', 'Tom ukulele 相思木 尤克里里 四弦吉他 26寸 tut-700E', 300),
('http://item.jd.com/1138741960.html', 'http://img10.360buyimg.com/n7/jfs/t166/166/787613075/82045/c26bce12/539847daNc4d4f5f3.jpg', '帕特里克Patrick ukulele尤克里里 28寸吉他丽丽', 300),
('http://item.jd.com/1401676992.html', 'http://img12.360buyimg.com/n7/jfs/t1126/333/559267750/94978/b16b3be4/55371f23N6fcc9749.jpg', 'UKULELE 台湾Uma 尤克里里 小吉他  UK-03T-26寸', 300),
('http://item.jd.com/1461643166.html', 'http://img11.360buyimg.com/n7/jfs/t520/332/1312737043/157204/d0005e6d/54c754aaN6529e85f.jpg', '贝壳Leho Ukulele红松单板 LHT-CF尤克里里 电箱型 乌克丽丽26寸 LHC-CF-23寸', 300),
('http://item.jd.com/1422220789.html', 'http://img14.360buyimg.com/n7/jfs/t751/311/169024684/102131/1b8c46aa/54900698Nb2a8f40a.jpg', '美国RP大师珍藏系列乌克丽丽ukulele尤克里里夏威夷四弦小吉他送包琴弦背带教材调音器 单板UK23全夏威夷相思木礼包', 300),
('http://item.jd.com/1481735925.html', 'http://img10.360buyimg.com/n7/jfs/t1018/301/420554097/86540/4973e972/552356e9Nb2b2f409.jpg', '台湾Uma Ukulele 面单板尤克里里乌克丽丽 23寸桃花芯UK05SCE电箱', 300),
('http://item.jd.com/1433533075.html', 'http://img10.360buyimg.com/n7/jfs/t868/111/302582827/187443/28415a2a/5524db7cNf592ad11.jpg', 'Tom ukulele 沙比利入门 尤克里里 小吉他 23寸 tuc-200b', 300),
('http://item.jd.com/1058487748.html', 'http://img13.360buyimg.com/n7/jfs/t205/111/536435502/170332/14a3108/53903b00Nca9881ee.jpg', 'TOM TUC200尤克里里 高品质桃花芯木23寸ukulele 4弦小吉他 乌克丽丽 TUC200 23寸桃花芯木款', 300),
('http://item.jd.com/1460917041.html', 'http://img11.360buyimg.com/n7/jfs/t865/41/438519838/55010/c5aaf953/5523aecaNc2cbd5e2.jpg', '维邦WellBurn尤克里里ukulele乌克丽丽相思木夏威夷小吉他四弦 23寸 CX20纯木版', 300),
('http://item.jd.com/1335611893.html', 'http://img13.360buyimg.com/n7/jfs/t754/256/1214021458/178977/3575b55/5524e98aN105fce03.jpg', '彩虹人AQUA CK2 CK3 古典琴头 相思木尤克里里 Ukulele 23寸 26寸 26寸', 300),
('http://item.jd.com/1017550243.html', 'http://img13.360buyimg.com/n7/jfs/t172/13/770335819/143578/7fb65144/53984747Nb1acd6b8.jpg', '帕特里克Patrick ukulele尤克里里 21寸尤克里里', 300),
('http://item.jd.com/1481735926.html', 'http://img11.360buyimg.com/n7/jfs/t925/321/359354696/80848/247e81b5/552356f1Nb49a455d.jpg', '台湾Uma Ukulele 面单板尤克里里乌克丽丽 23寸云杉UK-06SC', 300),
('http://item.jd.com/1431799199.html', 'http://img14.360buyimg.com/n7/jfs/t751/86/1153355544/173878/8d9b2157/5524dd3aN94091ec9.jpg', 'Tom ukulele 云杉单板 尤克里里原声款 /电箱款 23寸tuc-280电箱款', 300),
('http://item.jd.com/1383840656.html', 'http://img11.360buyimg.com/n7/jfs/t1228/57/452333954/178913/f84ed725/5524d74dNe4db6bd9.jpg', 'Tom ukulele  相思木单板尤克里里 小吉他 23寸 TUC-730', 300),
('http://item.jd.com/1381613598.html', 'http://img13.360buyimg.com/n7/jfs/t1072/219/449063550/192626/4f20fecf/55237bbaN8167c6e8.jpg', '卡卡（kaka） 桃花芯手工全单尤克里里 小吉他ukulele乌克丽丽KUC-MAD 23寸', 300),
('http://item.jd.com/1421094577.html', 'http://img12.360buyimg.com/n7/jfs/t883/234/445757245/79325/4b4d27f8/5524ef03N1aacada4.jpg', 'leho 贝壳 新款奇异虎纹桃花芯尤克里里 ukulele 23寸xm4种颜色 蓝色bs 23寸', 300),
('http://item.jd.com/1267065670.html', 'http://img10.360buyimg.com/n7/jfs/t238/295/1118964144/231933/a2413843/53f5f649Nead6f1ca.jpg', 'TOM旗下 美人鱼Nalu N-520C桃花芯木尤克里里 23寸UKULELE 乌克丽丽', 300),
('http://item.jd.com/1138741961.html', 'http://img11.360buyimg.com/n7/g14/M05/01/07/rBEhVVNgZVIIAAAAAAE1XwKX1zsAAM0HgDrNZsAATV3743.jpg', '帕特里克Patrick ukulele尤克里里 28寸红松单板吉他丽丽', 300),
('http://item.jd.com/1430796798.html', 'http://img13.360buyimg.com/n7/jfs/t1120/239/432335534/194415/a5079fc5/5524de79Nd4f52770.jpg', 'Tom ukulele 相思木 尤克里里 四弦吉他 26寸 tut-700', 300),
('http://item.jd.com/1232993097.html', 'http://img12.360buyimg.com/n7/jfs/t676/216/1190000362/96736/85edc3a5/54f17033N45f05df3.jpg', '卢森Rosen23寸尤克里里Ukulele夏威夷四弦小吉他乌克丽丽儿童吉它', 300),
('http://item.jd.com/1401676991.html', 'http://img11.360buyimg.com/n7/jfs/t1069/93/641093051/94978/b16b3be4/55371f0bN174866f9.jpg', 'UKULELE 台湾Uma 尤克里里 小吉他  UK-03C-23寸', 300),
('http://item.jd.com/1520582319.html', 'http://img14.360buyimg.com/n7/jfs/t1234/103/530115806/84940/d623b848/552cd299Nf798dcff.jpg', '台湾Uma Ukulele 面单板尤克里里乌克丽丽 23寸桃花芯UK05SC', 300),
('http://item.jd.com/1080663030.html', 'http://img10.360buyimg.com/n7/jfs/t166/178/834359774/256697/223f9f0a/53995e18Nbe0c54eb.jpg', 'KAKA卡卡KUC21 UKULELE 23寸尤克里里 四弦小吉他 高端桃花芯木 乌克丽丽 KUC21  23寸尤克里里', 300),
('http://item.jd.com/1368971039.html', 'http://img14.360buyimg.com/n7/jfs/t592/103/888822553/154590/16e8134e/5496b9a1Ndcccc4cf.jpg', '艾薇儿23寸尤克里里ukulele 单板乌克丽丽 夏威夷旅行小四弦吉他 云杉斑马木电箱', 300),
('http://item.jd.com/1433488960.html', 'http://img10.360buyimg.com/n7/jfs/t733/314/1207906562/174441/6b55fcce/5524dcb1Nce5636d7.jpg', 'Tom ukulele桃花心木单板尤克里里乌克丽丽 小吉他 26寸 TUT-230', 300),
('http://item.jd.com/1466863451.html', 'http://img11.360buyimg.com/n7/jfs/t1072/219/449063550/192626/4f20fecf/55237bbaN8167c6e8.jpg', '卡卡（kaka） 桃花芯手工全单尤克里里 小吉他ukulele乌克丽丽KUC-MAD 26寸电箱', 300),
('http://item.jd.com/1433488961.html', 'http://img11.360buyimg.com/n7/jfs/t733/314/1207906562/174441/6b55fcce/5524dcb1Nce5636d7.jpg', 'Tom ukulele桃花心木单板尤克里里乌克丽丽 小吉他 23寸 TUC-230 电箱', 300),
('http://item.jd.com/1057910921.html', 'http://img11.360buyimg.com/n7/jfs/t1138/270/452428886/159129/2ed7df1c/5523c4f1N091af5fa.jpg', 'TOM TUC280E 单板电箱UKULELE 23寸面单电木尤克里里 高端演奏级乌克丽丽', 300),
('http://item.jd.com/1411195238.html', 'http://img13.360buyimg.com/n7/jfs/t811/171/438177396/72843/6313b2a3/552370d4N82b1f150.jpg', '维邦wellburn  尤克里里ukulele 相思木乌克丽丽夏威夷小吉他四弦琴 23寸CX28纯木版', 300),
('http://item.jd.com/1398069882.html', 'http://img12.360buyimg.com/n7/jfs/t496/104/595501356/90035/8bd0ce05/54758b48N465429d6.jpg', '尤克里里ukulele UMA 小吉他  乌可丽丽全沼泽木朽木吉他 23寸/C型', 300),
('http://item.jd.com/1381613599.html', 'http://img14.360buyimg.com/n7/jfs/t1072/219/449063550/192626/4f20fecf/55237bbaN8167c6e8.jpg', '卡卡（kaka） 桃花芯手工全单尤克里里 小吉他ukulele乌克丽丽KUC-MAD 26寸', 300),
('http://item.jd.com/1460891936.html', 'http://img11.360buyimg.com/n7/jfs/t1015/218/437109835/52390/36edd54d/5523acb9N1866c20f.jpg', '维邦wellburn 单板尤克里里ukulele 夏威夷小吉他乌克丽丽 23寸 单板U-510电箱版', 300),
('http://item.jd.com/1433488962.html', 'http://img12.360buyimg.com/n7/jfs/t733/314/1207906562/174441/6b55fcce/5524dcb1Nce5636d7.jpg', 'Tom ukulele桃花心木单板尤克里里乌克丽丽 小吉他 26寸 TUT-230 电箱', 300),
('http://item.jd.com/1378620297.html', 'http://img12.360buyimg.com/n7/jfs/t517/125/292357859/225731/bd15526e/545c8fd1N762f4e90.jpg', '卡卡 KAKA KUC-MAD 23寸全单板尤克里里 桃花芯木全单UKULELE 乌克丽丽', 300),
('http://item.jd.com/1411195240.html', 'http://img10.360buyimg.com/n7/jfs/t895/321/427825724/73359/a5ab56c1/552370d8Nddff68f6.jpg', '维邦wellburn  尤克里里ukulele 相思木乌克丽丽夏威夷小吉他四弦琴 23寸CX28电箱版', 300),
('http://item.jd.com/1471967665.html', 'http://img10.360buyimg.com/n7/jfs/t1228/201/437522769/74625/5dddd8c/5523a196N1a96e85b.jpg', '维邦WellBurn 吉他丽丽夏威夷六弦小吉他 28寸 维邦U-670电箱', 300),
('http://item.jd.com/1466863450.html', 'http://img10.360buyimg.com/n7/jfs/t1072/219/449063550/192626/4f20fecf/55237bbaN8167c6e8.jpg', '卡卡（kaka） 桃花芯手工全单尤克里里 小吉他ukulele乌克丽丽KUC-MAD 23寸电箱', 300),
('http://item.jd.com/1460891940.html', 'http://img10.360buyimg.com/n7/jfs/t928/364/422252671/71416/bd15755/5523acdfN27968a19.jpg', '维邦wellburn 单板尤克里里ukulele 夏威夷小吉他乌克丽丽 23寸 单板U-650电箱版', 300),
('http://item.jd.com/1431901861.html', 'http://img11.360buyimg.com/n7/jfs/t1021/231/449183825/178913/f84ed725/5524dcfbN04818266.jpg', 'Tom ukulele 相思木单板尤克里里 乌克丽丽 小吉他 26寸 TUT-730 电箱', 300),
('http://item.jd.com/1452014390.html', 'http://img10.360buyimg.com/n7/jfs/t580/113/1167367801/185231/97e0b43/54b655c8N2beb8b27.jpg', '卡卡 KAKA KUC25 桃花芯乌克丽丽 26D云杉木单板尤克里里 23寸UKULELE KUC-25D 桃花芯 原声款', 300),
('http://item.jd.com/1411195239.html', 'http://img14.360buyimg.com/n7/jfs/t724/300/1197402100/69774/851873b2/552370e2Ne5b0fb2c.jpg', '维邦wellburn  尤克里里ukulele 相思木乌克丽丽夏威夷小吉他四弦琴 23寸CX20电箱版', 300),
('http://item.jd.com/1501299544.html', 'http://img14.360buyimg.com/n7/jfs/t1078/360/368205551/166989/b12a3ba4/551b9846Nc794578d.jpg', '芬格乐器单板尤克里里23寸26寸乌克丽丽电箱吉他ukulele夏威夷四弦小 23寸 LC-300S 进口曼云杉单板', 300),
('http://item.jd.com/1383808809.html', 'http://img14.360buyimg.com/n7/jfs/t454/286/407033943/192395/e64bf750/546430f6N03effcaa.jpg', 'Tom ukulele   桃花心木单板尤克里里乌克丽丽小吉他 23寸 TUC-230', 300),
('http://item.jd.com/1460917044.html', 'http://img14.360buyimg.com/n7/jfs/t940/343/437017703/75567/c345a4f2/5523aeddN58d7c36a.jpg', '维邦WellBurn尤克里里ukulele乌克丽丽相思木夏威夷小吉他四弦 23寸 CX28电箱版', 300),
('http://item.jd.com/1431767202.html', 'http://img12.360buyimg.com/n7/jfs/t1081/333/449626910/193243/cdf49804/5524dd96N5c1b39f9.jpg', 'Tom ukulele 尤克里里斑马木特色尤克里里 小吉他 23寸tuc300TN', 300),
('http://item.jd.com/1236780945.html', 'http://img10.360buyimg.com/n7/jfs/t943/173/176592302/160001/6d3820d6/5507bb61Necf5118e.jpg', 'TOM旗下 美人鱼NALU N-520T尤克里里 桃花芯木26寸UKULELE 乌克丽丽 N-520T   26寸', 300),
('http://item.jd.com/1398069883.html', 'http://img13.360buyimg.com/n7/jfs/t496/135/583546319/90035/8bd0ce05/54758b65Na4bf53a4.jpg', '尤克里里ukulele UMA 小吉他  乌可丽丽全沼泽木朽木吉他 26寸/C型', 300),
('http://item.jd.com/1402921381.html', 'http://img11.360buyimg.com/n7/jfs/t622/263/641197507/162416/67cff086/54792c82Nc21cc49e.jpg', 'ENYA恩雅旗下kaka卡卡ukulele KUC-25D夏威夷单板尤克里里 英格曼云杉单板KUC-26D 23寸', 300),
('http://item.jd.com/1411195237.html', 'http://img12.360buyimg.com/n7/jfs/t739/292/1183525849/69238/f1c33065/552370cbNd67c36a4.jpg', '维邦wellburn  尤克里里ukulele 相思木乌克丽丽夏威夷小吉他四弦琴 23寸CX20纯木版', 300),
('http://item.jd.com/1481735928.html', 'http://img13.360buyimg.com/n7/jfs/t859/121/427521669/79936/d0eb460c/55235704N56f0793c.jpg', '台湾Uma Ukulele 面单板尤克里里乌克丽丽 26寸云杉UK-06ST', 300),
('http://item.jd.com/1299797936.html', 'http://img11.360buyimg.com/n7/jfs/t238/242/2356825883/129604/84fe8693/5413bcf1N3911b9cb.jpg', 'TOTORO单板尤克里里 夏威夷小吉他乌克丽丽ukulele四弦琴 26寸原木色', 300),
('http://item.jd.com/1167735501.html', 'http://img11.360buyimg.com/n7/jfs/t829/165/429312307/148663/a41f924b/5523c2a7Ncc30a405.jpg', '汤姆TOM TUC690 红杉单板尤克里里 高端 23寸ukulele 专业演奏级乌克丽丽', 300),
('http://item.jd.com/1431799198.html', 'http://img13.360buyimg.com/n7/jfs/t787/66/467195512/173878/8d9b2157/5524dd2cN8c02e405.jpg', 'Tom ukulele 云杉单板 尤克里里原声款 /电箱款 26寸tut280', 300),
('http://item.jd.com/1450060453.html', 'http://img13.360buyimg.com/n7/jfs/t685/187/1304345349/172497/ff604f2a/54ccb64eN7ecf2ecf.jpg', 'Jacques24寸尤克里里UKULELE全相思木板旅行吉他夏威夷吉他乌克丽丽包邮 24寸全相思木', 300),
('http://item.jd.com/1460917043.html', 'http://img13.360buyimg.com/n7/jfs/t1003/350/447541276/60368/5f201177/5523aed8N4e6edfd1.jpg', '维邦WellBurn尤克里里ukulele乌克丽丽相思木夏威夷小吉他四弦 23寸 CX28纯木版', 300),
('http://item.jd.com/1482868361.html', 'http://img11.360buyimg.com/n7/jfs/t985/293/430351791/70485/4fa13303/5523a19eN85e96534.jpg', '维邦WellBurn 吉他丽丽夏威夷六弦小吉他 28寸 单板U-678纯木', 300),
('http://item.jd.com/1368971037.html', 'http://img12.360buyimg.com/n7/jfs/t487/118/173242082/180352/dc37289c/545446b0N8598f7ab.jpg', '艾薇儿23寸尤克里里ukulele 单板乌克丽丽 夏威夷旅行小四弦吉他 全桃花芯', 300),
('http://item.jd.com/1452014389.html', 'http://img14.360buyimg.com/n7/jfs/t646/330/263930118/198586/34b6bfa5/545a0f40Nd292547c.jpg', '卡卡 KAKA KUC25 桃花芯乌克丽丽 26D云杉木单板尤克里里 23寸UKULELE KUC-26D 云杉木 原声款', 300),
('http://item.jd.com/1431901860.html', 'http://img10.360buyimg.com/n7/jfs/t1021/231/449183825/178913/f84ed725/5524dcfbN04818266.jpg', 'Tom ukulele 相思木单板尤克里里 乌克丽丽 小吉他 23寸 TUC-730 电箱', 300),
('http://item.jd.com/1461643164.html', 'http://img14.360buyimg.com/n7/jfs/t529/239/1290392673/157204/d0005e6d/54c75490N6ddc891a.jpg', '贝壳Leho Ukulele红松单板 LHT-CF尤克里里 电箱型 乌克丽丽26寸 LHT-CF-26寸', 300),
('http://item.jd.com/1299797935.html', 'http://img10.360buyimg.com/n7/jfs/t238/242/2356825883/129604/84fe8693/5413bcf1N3911b9cb.jpg', 'TOTORO单板尤克里里 夏威夷小吉他乌克丽丽ukulele四弦琴 23寸原木色', 300),
('http://item.jd.com/1460917042.html', 'http://img12.360buyimg.com/n7/jfs/t811/257/431414238/70928/7a022b8e/5523aed1N0e941ce5.jpg', '维邦WellBurn尤克里里ukulele乌克丽丽相思木夏威夷小吉他四弦 23寸 CX20电箱版', 300),
('http://item.jd.com/1481735927.html', 'http://img12.360buyimg.com/n7/jfs/t1165/236/447180597/80647/ed9b2327/552356feN88161f4e.jpg', '台湾Uma Ukulele 面单板尤克里里乌克丽丽 23寸云杉UK-06SCE电箱', 300),
('http://item.jd.com/1380673813.html', 'http://img13.360buyimg.com/n7/jfs/t649/249/337615672/225731/bd15526e/545f34efN2713b05f.jpg', '卡卡 KAKA KUC KUT-MAD 桃花芯木 全单板尤克里里23 26寸UKULELE KUC-MAD 23寸+礼包', 300),
('http://item.jd.com/1430796799.html', 'http://img14.360buyimg.com/n7/jfs/t574/100/894855674/198521/8d4be537/5497d5feNb3851a79.jpg', 'Tom ukulele 相思木 尤克里里 四弦吉他 23寸 tuc-700E', 300),
('http://item.jd.com/1402921380.html', 'http://img10.360buyimg.com/n7/jfs/t526/182/384111678/190308/21bcb9c0/54792c81Nfb07098a.jpg', 'ENYA恩雅旗下kaka卡卡ukulele KUC-25D夏威夷单板尤克里里 非洲桃花芯木单板KUC-25D 23寸', 300),
('http://item.jd.com/1326017547.html', 'http://img12.360buyimg.com/n7/jfs/t562/100/842271917/104908/44b497d1/549006a1N2571d881.jpg', '美国RP大师珍藏系列乌克丽丽ukulele尤克里里夏威夷四弦小吉他送包琴弦背带教材调音器 单板UK26全夏威夷相思木礼包', 300),
('http://item.jd.com/1383840657.html', 'http://img12.360buyimg.com/n7/jfs/t1228/57/452333954/178913/f84ed725/5524d74dNe4db6bd9.jpg', 'Tom ukulele  相思木单板尤克里里 小吉他 26寸 TUT-730', 300),
('http://item.jd.com/1368971035.html', 'http://img10.360buyimg.com/n7/jfs/t679/91/165439078/151798/c48b851c/545445b8Nefdaa047.jpg', '艾薇儿23寸尤克里里ukulele 单板乌克丽丽 夏威夷旅行小四弦吉他 云杉玫瑰木', 300),
('http://item.jd.com/1380673814.html', 'http://img14.360buyimg.com/n7/jfs/t610/82/355343597/225455/2b884121/545f349dN8bec38a4.jpg', '卡卡 KAKA KUC KUT-MAD 桃花芯木 全单板尤克里里23 26寸UKULELE KUT-MAD 26寸+礼包', 300),
('http://item.jd.com/1431767203.html', 'http://img13.360buyimg.com/n7/jfs/t1081/333/449626910/193243/cdf49804/5524dd96N5c1b39f9.jpg', 'Tom ukulele 尤克里里斑马木特色尤克里里 小吉他 26寸tut300TN', 300),
('http://item.jd.com/1397124473.html', 'http://img13.360buyimg.com/n7/jfs/t460/331/581414364/165116/b9a8e5c6/54758b8eN3a79e7f4.jpg', '尤克里里 ukulele小吉他 UMA图腾款 单板吉他 26寸太阳图腾', 300),
('http://item.jd.com/1426812249.html', 'http://img14.360buyimg.com/n7/jfs/t1021/296/426786352/205101/8ccdc2e2/552371f9Nbf1e3756.jpg', '恩雅enya香樟木全单ukulele尤克里里 乌克丽丽EUC-CA 26寸', 300),
('http://item.jd.com/1383840658.html', 'http://img13.360buyimg.com/n7/jfs/t1228/57/452333954/178913/f84ed725/5524d74dNe4db6bd9.jpg', 'Tom ukulele  相思木单板尤克里里 小吉他 23寸 TUC-730 电箱', 300),
('http://item.jd.com/1392577292.html', 'http://img12.360buyimg.com/n7/jfs/t610/36/535385718/195419/71070a41/546db746N49e41568.jpg', 'LEHO 新款 桃花心木全单LHC-ASM 尤克里里ukulele 23寸', 300),
('http://item.jd.com/1508655112.html', 'http://img12.360buyimg.com/n7/jfs/t1153/137/406684999/147391/cb097b2f/551fd2a2N1fe4913d.jpg', '斯宁 Shining SN-26TA 单板尤克里里 26寸云杉面单UKULELE 乌克丽丽', 300),
('http://item.jd.com/1431799197.html', 'http://img12.360buyimg.com/n7/jfs/t1129/274/461378800/173878/8d9b2157/5524dd25N72692d98.jpg', 'Tom ukulele 云杉单板 尤克里里原声款 /电箱款 23寸tuc280', 300),
('http://item.jd.com/1442728273.html', 'http://img13.360buyimg.com/n7/jfs/t775/180/351988549/46675/a5056287/54a8b200N38fa5a2e.jpg', '尤克里里 ukulele小吉他 UMA图腾款 单板吉他 23寸山猪合板', 300),
('http://item.jd.com/1406996902.html', 'http://img12.360buyimg.com/n7/jfs/t559/210/685843195/202475/1793a981/547c15d6Nfdfd2dbd.jpg', 'ENYA恩雅旗下kaka卡卡相思木ukulele KUC-70夏威夷尤克里里 高档相思木KUC-70 23寸', 300),
('http://item.jd.com/1383840659.html', 'http://img14.360buyimg.com/n7/jfs/t1228/57/452333954/178913/f84ed725/5524d74dNe4db6bd9.jpg', 'Tom ukulele  相思木单板尤克里里 小吉他 26寸 TUT-730 电箱', 300),
('http://item.jd.com/1451561362.html', 'http://img12.360buyimg.com/n7/jfs/t961/272/441474807/178913/f84ed725/5524f004N69d9c66f.jpg', 'tom尤克里里tuc730ukulele相思木单板23寸26寸高档演奏型乌克丽丽 23寸电箱', 300),
('http://item.jd.com/1452018172.html', 'http://img12.360buyimg.com/n7/jfs/t646/330/263930118/198586/34b6bfa5/545a0f40Nd292547c.jpg', '卡卡 KAKA KUC26 25D 23寸单板尤克里里 云杉木面单UKULELE 乌克丽丽 KUC-26D 云杉 原声款', 300),
('http://item.jd.com/1431799200.html', 'http://img10.360buyimg.com/n7/jfs/t520/131/903670248/185128/30531bdd/5498f88eN42f45551.jpg', 'Tom ukulele 云杉单板 尤克里里原声款 /电箱款 26寸tut-280电箱款', 300),
('http://item.jd.com/1397913274.html', 'http://img14.360buyimg.com/n7/jfs/t622/86/616206727/132800/9c22cf0c/54758b98N4da58e33.jpg', '尤克里里 ukulele小吉他 UMA图腾款 单板吉他 23寸小花图腾', 300),
('http://item.jd.com/1409354153.html', 'http://img13.360buyimg.com/n7/jfs/t757/140/22395164/186317/77d46c6f/547e629aNc324c21b.jpg', 'ENYA恩雅旗下kaka卡卡水仙榴木ukulele KUC-88夏威夷尤克里里 水仙榴木KUC-88 23寸', 300),
('http://item.jd.com/1383808812.html', 'http://img12.360buyimg.com/n7/jfs/t454/286/407033943/192395/e64bf750/546430f6N03effcaa.jpg', 'Tom ukulele   桃花心木单板尤克里里乌克丽丽小吉他 26寸 TUT-230 电箱', 300),
('http://item.jd.com/1015910732.html', 'http://img12.360buyimg.com/n7/jfs/t952/207/487775504/65582/acb4bde4/55276732N8af1e840.jpg', '卡马吉他kepma民谣木吉他初学者电箱吉它升级版 升级款.卡马D1C原木色木吉他 41寸', 300),
('http://item.jd.com/1016062086.html', 'http://img11.360buyimg.com/n7/jfs/t1228/125/578102710/135759/786dc3cd/552f6999N07b5096a.jpg', '卢森Rosen2系民谣吉他40寸41寸木吉他jita吉它 R-215 木色', 300),
('http://item.jd.com/1364232026.html', 'http://img11.360buyimg.com/n7/jfs/t838/199/444954252/157333/ed3fe06e/55238f3aN786dccc9.jpg', '兰可（Lankro）41寸民谣吉他法国进口吉它缺角木吉他 k-3D木色', 300),
('http://item.jd.com/1420953133.html', 'http://img13.360buyimg.com/n7/jfs/t544/8/764719623/160147/a5156358/5488f996Naee6e85f.jpg', '卡马kepma初学入门民谣电箱41寸木吉他 D1C原木色哑光民谣', 300),
('http://item.jd.com/1030597450.html', 'http://img10.360buyimg.com/n7/jfs/t856/214/424832798/171698/d78c1211/55236afbN28a5c1ad.jpg', '卡马吉他升级KEPMA民谣吉他卡玛指弹木吉他41寸电箱吉他琴 升级D1C木色 41', 300),
('http://item.jd.com/1445604760.html', 'http://img10.360buyimg.com/n7/jfs/t901/293/468588926/120327/8058b247/5525eddeNd1463975.jpg', '卡马民谣木吉他41寸新手初学入门吉它jita A1C原木色', 300),
('http://item.jd.com/1408596777.html', 'http://img12.360buyimg.com/n7/jfs/t1231/204/443986611/170104/77472b75/55251f28Nd4d3cefb.jpg', '星臣吉他Starsun星辰初学民谣木吉他 DG220CX原木哑光', 300),
('http://item.jd.com/1472419213.html', 'http://img13.360buyimg.com/n7/jfs/t1150/339/336127275/72757/bd738665/5518c411N1721ec3e.jpg', '卡马吉他 2015最新版D1C升级款 41寸民谣 D1C原木色', 300),
('http://item.jd.com/1252664990.html', 'http://img10.360buyimg.com/n7/jfs/t211/238/1571785635/164222/5ca72409/53fc5e70N0d60a92a.jpg', '卡马kepma民谣入门初学指弹电箱木吉他弹唱乐器升级版 D1C木色41寸哑光(民谣)', 300),
('http://item.jd.com/1074117127.html', 'http://img12.360buyimg.com/n7/jfs/t898/315/513393692/54077/ee3b26e5/552949f7N2e419fec.jpg', '维邦WellBurn吉他 缺角民谣木吉他 指弹木吉他 41寸 235C木色', 300),
('http://item.jd.com/1011871813.html', 'http://img13.360buyimg.com/n7/jfs/t1243/11/377638293/68417/2fdf973b/551cdd66Nff380a9a.jpg', '帕特里克patrick云杉沙比利sunti系列高级哑光民谣吉他 原木色方头', 300),
('http://item.jd.com/1398634313.html', 'http://img13.360buyimg.com/n7/jfs/t556/3/597379180/140837/b1e09517/54758b09Nd9818955.jpg', '亨德尔 HANDEL 41寸民谣吉他 木吉他 jita 原木色MD280云杉面板 圆角', 300),
('http://item.jd.com/1340859176.html', 'http://img11.360buyimg.com/n7/jfs/t904/51/439156571/133479/1e575079/55239463Ndca00e52.jpg', '卡马吉他kepma41寸D1C民谣木吉他电箱吉他吉它jita-吉他虫 升级款 卡马D1C哑光黑色', 300),
('http://item.jd.com/1391541145.html', 'http://img10.360buyimg.com/n7/jfs/t508/265/759702232/160147/a5156358/5487f9feN7df1310d.jpg', '卡马kepma初学入门民谣电箱41寸木吉他 D1C原木色哑光民谣', 300),
('http://item.jd.com/1060875506.html', 'http://img11.360buyimg.com/n7/jfs/t1243/31/442215960/186967/82309fb0/5524a307N0f5b0ae3.jpg', '雅马哈（YAMAHA）印尼进口民谣吉他 初学入门41寸圆角木吉他 F310', 300),
('http://item.jd.com/1015910731.html', 'http://img11.360buyimg.com/n7/jfs/t937/10/439465281/69169/e47871e5/5524f1fcN80abc389.jpg', '卡马吉他kepma民谣木吉他初学者电箱吉它升级版 升级款.卡马D1C寸黑色木吉他 41寸', 300),
('http://item.jd.com/1182527729.html', 'http://img14.360buyimg.com/n7/jfs/t751/147/1310893473/106911/98932409/552f57e0Ne1a33ebd.jpg', '卢森Rosen吉他民谣入门木吉他40寸41寸初学者jita吉它R-135 R-135黑色', 300),
('http://item.jd.com/1457172830.html', 'http://img10.360buyimg.com/n7/jfs/t1123/120/434365350/137346/4bbf4076/55238f86N185feef7.jpg', '兰可（Lankro）41寸民谣吉他法国进口吉它缺角木吉他 K-3A 黑色 电箱', 300),
('http://item.jd.com/1098938711.html', 'http://img11.360buyimg.com/n7/jfs/t838/357/449110549/50974/b48196cb/5525e029Na85a14e6.jpg', 'Fender 芬达 CD-60 41寸云杉面板 民谣木吉他 原木色', 300),
('http://item.jd.com/1024489501.html', 'http://img11.360buyimg.com/n7/jfs/t847/344/448758980/191047/a898b058/55235006N9e930c1c.jpg', '朗声LANGSHENG15系列缺角民谣吉他41寸木吉他 4115木色 41', 300),
('http://item.jd.com/1470645686.html', 'http://img11.360buyimg.com/n7/jfs/t916/163/464733142/116457/ba60f204/5525fa55N079d8757.jpg', '卡马民谣木吉他41寸新手初学入门吉它jita D1C原木色', 300),
('http://item.jd.com/1408596790.html', 'http://img10.360buyimg.com/n7/jfs/t703/85/1193029491/54472/ff8781f9/5525203bN8f52535f.jpg', '星臣吉他Starsun星辰初学民谣木吉他 DG220CX蓝色', 300),
('http://item.jd.com/1202484145.html', 'http://img10.360buyimg.com/n7/jfs/t904/95/428594933/39049/cf8f4661/55236d6dN7aa337e4.jpg', '杰肯(Jeking)民谣吉他100系列新手初学木吉他乐器 41寸亮光F-102C', 300),
('http://item.jd.com/1485908872.html', 'http://img12.360buyimg.com/n7/jfs/t1126/243/352336572/143730/dd597d95/5524f49eN79b539ad.jpg', 'FISHMAN渔夫单板吉他云杉玫瑰木民谣吉他电箱琴40/41寸木吉它高端演奏级jit FX-100DM 41寸圆角 木吉他', 300),
('http://item.jd.com/1420953135.html', 'http://img10.360buyimg.com/n7/jfs/t730/86/112877674/152885/fc3380da/5488f961Nadd5ef4e.jpg', '卡马kepma初学入门民谣电箱41寸木吉他 A1C原木色哑光民谣', 300),
('http://item.jd.com/1464457509.html', 'http://img14.360buyimg.com/n7/jfs/t916/11/488576515/44367/2ebf7a80/55262aa9N58d00c7f.jpg', 'YAMAHA雅马哈 41寸初学进阶民谣木吉他 升级版/F600DW', 300),
('http://item.jd.com/1511963737.html', 'http://img12.360buyimg.com/n7/jfs/t742/330/1212403865/274105/4b84e10a/5524b15fNe24dd23f.jpg', '蒙杰那40寸41寸民谣电箱吉他云杉木初学者入门jita旅行吉它乐器包邮送超值大礼包 M-525/41寸', 300),
('http://item.jd.com/1340859172.html', 'http://img12.360buyimg.com/n7/jfs/t808/50/419601448/155505/8956f6e/5523942fNfec128c7.jpg', '卡马吉他kepma41寸D1C民谣木吉他电箱吉他吉它jita-吉他虫 升级款 卡马A1C哑光原木色', 300),
('http://item.jd.com/1501269726.html', 'http://img11.360buyimg.com/n7/jfs/t1111/209/358919188/169832/44d17676/551b979cN4bee32fa.jpg', '芬格乐器雷克斯Rex民谣吉他R-D1C 40寸41寸缺角木吉它初学木吉他 R-D1C VS 日落色', 300),
('http://item.jd.com/1371281355.html', 'http://img10.360buyimg.com/n7/jfs/t736/193/1179260011/159836/6cacd958/5524a3b4N253e4577.jpg', '雅马哈（YAMAHA）印尼进口民谣吉他 初学入门41寸圆角木吉他 F600DW', 300),
('http://item.jd.com/1015910737.html', 'http://img12.360buyimg.com/n7/jfs/t1096/197/445625791/85088/7d42a5ed/5524f59aNf7e610f5.jpg', '卡马吉他kepma民谣木吉他初学者电箱吉它升级版 升级款卡马D1C原木色.电箱版 41寸', 300),
('http://item.jd.com/1016064969.html', 'http://img14.360buyimg.com/n7/jfs/t1006/363/439816966/86903/493c7d33/55238b93N8030b4de.jpg', '卢森Rosen5系单板吉他进阶者首选单板民谣吉他41寸单板木吉他 R-520原木色', 300),
('http://item.jd.com/1418877932.html', 'http://img12.360buyimg.com/n7/jfs/t955/261/35421095/44108/1966b87a/54efcc88Nea674454.jpg', 'TOTORO吉他41寸民谣木吉他指弹木吉它可选电箱吉他 TY01-本色', 300),
('http://item.jd.com/1023965059.html', 'http://img14.360buyimg.com/n7/jfs/t685/71/1264276160/176292/d155a0da/54c37fefNbc12a037.jpg', '思雅晨Saysn 41寸原木色民谣吉他初学者木吉他 一生所爱', 300),
('http://item.jd.com/1046609779.html', 'http://img14.360buyimg.com/n7/jfs/t148/27/886336964/139937/e4c3abfb/539b070eN1ff50f17.jpg', '朗声LANGSHENG18系列缺角指弹吉他41寸民谣木吉他 LS-4118C 41', 300),
('http://item.jd.com/1445604759.html', 'http://img14.360buyimg.com/n7/jfs/t742/52/1184660010/108927/61a8e5c4/5525eb9cN56ba344d.jpg', '卡马民谣木吉他41寸新手初学入门吉它jita D1C黑色', 300),
('http://item.jd.com/1408596786.html', 'http://img11.360buyimg.com/n7/jfs/t838/18/461985614/166741/8b2218a4/552614c0Nd57dc820.jpg', '星臣吉他Starsun星辰初学民谣木吉他 TG220C原木色', 300),
('http://item.jd.com/1200880145.html', 'http://img10.360buyimg.com/n7/jfs/t739/59/1155748079/44612/d52176d7/5523511fN7bffee5c.jpg', '杰肯(Jeking)单板民谣吉他850系列专业美式缺角云杉木吉他 41寸F-850C', 300),
('http://item.jd.com/1252664984.html', 'http://img14.360buyimg.com/n7/jfs/t979/325/436430767/53557/2a806d81/552342c3Ne7cac81c.jpg', '卡马kepma民谣入门初学指弹电箱木吉他弹唱乐器升级版 A1C.木色40寸哑光(民谣)', 300),
('http://item.jd.com/1457172833.html', 'http://img13.360buyimg.com/n7/jfs/t976/332/336701783/145193/f911a7d4/55238fb3N50d80984.jpg', '兰可（Lankro）41寸民谣吉他法国进口吉它缺角木吉他 k-3D木色 电箱', 300),
('http://item.jd.com/1464457507.html', 'http://img12.360buyimg.com/n7/jfs/t979/296/465017677/64172/b4d91a96/55262a88N2e63c54e.jpg', 'YAMAHA雅马哈 41寸初学进阶民谣木吉他 经典版/F310', 300),
('http://item.jd.com/1491784696.html', 'http://img11.360buyimg.com/n7/jfs/t883/108/424278492/135208/ade34464/55234050N8168e8f3.jpg', 'YAMAHA雅马哈F310/FX310A民谣电箱41寸吉他 F600DW', 300),
('http://item.jd.com/1340859173.html', 'http://img13.360buyimg.com/n7/jfs/t907/85/424430831/134674/76473621/55239439N78618e0f.jpg', '卡马吉他kepma41寸D1C民谣木吉他电箱吉他吉它jita-吉他虫 升级款 卡马A1C哑光黑色', 300),
('http://item.jd.com/1018133040.html', 'http://img10.360buyimg.com/n7/jfs/t715/161/1180864163/78974/1046123d/55233933Ne8eb49cb.jpg', '红棉LD-18标准41寸云杉木民谣吉他 木吉他 缺角原木色', 300),
('http://item.jd.com/1005226984.html', 'http://img14.360buyimg.com/n7/jfs/t580/212/371382575/51104/baadcacd/54605c39Ncb0e7fc4.jpg', '雅马哈（YAMAHA）民谣吉他 单板木吉他 演奏指弹吉他乐器 FG700S', 300),
('http://item.jd.com/1052280394.html', 'http://img14.360buyimg.com/n7/jfs/t1237/348/423404731/42755/35cbb885/5524eea6N6598f3bd.jpg', '星臣吉他Starsun星辰民谣木吉他吉它初学者升级版 升级款DG220C.41寸原木 41寸', 300),
('http://item.jd.com/1433068238.html', 'http://img13.360buyimg.com/n7/jfs/t967/77/426155125/92128/b7ad18fc/55238adeN22e55c7b.jpg', '卢森Rosen2系民谣吉他40寸41寸木吉他jita吉它 R-215 木色电箱', 300),
('http://item.jd.com/1062596653.html', 'http://img13.360buyimg.com/n7/jfs/t745/155/1217254406/124305/a8fc2c3c/552343a5N8c255b7d.jpg', '雅马哈(YAMAHA)F系列印尼进口41寸云杉板民谣吉他 F310经典款', 300),
('http://item.jd.com/1038071830.html', 'http://img10.360buyimg.com/n7/jfs/t1261/364/541236959/109396/3327fafb/552b710aN12e567a3.jpg', 'LIVE MUSIC 经典款式 超值贝斯 入门贝司 初学BASS 超高性价比 LB300&lt;font class=&quot;skcolor_ljg&quot;&gt;_&lt;/font&gt;', 300),
('http://item.jd.com/1040569063.html', 'http://img13.360buyimg.com/n7/jfs/t955/3/442646275/180035/53b83e9e/55238877Nf2cc76b8.jpg', '朗声LANGSHENG19系列指弹民谣吉他41寸木吉他电箱吉他琴 4119CB日落 41', 300),
('http://item.jd.com/1445604762.html', 'http://img12.360buyimg.com/n7/jfs/t850/221/458358090/103681/719082c9/5525ef84Ne23d2b90.jpg', '卡马民谣木吉他41寸新手初学入门吉它jita A1C黑色', 300),
('http://item.jd.com/1408596781.html', 'http://img11.360buyimg.com/n7/jfs/t1060/197/448987034/162886/4302ffe8/55251f73N2dd33fcd.jpg', '星臣吉他Starsun星辰初学民谣木吉他 DG120CX蓝色', 300),
('http://item.jd.com/1206995881.html', 'http://img11.360buyimg.com/n7/jfs/t871/158/428911321/43424/e46e314f/55236c67N96ec0399.jpg', '杰肯Jeking单板吉他880系列美式玫瑰木民谣电箱木吉它 F-880CS 40寸原声款', 300),
('http://item.jd.com/1252664980.html', 'http://img10.360buyimg.com/n7/jfs/t220/191/1576253769/173175/f4958f5e/53fc6397N672ea4aa.jpg', '卡马kepma民谣入门初学指弹电箱木吉他弹唱乐器升级版 D1C日落41寸哑光(民谣)', 300),
('http://item.jd.com/1487996097.html', 'http://img12.360buyimg.com/n7/jfs/t1177/309/443206450/130625/1e84432b/55239075Nf28ded11.jpg', '兰可Lankro 41寸电箱吉他 法国进口吉它乐器缺角电吉他jita k-3D黑色 电箱', 300),
('http://item.jd.com/1058970155.html', 'http://img10.360buyimg.com/n7/jfs/t205/201/962930862/164251/4d5e88d8/539e5ce9N334db624.png', '星臣/星辰吉他41寸标准民谣吉他DG220C木吉他 经典款DG220C原木缺角41', 300),
('http://item.jd.com/1420953134.html', 'http://img14.360buyimg.com/n7/jfs/t577/80/519917403/158004/e16b5429/5488f97fNc95da9bf.jpg', '卡马kepma初学入门民谣电箱41寸木吉他 D1C日落色哑光民谣', 300),
('http://item.jd.com/1367699011.html', 'http://img11.360buyimg.com/n7/jfs/t1033/133/442126895/139458/f98da402/552395e9N2d6f6e06.jpg', '卡马吉他kepma41寸D1C民谣木吉他电箱吉他吉它jita-吉他虫 升级版 卡马D1C渐变色电箱', 300),
('http://item.jd.com/1193637576.html', 'http://img11.360buyimg.com/n7/jfs/t652/226/254370033/133118/378a9724/5459c807N5b052baf.jpg', '亨德尔 HANDEL 41寸民谣吉他 木吉他 jita 原木色MD160NA 圆角', 300),
('http://item.jd.com/1062219755.html', 'http://img10.360buyimg.com/n7/jfs/t784/111/457404328/161873/4b7c541/5524eaa7Nb5393dce.jpg', '雅马哈（YAMAHA）41寸单板吉他电箱民谣吉他FG700S/MS FGX700SC FG705S升级版', 300),
('http://item.jd.com/1032652227.html', 'http://img12.360buyimg.com/n7/jfs/t1201/132/443953749/54859/8f62c0b1/5524ceecN6928f2c5.jpg', 'YAMAHA雅马哈静音吉他 民谣款SLG110S', 300),
('http://item.jd.com/1211548627.html', 'http://img12.360buyimg.com/n7/jfs/t796/112/540995586/185866/f64fd73e/552f91e3N7858bea8.jpg', '泰勒 Taylor 214 214E 214CE  G型琴体 单板民谣木吉他  电箱吉他 214E圆角电箱款', 300),
('http://item.jd.com/1241318298.html', 'http://img13.360buyimg.com/n7/jfs/t193/267/2970916893/146832/8b5a2417/53df2d75N53d74935.jpg', '雅马哈Yamaha LL16 ARE 全单吉他 电箱民谣吉他 全单电箱吉他 全单民谣吉他', 300),
('http://item.jd.com/1468781384.html', 'http://img14.360buyimg.com/n7/jfs/t475/318/1384305852/171133/de1b575c/54d5b479N90238b71.jpg', '马丁 Martin DX1AE DX1RAE DX1KAE 单板电箱 单板民谣吉他 墨西产 DX1KAE相思木背侧板', 300),
('http://item.jd.com/1032652309.html', 'http://img14.360buyimg.com/n7/jfs/t1060/216/423406405/60442/485d0b37/5524ced7Nd4bd8ac1.jpg', 'YAMAHA雅马哈静音吉他 古典款SLG130N', 300),
('http://item.jd.com/1192718055.html', 'http://img10.360buyimg.com/n7/jfs/t145/245/1204646471/229421/8320d29e/53a7f788N16f22238.jpg', '马丁 Martin DRS2 全单板 电箱 民谣吉他 木吉他 墨西哥产', 300),
('http://item.jd.com/1155508571.html', 'http://img11.360buyimg.com/n7/g16/M00/08/1D/rBEbRlN3Wb0IAAAAAAH5FWNzrNwAABvHQNc2zQAAfkt128.jpg', '芬达 FENDER 014-6100/6102  Bass 墨产 电贝司 电贝斯 6100湖蓝色', 300),
('http://item.jd.com/1143822387.html', 'http://img12.360buyimg.com/n7/g13/M04/01/10/rBEhU1NoupoIAAAAAAIbbO--ht8AANAoAIpLXEAAhuE407.jpg', 'YAMAHA 雅马哈 A3M /41寸全单板云杉 电箱 民谣吉他', 300),
('http://item.jd.com/1061945447.html', 'http://img12.360buyimg.com/n7/jfs/t736/328/1167345591/68886/44ba4468/5523a38aNcad3b9c8.jpg', '法丽达 Farida 52系列全单板 民谣吉他 D52圆角亚光', 300),
('http://item.jd.com/1200882624.html', 'http://img14.360buyimg.com/n7/jfs/t469/272/1447805844/39624/45abc92d/54f438e7Nda4e6c90.jpg', '杰肯(Jeking）美式专业全单板民谣木吉他 41寸圆角F-950', 300),
('http://item.jd.com/1211554569.html', 'http://img14.360buyimg.com/n7/jfs/t826/337/492589769/155962/82c9d451/552f90dbN13885afc.jpg', '泰勒 Taylor 110 110E 110CE 41寸单板电箱民谣吉他 木吉他 110单板民谣款', 300),
('http://item.jd.com/1060797098.html', 'http://img13.360buyimg.com/n7/g14/M0A/1F/15/rBEhVVNXhakIAAAAAAKp6P0uiJcAAMgwwKHhkEAAqoA057.jpg', '红旗乐器芬达Fender电贝司013 6760 341豪华JAZZ BASS贝斯套装 墨豪', 300),
('http://item.jd.com/1504184597.html', 'http://img12.360buyimg.com/n7/jfs/t1144/186/441706537/81955/b6a664df/5523a390Nb882fa49.jpg', '法丽达 Farida 52系列全单板 民谣吉他 D52C缺角亚光', 300),
('http://item.jd.com/1226436342.html', 'http://img12.360buyimg.com/n7/jfs/t202/272/2351967769/158286/d2aaaf6b/53cded96N35309b59.jpg', '马丁 Martin DX1AE DX1RAE DX1KAE 单板电箱 单板民谣吉他 墨西产 DX1AE桃花心背侧', 300),
('http://item.jd.com/1211554571.html', 'http://img11.360buyimg.com/n7/jfs/t826/337/492589769/155962/82c9d451/552f90dbN13885afc.jpg', '泰勒 Taylor 110 110E 110CE 41寸单板电箱民谣吉他 木吉他 110CE单板缺角电箱款', 300),
('http://item.jd.com/1065214021.html', 'http://img11.360buyimg.com/n7/jfs/t202/315/550210165/95013/1701e12c/53914177N1ec33b8c.jpg', '雅马哈单板电箱吉他YAMAHA CPX1000 顶级专业民谣木吉它', 300),
('http://item.jd.com/1083229202.html', 'http://img12.360buyimg.com/n7/jfs/t1231/145/412417356/64452/15581d7f/552395e0Ne09c306a.jpg', '录音之王Recording King全单民谣吉他 电箱可选 41寸D型RD-227电箱', 300),
('http://item.jd.com/1326416499.html', 'http://img14.360buyimg.com/n7/jfs/t286/133/1010158260/124489/e5a05d83/542ceb38N88fa8918.jpg', 'Farida 法丽达 D10 R10 CE 高级单板 民谣 电箱 吉他 木吉他 40寸缺角电箱款R10CE', 300),
('http://item.jd.com/1211554570.html', 'http://img10.360buyimg.com/n7/jfs/t1096/142/546242672/146427/de1f7838/552f9041Nb4fd46f0.jpg', '泰勒 Taylor 110 110E 110CE 41寸单板电箱民谣吉他 木吉他 110E单板圆角电箱款', 300),
('http://item.jd.com/1200886332.html', 'http://img12.360buyimg.com/n7/jfs/t742/189/1148902035/81070/87d87715/552352eeN0cc45613.jpg', '杰肯（Jeking）美式原声全单板民谣木吉他 F-980 41寸圆角', 300),
('http://item.jd.com/1513502184.html', 'http://img14.360buyimg.com/n7/jfs/t832/270/428160864/65789/cf21fae6/552395d0Ne58cd669.jpg', '录音之王Recording King全单民谣吉他 电箱可选 升级版41寸D型RD-327', 300),
('http://item.jd.com/1319055199.html', 'http://img14.360buyimg.com/n7/jfs/t331/104/859637842/109758/a680d2b2/542650f9N78c5de75.jpg', 'YAMAHA 雅马哈 SLG110S/N 静音吉他 民谣古典 专业可拆卸便携带 送原装琴包 民谣款(SLG110S)', 300),
('http://item.jd.com/1021930575.html', 'http://img10.360buyimg.com/n7/jfs/t187/126/1546356279/165620/96214164/53b255abNc55e1408.jpg', '雅马哈 YAMAHA A3R顶级缺角款专业演奏单板电箱民谣吉他 木吉他 原木色', 300),
('http://item.jd.com/1511750984.html', 'http://img14.360buyimg.com/n7/jfs/t1117/71/440277071/188201/580c8a20/5523f67bN0e82e427.jpg', '森格威 单板民谣吉他 41寸森氏森牌木吉他 OM-2SSC 40', 300),
('http://item.jd.com/1513502185.html', 'http://img10.360buyimg.com/n7/jfs/t823/160/428737621/58966/5840d98b/55239584Na4b525d7.jpg', '录音之王Recording King全单民谣吉他 电箱可选 升级版40寸OM型RO-327', 300),
('http://item.jd.com/1319055200.html', 'http://img10.360buyimg.com/n7/jfs/t436/234/660603749/112026/edc2b6ed/54265130N13de0ff6.jpg', 'YAMAHA 雅马哈 SLG110S/N 静音吉他 民谣古典 专业可拆卸便携带 送原装琴包 古典款(SLG110N)', 300),
('http://item.jd.com/1397765340.html', 'http://img10.360buyimg.com/n7/jfs/t457/127/585419715/178146/67e9f96d/547406ffNbafe8a6f.jpg', 'Farida法丽达D-52NS全单板电箱民谣吉他', 300),
('http://item.jd.com/1511750979.html', 'http://img14.360buyimg.com/n7/jfs/t1108/109/445621651/167002/65a8b6bb/5523f5a5N5f86a3d2.jpg', '森格威 单板民谣吉他 41寸森氏森牌木吉他 D-2SS 41', 300),
('http://item.jd.com/1469958228.html', 'http://img13.360buyimg.com/n7/jfs/t1261/343/421950753/83276/79b52c1e/55236fcdN31ed2f73.jpg', 'Dove鸽子 O系列 高级全单民谣吉他 GA型桃花芯缺角FS-72C', 300),
('http://item.jd.com/1326416497.html', 'http://img12.360buyimg.com/n7/jfs/t340/182/984337779/122405/c0b9b7fc/542ceb19N0f9d7819.jpg', 'Farida 法丽达 D10 R10 CE 高级单板 民谣 电箱 吉他 木吉他 41寸缺角电箱款D10CE', 300),
('http://item.jd.com/1021930421.html', 'http://img11.360buyimg.com/n7/g12/M00/05/04/rBEQYFGPu-4IAAAAAALSpt0n8PgAABAcQDUqgsAAtK-103.jpg', '雅马哈 YAMAHA A3M顶级缺角款专业演奏单板电箱民谣吉他 木吉他 日落色', 300),
('http://item.jd.com/1025580135.html', 'http://img10.360buyimg.com/n7/jfs/t193/125/1217222368/112738/f05f1e18/53a7ff02Nc4f54720.jpg', '雅马哈(YAMAHA)新款电吉他RGX420DZII舞台演奏级吉他', 300),
('http://item.jd.com/1023916057.html', 'http://img12.360buyimg.com/n7/g15/M06/00/00/rBEhWVGvDCgIAAAAAAECVNOT4MsAAAACgEQZNEAAQJs963.jpg', '三益SAMICK ASDR 41寸D型全单板民谣吉他 韩国品牌 缺角电箱', 300),
('http://item.jd.com/1468781385.html', 'http://img10.360buyimg.com/n7/jfs/t775/298/717575839/192731/b477eba8/54d5b488N28a6198c.jpg', '马丁 Martin DX1AE DX1RAE DX1KAE 单板电箱 单板民谣吉他 墨西产 DX1RAE玫瑰木背侧板', 300),
('http://item.jd.com/1523909084.html', 'http://img14.360buyimg.com/n7/jfs/t856/328/559078693/158740/38354004/552f95acN028e3538.jpg', '泰勒 Taylor 114E  114CE 单板民谣吉他 木吉他 电箱吉他 114E圆角电箱款', 300),
('http://item.jd.com/1029252962.html', 'http://img12.360buyimg.com/n7/g13/M01/03/08/rBEhVFH3TDgIAAAAAAGNyFkuTYoAABiKQC6S_wAAY3g276.jpg', '拉维斯 Nightwish 全单 单板民谣吉他 木吉他 N-3000D 送礼包', 300),
('http://item.jd.com/1061945448.html', 'http://img13.360buyimg.com/n7/jfs/t1066/232/430276651/64087/e127aaac/5523a399N4a38fb23.jpg', '法丽达 Farida 52系列全单板 民谣吉他 R52圆角亮光', 300),
('http://item.jd.com/1006574169.html', 'http://img14.360buyimg.com/n7/jfs/t187/191/878535662/124348/be0765a3/539b0747N0401a85f.jpg', '顶级吉他品牌 Taylor 泰勒 214ce 41寸 缺角 单板 电箱 进口 民谣木吉他', 300),
('http://item.jd.com/1211548626.html', 'http://img11.360buyimg.com/n7/jfs/t769/210/1291136256/221697/18748ff/552fafd4Na77a3cdc.jpg', '泰勒 Taylor 214 214E 214CE  G型琴体 单板民谣木吉他  电箱吉他 214民谣款', 300),
('http://item.jd.com/1135616153.html', 'http://img13.360buyimg.com/n7/g8/M03/08/04/rBEHZ1Brmp4IAAAAAAEBKAsweqQAABl2wB5qkMAAQFA897.jpg', '雅马哈(YAMAHA)A系列单板民谣电箱精品吉他 AC3R', 300),
('http://item.jd.com/1032652228.html', 'http://img13.360buyimg.com/n7/jfs/t880/267/451631242/58589/978cee15/5524cee3N706e8faa.jpg', 'YAMAHA雅马哈静音吉他 古典款SLG110N', 300);
INSERT INTO `shop` (`image`, `link`, `title`, `price`) VALUES
('http://item.jd.com/1333434435.html', 'http://img10.360buyimg.com/n7/jfs/t337/3/1307835173/94719/592961a/5436328eN1963eeaa.jpg', 'YAMAHA 雅马哈 A3M 全单 单板电箱吉他 木吉他 原木色 专业演奏电箱吉他', 300),
('http://item.jd.com/1139222601.html', 'http://img11.360buyimg.com/n7/jfs/t850/238/563612548/136388/19acd5cd/552faceeN349747f9.jpg', '泰勒 Taylor 210 210e 210CE 41寸单板电箱民谣吉他 木吉他 210民谣款', 300),
('http://item.jd.com/1025581088.html', 'http://img13.360buyimg.com/n7/jfs/t157/345/1199810372/149044/cb09d720/53a7fea0N83571202.jpg', '雅马哈(YAMAHA)RGX220DZ双摇演奏级电吉他', 300),
('http://item.jd.com/1156887378.html', 'http://img13.360buyimg.com/n7/jfs/t148/112/576216573/80925/e6225846/5391330dN42899af9.jpg', '现货发售 雅马哈 便携吉他 静音吉他SLG110S  可拆吉他 古典静音吉 SLG110S民谣款', 300),
('http://item.jd.com/1398219081.html', 'http://img11.360buyimg.com/n7/jfs/t481/281/581051161/137387/e4e2dbde/54746095N2f79d51c.jpg', '美国品牌 taylor 泰勒 210 210E 210CE 41寸单板民谣电箱吉他 木吉他 210CE-缺角电箱款', 300),
('http://item.jd.com/1211531780.html', 'http://img10.360buyimg.com/n7/jfs/t154/217/1834549878/165620/96214164/53bb8fc8N02406951.jpg', '雅马哈 YAMAHA A3R顶级缺角款专业演奏单板电箱民谣吉他 木吉他', 300),
('http://item.jd.com/1026220913.html', 'http://img13.360buyimg.com/n7/jfs/t835/356/420121772/182337/7150cc5b/55234475N497a4226.jpg', 'YAMAHA雅马哈A3R全单板缺角电箱专业级可录音民谣吉他', 300),
('http://item.jd.com/1066362574.html', 'http://img14.360buyimg.com/n7/jfs/t157/364/529858015/96708/579af5de/539135d3Nd8ca9bd9.jpg', 'Yamaha/雅马哈 AC3R 民谣电箱吉他', 300),
('http://item.jd.com/1470693101.html', 'http://img11.360buyimg.com/n7/jfs/t223/243/24123375/126579/3c221bed/53e33590N53e42cbc.jpg', '美国品牌Taylor泰勒 114 114E 114ce 41寸圆角缺角单板民谣 电箱吉他 114CE', 300),
('http://item.jd.com/1022410437.html', 'http://img12.360buyimg.com/n7/g12/M00/07/0A/rBEQYFGWcOEIAAAAAAJ8RnqIpwwAABbkgE5kIEAAnxe855.jpg', '雅马哈 YAMAHAL LS16顶级单板41寸民谣吉他 木吉他 送原装琴盒', 300),
('http://item.jd.com/1026480431.html', 'http://img11.360buyimg.com/n7/g15/M07/04/0C/rBEhWlHaLVkIAAAAAAG5bTKMDWoAAA26gIgMvEAAbmF152.jpg', 'CORT A5 电贝司 原色，5弦贝斯 原木色', 300),
('http://item.jd.com/1100486577.html', 'http://img12.360buyimg.com/n7/jfs/t148/112/576216573/80925/e6225846/5391330dN42899af9.jpg', '现货发售 雅马哈 便携吉他 静音吉他SLG110S  可拆吉他 古典静音吉 SLG110N古典款', 300),
('http://item.jd.com/1398219080.html', 'http://img10.360buyimg.com/n7/jfs/t310/152/1682170368/149862/393db45d/543f81b5Na4af8ba8.jpg', '美国品牌 taylor 泰勒 210 210E 210CE 41寸单板民谣电箱吉他 木吉他 210E-圆角电箱款', 300),
('http://item.jd.com/1155508576.html', 'http://img11.360buyimg.com/n7/g16/M00/08/1D/rBEbRlN3Wj8IAAAAAAIOaJ1JZssAABvIwHHhIEAAg6A377.jpg', '芬达 FENDER 014-6100/6102  Bass 墨产 电贝司 电贝斯 6102湖蓝色', 300),
('http://item.jd.com/1463680330.html', 'http://img10.360buyimg.com/n7/jfs/t775/249/641482886/104268/d9315162/54cb0ebbN00fc8bca.jpg', '美利达吉他全单 35GAC41寸 全单系列民谣单板吉他 专业指弹吉他', 300),
('http://item.jd.com/1332423618.html', 'http://img13.360buyimg.com/n7/jfs/t193/144/570187050/93918/62a325b6/53912f89Neba9c78d.jpg', 'YAMAHA雅马哈 A1R 顶级单板民谣电箱吉他 A3R', 300),
('http://item.jd.com/1523846982.html', 'http://img12.360buyimg.com/n7/jfs/t1213/341/558815119/67529/af76ec6c/552f8af5N772810cc.jpg', '马丁Martin DX1系列 单板民谣电箱吉他 40寸OM型桃花心木000X1AE', 300),
('http://item.jd.com/1022410434.html', 'http://img14.360buyimg.com/n7/g12/M00/07/0A/rBEQYVGWb0EIAAAAAALXkhXKsSkAABbkQKquzcAAteq155.jpg', '雅马哈 YAMAHA LL6顶级单板41寸民谣吉他 送原装琴盒', 300),
('http://item.jd.com/1059413171.html', 'http://img11.360buyimg.com/n7/jfs/t166/240/572995913/160732/57f4833d/5391637fN6ee2884a.jpg', '红旗乐器正品芬达墨豪fender 013 3002 300电吉他墨西哥枫木指板原装琴包', 300),
('http://item.jd.com/1076600567.html', 'http://img12.360buyimg.com/n7/jfs/t172/348/1502781186/80759/cb236181/53b20ac9N91bd951d.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 2014新款170棕色', 300),
('http://item.jd.com/1005825892.html', 'http://img12.360buyimg.com/n7/g15/M07/01/07/rBEhWlHwwWcIAAAAAAIE0gmnBp8AABX6wLRYYcAAgTq628.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 午夜黑色 银色硬件', 300),
('http://item.jd.com/1038750798.html', 'http://img13.360buyimg.com/n7/g14/M09/1B/03/rBEhVlMw-tQIAAAAAAD3cgOdk20AAKyFACjwEkAAPeK329.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 2014新款黑色', 300),
('http://item.jd.com/1007074930.html', 'http://img10.360buyimg.com/n7/g14/M00/07/07/rBEhVVHwwYsIAAAAAAH9e34USS4AABaRQFvOsUAAf2T701.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 星光银 银色硬件', 300),
('http://item.jd.com/1011350139.html', 'http://img14.360buyimg.com/n7/g7/M03/09/0A/rBEHZVCApL8IAAAAAADusicQsWQAAB0hgOKSvkAAO7K842.jpg', 'IBANEZ GSR200 电贝司，22品，主动拾音器 四色可选 电贝斯 黑色 银色硬件=1290元', 300),
('http://item.jd.com/1154525868.html', 'http://img13.360buyimg.com/n7/jfs/t193/337/549956372/69010/a0b855d8/53903303N1d6744e0.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 水果绿色', 300),
('http://item.jd.com/1392123090.html', 'http://img10.360buyimg.com/n7/jfs/t604/95/504340880/126080/11d1b352/546d4d49Na94a382b.jpg', '依班娜 IBANEZ GRX55 GRX-55 电吉他  电吉他 黑色', 300),
('http://item.jd.com/1005825894.html', 'http://img14.360buyimg.com/n7/jfs/t166/235/534806547/70957/421c92a2/539032c2N0a976281.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 水果蓝色', 300),
('http://item.jd.com/1210470208.html', 'http://img13.360buyimg.com/n7/jfs/t184/244/1743602038/64262/42806410/53ba214dN575859c5.jpg', 'IBANEZ 依班娜 V72 V74 木吉他 民谣吉他 V72ECE V74ECE 电箱琴 V80C原色木吉他', 300),
('http://item.jd.com/1005826132.html', 'http://img12.360buyimg.com/n7/g14/M03/07/06/rBEhVlHwvC8IAAAAAAK2XgXIcZIAABaMgL1mXYAArZ2757.jpg', 'IBANEZ GRX150 电吉他 套装 双单双拾音器 经典型号 红色', 300),
('http://item.jd.com/1005886854.html', 'http://img14.360buyimg.com/n7/g13/M08/06/08/rBEhUlINpXMIAAAAAADnl1TqmHwAACHUwDKEasAAOev363.jpg', 'IBANEZ GRG150P/GRG-150P 电吉他  电吉它 黑色', 300),
('http://item.jd.com/1038750801.html', 'http://img11.360buyimg.com/n7/g15/M00/10/09/rBEhWlMw-uwIAAAAAAEnYZkJ5oUAAKpDgBz8c4AASd5940.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 2014新款红色', 300),
('http://item.jd.com/1394450662.html', 'http://img12.360buyimg.com/n7/jfs/t520/101/535221334/61752/dc307cd3/54701c55Nbd98ba6d.jpg', '依班娜 IBANEZ GRG250P  GRG-250P 电吉他，电吉它 双摇 24品 GRG250PM枫木指板', 300),
('http://item.jd.com/1252715444.html', 'http://img14.360buyimg.com/n7/jfs/t244/123/352025162/46192/28eead4e/53e9d5beNbcb544e1.jpg', 'IBANEZ GSR200 电贝司，22品，主动拾音器 四色可选 电贝斯 新款白/黑色配件=1290元', 300),
('http://item.jd.com/1394450660.html', 'http://img10.360buyimg.com/n7/jfs/t658/40/529230455/135487/1f609556/54701c3eNa35d4726.jpg', '依班娜 IBANEZ GRG250P  GRG-250P 电吉他，电吉它 双摇 24品 白色', 300),
('http://item.jd.com/1005825895.html', 'http://img10.360buyimg.com/n7/g15/M0A/01/07/rBEhWlHwwX4IAAAAAAJrL7OFuxwAABX7AMM4ysAAmtH987.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 苹果红色 银色硬件', 300),
('http://item.jd.com/1157752525.html', 'http://img10.360buyimg.com/n7/jfs/t181/101/678957223/164102/668396bf/53966bafN283aaf7f.jpg', '红旗乐器正品依班娜IBANEZ电吉他GRG150QA电吉他套装双摇24品带贴面升级版 海浪蓝', 300),
('http://item.jd.com/1016234610.html', 'http://img10.360buyimg.com/n7/g10/M00/05/09/rBEQWFEsLt0IAAAAAAJFdYasMg8AABCVQK4iSgAAkWN825.jpg', 'IBANEZ GSR320 电贝司，22品 多色可选电贝斯套装 被动拾音器贝斯 黑红渐变', 300),
('http://item.jd.com/1154525867.html', 'http://img12.360buyimg.com/n7/jfs/t190/237/516795878/67759/e814aa4c/539032f2Nc47306f1.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 水果黄色', 300),
('http://item.jd.com/1177168353.html', 'http://img13.360buyimg.com/n7/jfs/t199/178/677524663/130327/7b6d68bd/539587afNf9bd155e.jpg', '红旗乐器IBANEZ依班娜电吉他正品GRX150初学练习电吉他套装送超值大礼包 牙齿白', 300),
('http://item.jd.com/1154525866.html', 'http://img11.360buyimg.com/n7/jfs/t169/279/555469237/70774/63240b2a/539032afNbaff0416.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 水果红色', 300),
('http://item.jd.com/1038750799.html', 'http://img14.360buyimg.com/n7/g14/M09/1B/03/rBEhV1Mw-t4IAAAAAAEhviWA29MAAKyFAIKapgAASHW827.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 2014新款蓝色', 300),
('http://item.jd.com/1252715445.html', 'http://img10.360buyimg.com/n7/jfs/t226/15/336716492/51020/a9799a24/53e9d5cbN99129020.jpg', 'IBANEZ GSR200 电贝司，22品，主动拾音器 四色可选 电贝斯 新款黑/黑色配件=1290元', 300),
('http://item.jd.com/1076290749.html', 'http://img14.360buyimg.com/n7/jfs/t1075/347/517304062/36773/26d9cf60/5533620cN5c43fdcd.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 黑色', 300),
('http://item.jd.com/1005886856.html', 'http://img11.360buyimg.com/n7/g13/M08/06/08/rBEhVFINpYcIAAAAAADcGnx2D1kAACHUwJXfsUAANwy163.jpg', 'IBANEZ GRG150P/GRG-150P 电吉他  电吉它 白色', 300),
('http://item.jd.com/1011350140.html', 'http://img10.360buyimg.com/n7/g7/M03/09/0A/rBEHZlCApLIIAAAAAADi-ibDlwQAAB0hwPZ0XwAAOMS901.jpg', 'IBANEZ GSR200 电贝司，22品，主动拾音器 四色可选 电贝斯 白色 银色硬件=1290元', 300),
('http://item.jd.com/1030000674.html', 'http://img14.360buyimg.com/n7/g14/M04/08/12/rBEhV1H7DQQIAAAAAAHUvnN_7sMAABrOQPMfzkAAdTW245.jpg', 'IBANEZ 依班娜 V72 V74 木吉他 民谣吉他 V72ECE V74ECE 电箱琴 V74哑光民谣吉他', 300),
('http://item.jd.com/1011350141.html', 'http://img11.360buyimg.com/n7/g8/M03/09/0A/rBEHaFCApKoIAAAAAAEIhX3d_MMAAB0hgMZY-oAAQid816.jpg', 'IBANEZ GSR200 电贝司，22品，主动拾音器 四色可选 电贝斯 红色 银色硬件=1290元', 300),
('http://item.jd.com/1006250261.html', 'http://img11.360buyimg.com/n7/g8/M03/09/0A/rBEHZ1CAplYIAAAAAADczsg4prcAAB0mACHSG4AANzm848.jpg', 'IBANEZ GSR320 电贝司，22品 多色可选电贝斯套装 被动拾音器贝斯 白色', 300),
('http://item.jd.com/1076290507.html', 'http://img12.360buyimg.com/n7/jfs/t169/95/669656753/43467/42a94a40/539461dbN9dd39c7c.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 红色', 300),
('http://item.jd.com/1005825893.html', 'http://img13.360buyimg.com/n7/g15/M0A/01/07/rBEhWlHwwXEIAAAAAAIvbm7nMJwAABX7ACHW9YAAi-G779.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 宝石蓝色 银色硬件', 300),
('http://item.jd.com/1011417617.html', 'http://img12.360buyimg.com/n7/g9/M03/0B/14/rBEHalCCSoEIAAAAAADqUAKnCOoAACRqwOj7RIAAOpo513.jpg', 'IBANEZ GRG270/GRG-270 电吉他，中端双摇 套装 24品双摇 黑色', 300),
('http://item.jd.com/1038750800.html', 'http://img10.360buyimg.com/n7/g14/M09/1B/03/rBEhV1Mw-uMIAAAAAAEa1VMdqCsAAKyFAMS3U8AARrt785.jpg', '依班娜 IBANEZ GRG170DX 电吉他 套装 电吉它  24品 小双摇带包边 2014新款银色', 300),
('http://item.jd.com/1058873472.html', 'http://img12.360buyimg.com/n7/g15/M07/19/01/rBEhWlNXWrYIAAAAAAK1dQdzQNsAAMWOQKkFggAArWN860.jpg', '红旗乐器正品原装依班娜Ibanez GRG250P/M吉他电吉他双摇24品电吉它套装', 300),
('http://item.jd.com/1030000675.html', 'http://img10.360buyimg.com/n7/g15/M02/02/12/rBEhWFH7DQ8IAAAAAAHlruHF15AAABo4QF1UD4AAeXG166.jpg', 'IBANEZ 依班娜 V72 V74 木吉他 民谣吉他 V72ECE V74ECE 电箱琴 V72亮光民谣吉他', 300),
('http://item.jd.com/1011417619.html', 'http://img14.360buyimg.com/n7/g9/M03/0B/14/rBEHalCCSo0IAAAAAAD3w9bdnnAAACRrANXWrsAAPfb225.jpg', 'IBANEZ GRG270/GRG-270 电吉他，中端双摇 套装 24品双摇 红色', 300),
('http://item.jd.com/1452503587.html', 'http://img12.360buyimg.com/n7/jfs/t673/116/1135896127/120427/7c85455b/54b71a96Nfb26aa70.jpg', 'IBANEZ GRG270/GRG-270 电吉他，中端双摇 套装 24品双摇 白色', 300),
('http://item.jd.com/1154636206.html', 'http://img11.360buyimg.com/n7/jfs/t151/152/1159847977/84970/df6eb6b8/53a548c6N817d5415.jpg', 'IBANEZ GRX150 电吉他 套装 双单双拾音器 经典型号 GRX150水果红色', 300),
('http://item.jd.com/1076290506.html', 'http://img11.360buyimg.com/n7/jfs/t1189/254/597571620/34963/190f3158/5533617cN7074dff8.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 银灰色', 300),
('http://item.jd.com/1103668496.html', 'http://img11.360buyimg.com/n7/jfs/t160/362/668135515/75248/2bd1de8a/539466e1N789eeab4.jpg', 'Ibanez依斑娜 高档电吉他 双摇 GRG270吉他 亮蓝色', 300),
('http://item.jd.com/1005826130.html', 'http://img10.360buyimg.com/n7/g13/M04/02/10/rBEhVFHwvBsIAAAAAALVEMVEo9MAABYnwHFyE0AAtUo738.jpg', 'IBANEZ GRX150 电吉他 套装 双单双拾音器 经典型号 蓝色', 300),
('http://item.jd.com/1030092566.html', 'http://img11.360buyimg.com/n7/g15/M02/02/04/rBEhWFHEFyoIAAAAAALsum9KcNEAAAawQFkf78AAuzS448.jpg', 'IBANEZ AW300/AW300ECE单板  电箱民谣琴 原木色 木吉他 民谣款', 300),
('http://item.jd.com/1005826129.html', 'http://img14.360buyimg.com/n7/g13/M03/02/10/rBEhU1HwvAwIAAAAAAJos0kFDfEAABYngPP6jQAAmjL722.jpg', 'IBANEZ GRX150 电吉他 套装 双单双拾音器 经典型号 黑色', 300),
('http://item.jd.com/1025848530.html', 'http://img10.360buyimg.com/n7/g15/M07/03/0B/rBEhWFHPuZ0IAAAAAAHp1Ss642gAAAqGAPRnCEAAent192.jpg', 'IBANEZ GSR320 电贝司，22品 多色可选电贝斯套装 被动拾音器贝斯 蓝色', 300),
('http://item.jd.com/1030092565.html', 'http://img10.360buyimg.com/n7/g14/M01/08/14/rBEhVVH7R_UIAAAAAAKcH9j96hQAABsBgJ5WUgAApw3906.jpg', 'IBANEZ AW300/AW300ECE单板  电箱民谣琴 原木色 木吉他 电箱款', 300),
('http://item.jd.com/1174903263.html', 'http://img13.360buyimg.com/n7/jfs/t682/341/758896748/153363/177d15e6/5486893eN4dd1f3af.jpg', '红旗乐器正品依班娜IBANEZ电吉他GRG170DX/grg170电吉他套装双摇24品 170dx蓝', 300),
('http://item.jd.com/1011417618.html', 'http://img13.360buyimg.com/n7/g1/M00/06/15/rBEGDlAZ9PQIAAAAAAEQby0kHYoAABTXwH-IQwAARCH250.jpg', 'IBANEZ GRG270/GRG-270 电吉他，中端双摇 套装 24品双摇 蓝色', 300),
('http://item.jd.com/1394450661.html', 'http://img11.360buyimg.com/n7/jfs/t532/230/541916090/111276/1ac272e9/54701d07Ne477d877.jpg', '依班娜 IBANEZ GRG250P  GRG-250P 电吉他，电吉它 双摇 24品 黑色', 300),
('http://item.jd.com/1026857254.html', 'http://img14.360buyimg.com/n7/g15/M00/00/0A/rBEhWFHfg-YIAAAAAAJsPb8HV3gAAA-OgPOQJEAAmxV299.jpg', 'IBANEZ AW70/AW70ECE AW-70/AW-70ECE 单板 电箱民谣 吉他 AW70ECE电箱吉他', 300),
('http://item.jd.com/1025842131.html', 'http://img11.360buyimg.com/n7/g14/M05/03/0B/rBEhVVHPlT4IAAAAAAGrwk3QC0gAAAp8gDZwjkAAava369.jpg', 'IBANEZ GRG140/GRG-140电吉他 电吉它 黑色', 300),
('http://item.jd.com/1174903266.html', 'http://img11.360buyimg.com/n7/jfs/t565/259/769569051/144062/7ca86794/548689a3N46941cec.jpg', '红旗乐器正品依班娜IBANEZ电吉他GRG170DX/grg170电吉他套装双摇24品 170dx银', 300),
('http://item.jd.com/1174903264.html', 'http://img14.360buyimg.com/n7/jfs/t520/362/764909850/152557/9bf107bd/54868995Ne101b037.jpg', '红旗乐器正品依班娜IBANEZ电吉他GRG170DX/grg170电吉他套装双摇24品 170dx红', 300),
('http://item.jd.com/1177168354.html', 'http://img14.360buyimg.com/n7/jfs/t205/9/710651226/162526/4e072020/539587afN92f7ea9a.jpg', '红旗乐器IBANEZ依班娜电吉他正品GRX150初学练习电吉他套装送超值大礼包 苹果红', 300),
('http://item.jd.com/1392123089.html', 'http://img14.360buyimg.com/n7/jfs/t604/95/504340880/126080/11d1b352/546d4d49Na94a382b.jpg', '依班娜 IBANEZ GRX55 GRX-55 电吉他  电吉他 白色', 300),
('http://item.jd.com/1265029000.html', 'http://img10.360buyimg.com/n7/jfs/t247/176/963806751/87028/affbaad3/53f44a78Nb50ac04f.jpg', '伊班娜Ibanez 150 GRX150 DX 电吉他 红色', 300),
('http://item.jd.com/1162652402.html', 'http://img12.360buyimg.com/n7/jfs/t145/4/729955333/203108/86495b57/53966bafNbf3eb244.jpg', '红旗乐器正品依班娜IBANEZ电吉他GRG150QA电吉他套装双摇24品带贴面升级版 烈焰红', 300),
('http://item.jd.com/1006250200.html', 'http://img10.360buyimg.com/n7/g4/M02/06/1A/rBEGFlAghpQIAAAAAAEvAQjet3wAABVKQIeHFcAAS8Z292.jpg', 'IBANEZ GSR320 电贝司，22品 多色可选电贝斯套装 被动拾音器贝斯 黑色', 300),
('http://item.jd.com/1265028999.html', 'http://img14.360buyimg.com/n7/jfs/t223/201/997111591/92529/f98fa333/53f44a64N57520c51.jpg', '伊班娜Ibanez 150 GRX150 DX 电吉他 黑色', 300),
('http://item.jd.com/1252715446.html', 'http://img11.360buyimg.com/n7/jfs/t235/316/365268892/57210/c8ff447c/53e9d5d6Nb6229f00.jpg', 'IBANEZ GSR200 电贝司，22品，主动拾音器 四色可选 电贝斯 新款红/黑色配件=1290元', 300),
('http://item.jd.com/1174903259.html', 'http://img14.360buyimg.com/n7/jfs/t565/233/761524359/132187/177c326f/54868987N9c25808d.jpg', '红旗乐器正品依班娜IBANEZ电吉他GRG170DX/grg170电吉他套装双摇24品 170dx黑', 300),
('http://item.jd.com/1157742137.html', 'http://img12.360buyimg.com/n7/jfs/t199/159/732365581/148621/ce7aef56/539679f4Nf25b194f.jpg', '红旗乐器伊班娜IBANEZ贝斯电贝司GSR200电贝斯套装 大礼包 绚丽红', 300),
('http://item.jd.com/1164089140.html', 'http://img10.360buyimg.com/n7/jfs/t739/116/1357079283/36739/a8af4f39/55336240N65aad032.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 苹果绿', 300),
('http://item.jd.com/1180767348.html', 'http://img13.360buyimg.com/n7/jfs/t160/176/838245183/168166/24b40ab3/539a610aN74c8cc49.jpg', '红旗乐器正品依班娜IBANEZ GRG270电吉他双摇24品电吉它套装送超值大礼 宝石蓝', 300),
('http://item.jd.com/1452491267.html', 'http://img12.360buyimg.com/n7/jfs/t751/177/490432037/130203/c077b4a/54b71aa4N112496d8.jpg', '依班娜 IBANEZ GRG250P  GRG-250P 电吉他，电吉它 双摇 24品 红色', 300),
('http://item.jd.com/1177168356.html', 'http://img11.360buyimg.com/n7/jfs/t151/35/696972156/147268/eb9a795c/539587afNf0859f9b.jpg', '红旗乐器IBANEZ依班娜电吉他正品GRX150初学练习电吉他套装送超值大礼包 暗夜黑', 300),
('http://item.jd.com/1382244675.html', 'http://img10.360buyimg.com/n7/jfs/t655/285/372196252/116986/c50baebf/54614613N0e66fe08.jpg', '红旗乐器正品依班娜IBANEZ GRX55电吉他初学练习电吉他套装GRX150升级版 黑色', 300),
('http://item.jd.com/1154636208.html', 'http://img13.360buyimg.com/n7/jfs/t172/26/1155157004/84241/b013421d/53a548d7N402177d3.jpg', 'IBANEZ GRX150 电吉他 套装 双单双拾音器 经典型号 GRX150水果蓝色', 300),
('http://item.jd.com/1470756973.html', 'http://img13.360buyimg.com/n7/jfs/t220/16/656113277/118486/ba826717/53ef0161N2226931b.jpg', '伊班娜Ibanez 150 GRX150 DX 电吉他 白色', 300),
('http://item.jd.com/1006248626.html', 'http://img11.360buyimg.com/n7/g5/M02/1B/1C/rBEIDFAggpsIAAAAAAE2A_ORLToAAFcgQEc07kAATYb769.jpg', 'IBANEZ GSR205 电贝司，22品，主动拾音器 黑色 电贝斯 5弦', 300),
('http://item.jd.com/1011350142.html', 'http://img12.360buyimg.com/n7/g8/M03/09/0A/rBEHZ1CApNAIAAAAAAD641dzchIAAB0hwCf7OkAAPr7341.jpg', 'IBANEZ GSR200 电贝司，22品，主动拾音器 四色可选 电贝斯 蓝色 银色硬件=1290元', 300),
('http://item.jd.com/1074088862.html', 'http://img12.360buyimg.com/n7/jfs/t1012/313/572918462/32600/1e0d5492/5530a2f3N6f27eabd.jpg', 'Ibanez依斑娜RG系列 GRG150P 电吉他 单摇吉它 GRG150P红色', 300),
('http://item.jd.com/1164089141.html', 'http://img11.360buyimg.com/n7/jfs/t829/87/605566183/36166/e9e7d1bd/55336270Ncac1b092.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 苹果红', 300),
('http://item.jd.com/1164089143.html', 'http://img13.360buyimg.com/n7/jfs/t1132/90/593446845/33998/fc90acff/553362b1Na7287dac.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 苹果黄', 300),
('http://item.jd.com/1180767347.html', 'http://img12.360buyimg.com/n7/jfs/t208/162/812585329/166323/4d1ffa8c/539a6109N204e4c62.jpg', '红旗乐器正品依班娜IBANEZ GRG270电吉他双摇24品电吉它套装送超值大礼 烈焰红', 300),
('http://item.jd.com/1452491268.html', 'http://img13.360buyimg.com/n7/jfs/t634/55/1153279282/129972/4647b0bb/54b71abcN9f00a8c6.jpg', '依班娜 IBANEZ GRG250P  GRG-250P 电吉他，电吉它 双摇 24品 黄色', 300),
('http://item.jd.com/1027172340.html', 'http://img10.360buyimg.com/n7/g14/M00/05/0B/rBEhVVHjp6EIAAAAAAKMU1ULO-4AABC0QFs1kwAAoxr723.jpg', 'Ibanez uks50# 全沙比利 21寸 Ukulele 尤克里里  小吉他', 300),
('http://item.jd.com/1157742140.html', 'http://img10.360buyimg.com/n7/jfs/t148/330/750652250/144846/2dd14ed4/539679f4Na51f7837.jpg', '红旗乐器伊班娜IBANEZ贝斯电贝司GSR200电贝斯套装 大礼包 宝石蓝', 300),
('http://item.jd.com/1103668495.html', 'http://img10.360buyimg.com/n7/jfs/t172/46/628779826/37219/e12a8568/539466d8N9a6516fb.jpg', 'Ibanez依斑娜 高档电吉他 双摇 GRG270吉他 苹果红', 300),
('http://item.jd.com/1180767349.html', 'http://img14.360buyimg.com/n7/jfs/t178/235/819587404/152721/77179e8f/539a6109Ndddd66d6.jpg', '红旗乐器正品依班娜IBANEZ GRG270电吉他双摇24品电吉它套装送超值大礼 炫酷黑', 300),
('http://item.jd.com/1027331418.html', 'http://img13.360buyimg.com/n7/g13/M03/01/07/rBEhU1Hk-qgIAAAAAAINgwdwhqQAABIuwOYVmAAAg2b955.jpg', 'IBANEZ GSR370 依班娜GSR-370 电贝司 电贝斯 绿色', 300),
('http://item.jd.com/1025842132.html', 'http://img12.360buyimg.com/n7/jfs/t169/207/1183303845/127023/6530a6c6/53a788b5Nccb53d42.jpg', 'IBANEZ GRG140/GRG-140电吉他 电吉它 日落色', 300),
('http://item.jd.com/1076290508.html', 'http://img13.360buyimg.com/n7/jfs/t169/119/609458379/42886/cad64efe/539461edN8f154408.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 蓝色', 300),
('http://item.jd.com/1154636207.html', 'http://img12.360buyimg.com/n7/jfs/t148/135/1164633438/84427/9330a9c4/53a548d0Naf2acab8.jpg', 'IBANEZ GRX150 电吉他 套装 双单双拾音器 经典型号 GRX150水果黄色', 300),
('http://item.jd.com/1157742139.html', 'http://img14.360buyimg.com/n7/jfs/t163/336/707237307/126588/2a782640/539679f3Nf7bb7792.jpg', '红旗乐器伊班娜IBANEZ贝斯电贝司GSR200电贝斯套装 大礼包 魅力白', 300),
('http://item.jd.com/1157742138.html', 'http://img13.360buyimg.com/n7/jfs/t184/304/710215949/140036/2e621afc/539679f3Naf8dfa69.jpg', '红旗乐器伊班娜IBANEZ贝斯电贝司GSR200电贝斯套装 大礼包 动感黑', 300),
('http://item.jd.com/1164089142.html', 'http://img12.360buyimg.com/n7/jfs/t1180/243/593940270/37061/53f3fff6/55336290N07742895.jpg', 'banez依斑娜 GRG170DX电吉他 小双摇吉他 苹果蓝', 300),
('http://item.jd.com/1005886857.html', 'http://img12.360buyimg.com/n7/g13/M08/06/08/rBEhVFINpZEIAAAAAAD4fBDDzMkAACHUwMWUvkAAPiU346.jpg', 'IBANEZ GRG150P/GRG-150P 电吉他  电吉它 红色', 300),
('http://item.jd.com/1005886855.html', 'http://img10.360buyimg.com/n7/g13/M08/06/08/rBEhVFINpX0IAAAAAAD8jxAuT-wAACHUwFJJW0AAPyn171.jpg', 'IBANEZ GRG150P/GRG-150P 电吉他  电吉它 蓝色', 300),
('http://item.jd.com/1006250262.html', 'http://img12.360buyimg.com/n7/g8/M03/09/0A/rBEHZ1CApmEIAAAAAAD9VpgyM98AAB0mACps04AAP1u699.jpg', 'IBANEZ GSR320 电贝司，22品 多色可选电贝斯套装 被动拾音器贝斯 红色', 300),
('http://item.jd.com/1006250760.html', 'http://img10.360buyimg.com/n7/jfs/t397/28/340618203/152257/32576268/5417a885N7f8d4a21.jpg', 'IBANEZ GSR370 依班娜GSR-370 电贝司 电贝斯 红色', 300),
('http://item.jd.com/1006250759.html', 'http://img14.360buyimg.com/n7/g5/M02/1B/1C/rBEIC1AgiGMIAAAAAAFNoIcGEcEAAFchgEuwz8AAU24455.jpg', 'IBANEZ GSR370 依班娜GSR-370 电贝司 电贝斯 黑色', 300),
('http://item.jd.com/1011775239.html', 'http://img14.360buyimg.com/n7/g15/M07/04/0D/rBEhWFHaTAcIAAAAAAHPTfnUBcMAAA3KwCeltEAAc9l361.jpg', 'Ibanez（依班娜）G220ECE 电箱 古典琴 面单', 300),
('http://item.jd.com/1026857253.html', 'http://img13.360buyimg.com/n7/g13/M02/00/0E/rBEhVFHfhDwIAAAAAAJyCKeiNFwAAA-pQHX23oAAnIg661.jpg', 'IBANEZ AW70/AW70ECE AW-70/AW-70ECE 单板 电箱民谣 吉他 AW70民谣吉他', 300),
('http://item.jd.com/1043111223.html', 'http://img13.360buyimg.com/n7/jfs/t907/28/459837461/138735/55e00716/55265e6fN5928675f.jpg', '依班娜 IBANEZ GRG250P/GRG-250P 电吉他 双摇首荐 专业双摇 白色', 300),
('http://item.jd.com/1043111224.html', 'http://img14.360buyimg.com/n7/g13/M08/15/03/rBEhVFJ4cv4IAAAAAAHOkiFst8IAAFA9gOwBXAAAc6q162.jpg', '依班娜 IBANEZ GRG250P/GRG-250P 电吉他 双摇首荐 专业双摇 黑色', 300),
('http://item.jd.com/1177168355.html', 'http://img10.360buyimg.com/n7/jfs/t196/248/698867085/155293/c7d4a96f/539587afNf653b81b.jpg', '红旗乐器IBANEZ依班娜电吉他正品GRX150初学练习电吉他套装送超值大礼包 宝石蓝', 300),
('http://item.jd.com/1074088861.html', 'http://img11.360buyimg.com/n7/jfs/t1183/336/572674639/32338/c340d6e0/5530a2a3Nf0db1f16.jpg', 'Ibanez依斑娜RG系列 GRG150P 电吉他 单摇吉它 GRG150P蓝色', 300),
('http://item.jd.com/1074088860.html', 'http://img10.360buyimg.com/n7/jfs/t1219/68/565221672/29515/b954d334/5530a23fNfb34d4f4.jpg', 'Ibanez依斑娜RG系列 GRG150P 电吉他 单摇吉它 GRG150P白色', 300),
('http://item.jd.com/1074088859.html', 'http://img14.360buyimg.com/n7/jfs/t799/363/573508688/30676/545a70ac/5530a322Na4d1c512.jpg', 'Ibanez依斑娜RG系列 GRG150P 电吉他 单摇吉它 GRG150P黑色', 300),
('http://item.jd.com/1103668497.html', 'http://img12.360buyimg.com/n7/jfs/t208/341/652960334/57775/7aa880ae/539466eaNfffa5fea.jpg', 'Ibanez依斑娜 高档电吉他 双摇 GRG270吉他 暗黑色', 300),
('http://item.jd.com/1382244674.html', 'http://img14.360buyimg.com/n7/jfs/t676/233/102380401/135691/27f91148/5461460fN3581776f.jpg', '红旗乐器正品依班娜IBANEZ GRX55电吉他初学练习电吉他套装GRX150升级版 红色', 300),
('http://item.jd.com/1382244676.html', 'http://img11.360buyimg.com/n7/jfs/t637/215/363028462/108129/39416cb5/54614616N3286d10e.jpg', '红旗乐器正品依班娜IBANEZ GRX55电吉他初学练习电吉他套装GRX150升级版 白色', 300),
('http://item.jd.com/1210470209.html', 'http://img14.360buyimg.com/n7/jfs/t166/302/1744553816/73106/41bae473/53ba2154N6cd5ba72.jpg', 'IBANEZ 依班娜 V72 V74 木吉他 民谣吉他 V72ECE V74ECE 电箱琴 V80ECE电箱琴', 300),
('http://item.jd.com/1157752524.html', 'http://img14.360buyimg.com/n7/jfs/t187/174/748885318/158858/217e603d/53966bb0Nccd01d08.jpg', '红旗乐器正品依班娜IBANEZ电吉他GRG150QA电吉他套装双摇24品带贴面升级版 虎纹黑', 300),
('http://item.jd.com/1011773762.html', 'http://img12.360buyimg.com/n7/g7/M03/0C/1B/rBEHZlCMl5cIAAAAAAEGdcB2kp4AACg3wIiN8YAAQaN089.jpg', '依班娜 IBANEZ GRX140 GRX-140 电吉他 红色', 300),
('http://item.jd.com/1011773761.html', 'http://img11.360buyimg.com/n7/g7/M03/0C/1B/rBEHZVCMl5QIAAAAAADsdrC4wfcAACg3wHmxDUAAOyO704.jpg', '依班娜 IBANEZ GRX140 GRX-140 电吉他 白色', 300),
('http://item.jd.com/1005826131.html', 'http://img11.360buyimg.com/n7/g14/M03/07/06/rBEhV1HwvCQIAAAAAAJo64kyVwsAABaMgHlydEAAmkD053.jpg', 'IBANEZ GRX150 电吉他 套装 双单双拾音器 经典型号 白色', 300),
('http://item.jd.com/1474009022.html', 'http://img12.360buyimg.com/n7/jfs/t775/351/387010595/144440/4bb7a4ab/54a9ef71Naeb5a016.jpg', '正品IBANEZ GRX150初学练习电吉他套装依班娜GRX55电吉他送豪礼 白色', 300),
('http://item.jd.com/1017601698.html', 'http://img13.360buyimg.com/n7/g14/M0A/03/18/rBEhVlHTr1MIAAAAAAIOdf9dOtwAAAvPQCsotwAAg6N720.jpg', 'IBANEZ GRG150QA/GRG-150QA 电吉他  电吉它 红色', 300),
('http://item.jd.com/1477669221.html', 'http://img11.360buyimg.com/n7/jfs/t499/295/585247145/31525/1b90d458/54fd4d5eN35c3999a.jpg', 'Ibanez依斑娜 SR300 电贝斯 24品贝司 椴木琴体 玫瑰木指板 白色PW', 300),
('http://item.jd.com/1011773759.html', 'http://img14.360buyimg.com/n7/g7/M03/0C/1B/rBEHZlCMl4YIAAAAAAD3nwqrS68AACg3wGWT5QAAPe3909.jpg', '依班娜 IBANEZ GRX140 GRX-140 电吉他 黑色', 300),
('http://item.jd.com/1033010599.html', 'http://img14.360buyimg.com/n7/g14/M03/0C/13/rBEhVlIZjtsIAAAAAAGpkdt44aAAACdmgFl0IEAAamp237.jpg', 'IBANEZ AW65 AW-65/AW单板 电箱民谣 吉他 木吉他', 300),
('http://item.jd.com/1030086241.html', 'http://img11.360buyimg.com/n7/g14/M00/08/18/rBEhV1H8XLoIAAAAAAIocQ_hXkoAABtsAOz1qQAAiiJ828.jpg', 'IBANEZ AW370 木吉他 单板 民谣吉他 41寸民谣吉他 民谣款', 300),
('http://item.jd.com/1474009021.html', 'http://img11.360buyimg.com/n7/jfs/t775/351/387010595/144440/4bb7a4ab/54a9ef71Naeb5a016.jpg', '正品IBANEZ GRX150初学练习电吉他套装依班娜GRX55电吉他送豪礼 黑色', 300),
('http://item.jd.com/1477669219.html', 'http://img14.360buyimg.com/n7/jfs/t733/106/835756559/38209/6ebe0bc9/54fd4d3cNf3b78de2.jpg', 'Ibanez依斑娜 SR300 电贝斯 24品贝司 椴木琴体 玫瑰木指板 红色CA', 300),
('http://item.jd.com/1018572006.html', 'http://img11.360buyimg.com/n7/g14/M0A/03/18/rBEhVlHTr2YIAAAAAAHwbCDb1lQAAAvPQGRNN4AAfCE831.jpg', 'IBANEZ GRG150QA/GRG-150QA 电吉他  电吉它 黑色', 300),
('http://item.jd.com/1017601697.html', 'http://img12.360buyimg.com/n7/jfs/t157/335/1573159849/136262/9d957ae8/53b1020fN123eb353.jpg', 'IBANEZ GRG150QA/GRG-150QA 电吉他  电吉它 蓝色', 300),
('http://item.jd.com/1059056448.html', 'http://img13.360buyimg.com/n7/jfs/t193/266/1408940879/153779/22948dcb/53af73feNdf709a46.jpg', '正品依班娜IBANEZ GSR320电贝司BASS电贝斯低音吉他送大礼', 300),
('http://item.jd.com/1477669220.html', 'http://img10.360buyimg.com/n7/jfs/t1141/107/98929576/35771/b3432b64/54fd4d59Nd93654fb.jpg', 'Ibanez依斑娜 SR300 电贝斯 24品贝司 椴木琴体 玫瑰木指板 黑色IPT', 300),
('http://item.jd.com/1026107058.html', 'http://img13.360buyimg.com/n7/g15/M02/04/09/rBEhWVHY3zsIAAAAAAGmXUTUyd4AAA10gGSZh8AAaZ1399.jpg', 'IBANEZ GRGA21-CA  电吉他 吉他 封闭拾音器 黑色', 300);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) NOT NULL,
  `usr` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `usr`, `pwd`) VALUES
(1, '123456', '123456'),
(4, 'iadmin', '123456'),
(5, 'liaobolin', '123456'),
(9, '%E5%BB%96%E6%9C%A8%E7%99%BD', '123456'),
(10, '%E9%BB%84%E5%B0%8F%E4%BA%8E', '123456'),
(11, '%E6%88%91%E6%98%AF%E9%98%BF%E8', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guitar_detail`
--
ALTER TABLE `guitar_detail`
 ADD UNIQUE KEY `gid` (`gid`);

--
-- Indexes for table `guitar_list`
--
ALTER TABLE `guitar_list`
 ADD UNIQUE KEY `gid` (`gid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `usr` (`usr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
