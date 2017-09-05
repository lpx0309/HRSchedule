-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-01-19 10:56:06
-- 服务器版本： 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hrpa`
--

-- --------------------------------------------------------

--
-- 表的结构 `source`
--

CREATE TABLE IF NOT EXISTS `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `team` varchar(20) NOT NULL,
  `projectid` varchar(20) NOT NULL,
  `project` varchar(200) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `week1` int(11) NOT NULL,
  `week2` int(11) NOT NULL,
  `week3` int(11) NOT NULL,
  `week4` int(11) NOT NULL,
  `week5` int(11) NOT NULL,
  `week6` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- 转存表中的数据 `source`
--

INSERT INTO `source` (`id`, `department`, `name`, `team`, `projectid`, `project`, `manager`, `week1`, `week2`, `week3`, `week4`, `week5`, `week6`) VALUES
(1, '技术中心', '崔晓嵩', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(2, '技术中心', '崔晓嵩', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(3, '技术中心', '崔晓嵩', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(4, '技术中心', '张晶', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 0),
(5, '技术中心', '刘通', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 0),
(6, '技术中心', '李丹', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(7, '技术中心', '李丹', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(8, '技术中心', '李丹', '项目开发部', 'LC2013007', '通用数据开发平台一期', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(9, '技术中心', '谢景帅', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(10, '技术中心', '谢景帅', '项目开发部', 'LC2014054', '海淀园企业动态监测平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(11, '技术中心', '马亮', '项目开发部', 'LC2013007', '通用数据开发平台一期', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(12, '技术中心', '马亮', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(13, '技术中心', '马亮', '项目开发部', 'LC2014011', '基于信息技术的质量效益测量及监测系统开发(国家质检总局质量经济售前研究)', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(14, '技术中心', '马亮', '项目开发部', 'LC2013027', '上海市在外地投资企业工商注册数据采集与分析系统', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(15, '技术中心', '刘艳', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '谢景帅', 0, 0, 0, 0, 0, 0),
(16, '技术中心', '刘艳', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(17, '技术中心', '刘艳', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(18, '技术中心', '刘艳', '项目开发部', 'IT', '技术中心', '谢景帅', 0, 0, 0, 0, 0, 0),
(19, '技术中心', '李厚余', '项目开发部', 'LC2014006', '智库终端', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(20, '技术中心', '李厚余', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(21, '技术中心', '李厚余', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(22, '技术中心', '李厚余', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(23, '技术中心', '李厚余', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(24, '技术中心', '李厚余', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(25, '技术中心', '李文华', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(26, '技术中心', '李文华', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '谢景帅', 0, 0, 0, 0, 0, 0),
(27, '技术中心', '张银刚', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(28, '技术中心', '张银刚', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(29, '技术中心', '张银刚', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(30, '技术中心', '李智', '项目开发部', 'LC2013046', '数据工商安卓Pad版开发', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(31, '技术中心', '李智', '项目开发部', 'LC2014006', '智库终端', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(32, '技术中心', '李智', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(33, '技术中心', '李智', '项目开发部', 'LC2013026', '北京工商数据中心系统升级改造项目第一包-数据分析平台开发与GIS应用项目建设', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(34, '技术中心', '李智', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(35, '技术中心', '李智', '项目开发部', 'LC2013017', '国家工商总局数据质量校核运维', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(36, '技术中心', '李智', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(37, '技术中心', '李智', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(38, '技术中心', '李智', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(39, '技术中心', '李智', '项目开发部', 'LC2013018', '河南省工商行政管理局分析辅助决策系统采购项目', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(40, '技术中心', '李刘青', '项目开发部', 'IT', '技术中心', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(41, '技术中心', '李刘青', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(42, '技术中心', '李刘青', '项目开发部', 'LC2013007', '通用数据开发平台一期', '马亮、李丹', 40, 0, 0, 0, 0, 0),
(43, '技术中心', '李刘青', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(44, '技术中心', '李宁宁', '项目开发部', 'LC2013016', '数据终端（“数据工商”移动决策支持系统项目合同）', '谢景帅', 0, 0, 0, 0, 0, 0),
(45, '技术中心', '李宁宁', '项目开发部', 'IT', '技术中心', '谢景帅', 0, 0, 0, 0, 0, 0),
(46, '技术中心', '李宁宁', '项目开发部', 'LC2013001', '北京财政综合数据中心', '谢景帅', 0, 0, 0, 0, 0, 0),
(47, '技术中心', '李宁宁', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(48, '技术中心', '李宁宁', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(49, '技术中心', '孙培广', '项目开发部', 'LC2013001', '北京财政综合数据中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(50, '技术中心', '孙培广', '项目开发部', 'LC2013001', '北京市工商行政管理局统计报表系统升级改造', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(51, '技术中心', '孙培广', '项目开发部', 'LC2013001', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(52, '技术中心', '杨洁', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 0),
(53, '技术中心', '刘佳佳', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(54, '技术中心', '刘佳佳', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(55, '技术中心', '刘佳佳', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '马亮、李丹', 40, 0, 0, 0, 0, 0),
(56, '技术中心', '张伟', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(57, '技术中心', '张伟', '项目开发部', '', '南昌市生产监督管理局数据分析平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(58, '技术中心', '张伟', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(59, '技术中心', '张伟', '项目开发部', '', '元数据管理平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(60, '技术中心', '李瑷彤', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(61, '技术中心', '李瑷彤', '项目开发部', '', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(62, '技术中心', '李瑷彤', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(63, '技术中心', '李瑷彤', '项目开发部', '', '元数据管理平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(64, '技术中心', '方涛', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(65, '技术中心', '方涛', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(66, '技术中心', '方涛', '项目开发部', '', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(67, '技术中心', '方涛', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(68, '技术中心', '方涛', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '谢景帅', 0, 0, 0, 0, 0, 0),
(69, '技术中心', '方涛', '项目开发部', '', '元数据管理平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(70, '技术中心', '郭建军', '项目开发部', 'LC2013001', '北京财政综合数据中心', '', 0, 0, 0, 0, 0, 0),
(71, '技术中心', '郭建军', '项目开发部', 'LC2014006', '智库终端', '', 0, 0, 0, 0, 0, 0),
(72, '技术中心', '郭建军', '项目开发部', 'LC2013041', '中关村科学城提升发展规划', '', 0, 0, 0, 0, 0, 0),
(73, '技术中心', '郭建军', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '', 0, 0, 0, 0, 0, 0),
(74, '技术中心', '郭建军', '项目开发部', 'IT', '技术中心', '', 0, 0, 0, 0, 0, 0),
(75, '技术中心', '郭建军', '项目开发部', 'LC2014057', '泛珠三角五省企业信息数据动态监测平台（广东等多省企业信息展现系统）', '', 0, 0, 0, 0, 0, 0),
(76, '技术中心', '郭建军', '项目开发部', 'LC2014039', '长三角企业信息数据平台', '', 0, 0, 0, 0, 0, 0),
(77, '技术中心', '郭建军', '项目开发部', 'LC2014059', '农业大数据分析应用云平台', '', 0, 0, 0, 0, 0, 0),
(78, '技术中心', '郭建军', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '', 0, 0, 0, 0, 0, 0),
(79, '技术中心', '张洁', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(80, '技术中心', '张洁', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(81, '技术中心', '张洁', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(82, '技术中心', '石磊', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(83, '技术中心', '石磊', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(84, '技术中心', '石磊', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(85, '技术中心', '石磊', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(86, '技术中心', '石磊', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(87, '技术中心', '石磊', '项目开发部', 'LC2014059', '农业大数据分析应用云平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(88, '技术中心', '李秀敏', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '', 0, 0, 0, 0, 0, 0),
(89, '技术中心', '李秀敏', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '', 0, 0, 0, 0, 0, 0),
(90, '技术中心', '梅雪', '项目开发部', 'LC2013001', '北京财政综合数据中心', '', 0, 0, 0, 0, 0, 0),
(91, '技术中心', '梅雪', '项目开发部', 'LC2013007', '通用数据开发平台一期', '', 0, 0, 0, 0, 0, 0),
(92, '技术中心', '梅雪', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '', 0, 0, 0, 0, 0, 0),
(93, '技术中心', '梅雪', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '', 0, 0, 0, 0, 0, 0),
(94, '技术中心', '梅雪', '项目开发部', 'LC2014006', '智库终端', '', 0, 0, 0, 0, 0, 0),
(95, '技术中心', '梅雪', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '', 0, 0, 0, 0, 0, 0),
(96, '技术中心', '梅雪', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '', 0, 0, 0, 0, 0, 0),
(97, '技术中心', '梅雪', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '', 0, 0, 0, 0, 0, 0),
(98, '技术中心', '梅雪', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '', 0, 0, 0, 0, 0, 0),
(99, '技术中心', '梅雪', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '', 0, 0, 0, 0, 0, 0),
(100, '技术中心', '梅雪', '项目开发部', 'LC2013020', '北京工商数据分析平台运维升级', '', 0, 0, 0, 0, 0, 0),
(101, '技术中心', '胆莹', '项目开发部', 'LC2013020', '北京工商数据分析平台运维升级', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(102, '技术中心', '胆莹', '项目开发部', 'LC2013012', '北京市工商行政管理局统计报表系统升级改造', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(103, '技术中心', '胆莹', '项目开发部', 'LC2014021', '重庆企业信用信息分析平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(104, '技术中心', '胆莹', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(105, '技术中心', '胆莹', '项目开发部', 'LC2013018', '河南省工商行政管理局分析辅助决策系统采购项目', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(106, '技术中心', '胆莹', '项目开发部', 'LC2013017', '国家工商总局数据质量校核运维', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(107, '技术中心', '赵亚飞', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 0),
(108, '技术中心', '赵亚飞', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '刘通', 0, 0, 0, 0, 0, 0),
(109, '技术中心', '赵亚飞', '项目开发部', 'LC2013059', '国家统计局统计数据可视化展现技术开发服务', '刘通', 0, 0, 0, 0, 0, 0),
(110, '技术中心', '赵亚飞', '项目开发部', 'LC2014005', '晋城市财政局财政数据分析与应用课题', '刘通', 0, 0, 0, 0, 0, 0),
(111, '技术中心', '杨永韩', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(112, '技术中心', '杨永韩', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '马亮、李丹', 20, 0, 0, 0, 0, 0),
(113, '技术中心', '杨永韩', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(114, '技术中心', '杨永韩', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 20, 0, 0, 0, 0, 0),
(115, '技术中心', '杨永韩', '项目开发部', '', '重庆企业信用信息分析平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(116, '技术中心', '李兴炎', '项目开发部', 'LC2013001', '北京财政综合数据中心', '张华松', 0, 0, 0, 0, 0, 0),
(117, '技术中心', '李兴炎', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '张华松', 0, 0, 0, 0, 0, 0),
(118, '技术中心', '李兴炎', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '张华松', 0, 0, 0, 0, 0, 0),
(119, '技术中心', '康晓晨', '项目开发部', 'LC2013001', '北京财政综合数据中心', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(120, '技术中心', '康晓晨', '项目开发部', 'LC2013020', '北京工商数据分析平台运维升级', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(121, '技术中心', '康晓晨', '项目开发部', 'LC2013012', '北京市工商行政管理局统计报表系统升级改造', '马亮、李丹', 20, 0, 0, 0, 0, 0),
(122, '技术中心', '康晓晨', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '马亮、李丹', 20, 0, 0, 0, 0, 0),
(123, '技术中心', '康晓晨', '项目开发部', 'IT', '技术中心', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(124, '技术中心', '康晓晨', '项目开发部', '', '重庆企业信用信息分析平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(125, '技术中心', '王小燕', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(126, '技术中心', '王小燕', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(127, '技术中心', '王小燕', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(128, '技术中心', '王小燕', '项目开发部', 'LC2014021', '重庆企业信用信息分析平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(129, '技术中心', '肖登', '测试', 'LC2013013', '国家工商行政管理总局企业登记管理数据分析系统', '关宁', 0, 0, 0, 0, 0, 0),
(130, '技术中心', '肖登', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(131, '技术中心', '肖登', '测试', 'LC2013038', '河南省工商行政管理局数据分析服务', '关宁', 0, 0, 0, 0, 0, 0),
(132, '技术中心', '肖登', '测试', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '关宁', 0, 0, 0, 0, 0, 0),
(133, '技术中心', '肖登', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 0),
(134, '技术中心', '肖登', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(135, '技术中心', '肖登', '测试', 'LC2014059', '农业大数据分析应用云平台', '关宁', 0, 0, 0, 0, 0, 0),
(136, '技术中心', '肖登', '测试', 'LC2014001', '海淀园企业动态监测平台', '关宁', 0, 0, 0, 0, 0, 0),
(137, '技术中心', '肖登', '测试', 'LC2014041', '北京工商手机移动终端运营项目', '关宁', 0, 0, 0, 0, 0, 0),
(138, '技术中心', '肖登', '测试', 'LC2014004', '河南省财政数据分析应用系统', '关宁', 0, 0, 0, 0, 0, 0),
(139, '技术中心', '温迎福', '测试', 'LC2014012', 'Spirit自动化测试平台', '关宁', 0, 0, 0, 0, 0, 0),
(140, '技术中心', '温迎福', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 0),
(141, '技术中心', '温迎福', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(142, '技术中心', '温迎福', '测试', 'LC2014041', '北京工商手机移动终端运营项目', '关宁', 0, 0, 0, 0, 0, 0),
(143, '技术中心', '温迎福', '测试', 'LC2014001', '海淀园企业动态监测平台', '关宁', 0, 0, 0, 0, 0, 0),
(144, '技术中心', '温迎福', '测试', 'LC2014059', '农业大数据分析应用云平台', '关宁', 0, 0, 0, 0, 0, 0),
(145, '技术中心', '王艳维', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 0),
(146, '技术中心', '王艳维', '测试', 'LC2014004', '河南省财政数据分析应用系统', '关宁', 0, 0, 0, 0, 0, 0),
(147, '技术中心', '王艳维', '测试', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '关宁', 0, 0, 0, 0, 0, 0),
(148, '技术中心', '王艳维', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(149, '技术中心', '吕雪', '测试', 'LC2014013', '北京工商监控预警平台一期', '关宁', 0, 0, 0, 0, 0, 0),
(150, '技术中心', '吕雪', '测试', 'LC2014004', '河南省财政数据分析应用系统', '关宁', 0, 0, 0, 0, 0, 0),
(151, '技术中心', '吕雪', '测试', 'LC2014041', '北京工商手机移动终端运营项目', '关宁', 0, 0, 0, 0, 0, 0),
(152, '技术中心', '吕雪', '测试', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '关宁', 0, 0, 0, 0, 0, 0),
(153, '技术中心', '吕雪', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 0),
(154, '技术中心', '赵露露', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 0),
(155, '技术中心', '赵露露', '测试', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '关宁', 0, 0, 0, 0, 0, 0),
(156, '技术中心', '麻伟超', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 0),
(157, '技术中心', '关宁', '配置管理', 'IT', '技术中心', '关宁', 40, 40, 40, 40, 40, 0),
(158, '技术中心', '关宁', '配置管理', 'LC2013007', '通用数据开发平台一期', '关宁', 0, 0, 0, 0, 0, 0),
(159, '技术中心', '许健', '配置管理', 'IT', '技术中心', '关宁', 20, 20, 20, 20, 20, 0),
(160, '技术中心', '许健', '配置管理', 'LC2013007', '通用数据开发平台一期', '关宁', 20, 20, 20, 20, 20, 0),
(161, '技术中心', '张昊', '配置管理', 'IT', '技术中心', '关宁', 20, 20, 20, 20, 20, 0),
(162, '技术中心', '张昊', '配置管理', 'LC2013007', '通用数据开发平台一期', '关宁', 20, 20, 20, 20, 20, 0),
(163, '技术中心', '张爱席', '文档', 'IT', '技术中心', '', 0, 0, 0, 0, 0, 0),
(164, '技术中心', '张爱席', '文档', 'LC2013001', '北京财政综合数据中心', '', 0, 0, 0, 0, 0, 0),
(165, '技术中心', '张爱席', '文档', 'LC2013007', '通用数据开发平台一期', '', 0, 0, 0, 0, 0, 0),
(166, '技术中心', '张爱席', '文档', 'LC2013016', '数据终端（“数据工商”移动决策支持系统项目合同）', '', 0, 0, 0, 0, 0, 0),
(167, '技术中心', '张爱席', '文档', 'LC2014001', '海淀园企业动态监测平台', '', 0, 0, 0, 0, 0, 0),
(168, '技术中心', '张爱席', '文档', 'LC2014004', '河南省财政数据分析应用系统', '', 0, 0, 0, 0, 0, 0),
(169, '技术中心', '张爱席', '文档', 'LC2014041', '北京工商手机移动终端运营项目', '', 0, 0, 0, 0, 0, 0),
(170, '技术中心', '张爱席', '文档', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '', 0, 0, 0, 0, 0, 0),
(171, '技术中心', '张爱席', '文档', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '', 0, 0, 0, 0, 0, 0),
(172, '技术中心', '于竹', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(173, '技术中心', '于竹', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(174, '技术中心', '李会申', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(175, '技术中心', '李会申', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(176, '技术中心', '李会申', '平台', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '于竹', 0, 0, 0, 0, 0, 0),
(177, '技术中心', '李会申', '平台', 'LC2014006', '智库终端', '于竹', 0, 0, 0, 0, 0, 0),
(178, '技术中心', '李会申', '平台', 'LC2013001', '北京财政综合数据中心', '于竹', 0, 0, 0, 0, 0, 0),
(179, '技术中心', '李会申', '平台', 'LC2014054', '海淀统计局数据平台一期', '于竹', 0, 0, 0, 0, 0, 0),
(180, '技术中心', '吴磊', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(181, '技术中心', '冯德贞', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(182, '技术中心', '冯德贞', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(183, '技术中心', '冯德贞', '平台', 'LC2014054', '海淀统计局数据平台一期', '于竹', 0, 0, 0, 0, 0, 0),
(184, '技术中心', '郭庆伟', '平台', 'LC2013007', '智库终端', '于竹', 0, 0, 0, 0, 0, 0),
(185, '技术中心', '郭庆伟', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(186, '技术中心', '张彪', '平台', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '于竹', 0, 0, 0, 0, 0, 0),
(187, '技术中心', '张彪', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(188, '技术中心', '张彪', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(189, '技术中心', '赵墨农', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(190, '技术中心', '刘颖', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 0, 0, 0),
(191, '技术中心', '韩冬', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 0),
(192, '技术中心', '赵子延', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 0),
(193, '技术中心', '张娇娇', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 0),
(194, '技术中心', '于鹏', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 0),
(195, '技术中心', '于鹏', '平台', 'LC2014046', '中关村产业发展促进信息平台', '韩冬', 0, 0, 0, 0, 0, 0),
(196, '技术中心', '赵召', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 0),
(197, '技术中心', '季兴华 ', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 0),
(198, '技术中心', '马小波', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 0),
(199, '技术中心', '马小波', '平台', '未立项', '企业族谱开发', '韩冬', 0, 0, 0, 0, 0, 0),
(200, '技术中心', '马小波', '平台', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '韩冬', 0, 0, 0, 0, 0, 0),
(201, '技术中心', '李沛新', '平台', 'LC2014055', '数据电商网站项目', '韩冬', 40, 40, 40, 40, 40, 0);

-- --------------------------------------------------------

--
-- 表的结构 `source20150112`
--

CREATE TABLE IF NOT EXISTS `source20150112` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `team` varchar(20) NOT NULL,
  `projectid` varchar(20) NOT NULL,
  `project` varchar(200) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `week1` int(11) NOT NULL,
  `week2` int(11) NOT NULL,
  `week3` int(11) NOT NULL,
  `week4` int(11) NOT NULL,
  `week5` int(11) NOT NULL,
  `week6` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- 转存表中的数据 `source20150112`
--

INSERT INTO `source20150112` (`id`, `department`, `name`, `team`, `projectid`, `project`, `manager`, `week1`, `week2`, `week3`, `week4`, `week5`, `week6`) VALUES
(1, '技术中心', '崔晓嵩', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(2, '技术中心', '崔晓嵩', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 40, 0, 0, 0, 0, 0),
(3, '技术中心', '崔晓嵩', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(4, '技术中心', '张晶', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 40),
(5, '技术中心', '刘通', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 40),
(6, '技术中心', '李丹', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(7, '技术中心', '李丹', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '马亮、李丹', 20, 0, 0, 0, 0, 0),
(8, '技术中心', '李丹', '项目开发部', 'LC2013007', '通用数据开发平台一期', '马亮、李丹', 20, 0, 0, 0, 0, 0),
(9, '技术中心', '谢景帅', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(10, '技术中心', '谢景帅', '项目开发部', 'LC2014054', '海淀园企业动态监测平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(11, '技术中心', '马亮', '项目开发部', 'LC2013007', '通用数据开发平台一期', '马亮、李丹', 30, 0, 0, 0, 0, 0),
(12, '技术中心', '马亮', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(13, '技术中心', '马亮', '项目开发部', 'LC2014011', '基于信息技术的质量效益测量及监测系统开发(国家质检总局质量经济售前研究)', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(14, '技术中心', '马亮', '项目开发部', 'LC2013027', '上海市在外地投资企业工商注册数据采集与分析系统', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(15, '技术中心', '刘艳', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '谢景帅', 0, 0, 0, 0, 0, 0),
(16, '技术中心', '刘艳', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(17, '技术中心', '刘艳', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(18, '技术中心', '刘艳', '项目开发部', 'IT', '技术中心', '谢景帅', 0, 0, 0, 0, 0, 0),
(19, '技术中心', '李厚余', '项目开发部', 'LC2014006', '智库终端', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(20, '技术中心', '李厚余', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(21, '技术中心', '李厚余', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(22, '技术中心', '李厚余', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(23, '技术中心', '李厚余', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(24, '技术中心', '李厚余', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(25, '技术中心', '李文华', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(26, '技术中心', '李文华', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '谢景帅', 0, 0, 0, 0, 0, 0),
(27, '技术中心', '张银刚', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(28, '技术中心', '张银刚', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 40, 0, 0, 0, 0, 0),
(29, '技术中心', '张银刚', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(30, '技术中心', '李智', '项目开发部', 'LC2013046', '数据工商安卓Pad版开发', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(31, '技术中心', '李智', '项目开发部', 'LC2014006', '智库终端', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(32, '技术中心', '李智', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(33, '技术中心', '李智', '项目开发部', 'LC2013026', '北京工商数据中心系统升级改造项目第一包-数据分析平台开发与GIS应用项目建设', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(34, '技术中心', '李智', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(35, '技术中心', '李智', '项目开发部', 'LC2013017', '国家工商总局数据质量校核运维', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(36, '技术中心', '李智', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(37, '技术中心', '李智', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 40, 0, 0, 0, 0, 0),
(38, '技术中心', '李智', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(39, '技术中心', '李智', '项目开发部', 'LC2013018', '河南省工商行政管理局分析辅助决策系统采购项目', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(40, '技术中心', '李刘青', '项目开发部', 'IT', '技术中心', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(41, '技术中心', '李刘青', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(42, '技术中心', '李刘青', '项目开发部', 'LC2013007', '通用数据开发平台一期', '马亮、李丹', 40, 40, 0, 0, 0, 0),
(43, '技术中心', '李刘青', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(44, '技术中心', '李宁宁', '项目开发部', 'LC2013016', '数据终端（“数据工商”移动决策支持系统项目合同）', '谢景帅', 0, 0, 0, 0, 0, 0),
(45, '技术中心', '李宁宁', '项目开发部', 'IT', '技术中心', '谢景帅', 0, 0, 0, 0, 0, 0),
(46, '技术中心', '李宁宁', '项目开发部', 'LC2013001', '北京财政综合数据中心', '谢景帅', 0, 0, 0, 0, 0, 0),
(47, '技术中心', '李宁宁', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(48, '技术中心', '李宁宁', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(49, '技术中心', '孙培广', '项目开发部', 'LC2013001', '北京财政综合数据中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(50, '技术中心', '孙培广', '项目开发部', 'LC2013001', '北京市工商行政管理局统计报表系统升级改造', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(51, '技术中心', '孙培广', '项目开发部', 'LC2013001', '北京工商监控预警平台一期', '崔晓嵩', 40, 0, 0, 0, 0, 0),
(52, '技术中心', '杨洁', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 40),
(53, '技术中心', '刘佳佳', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(54, '技术中心', '刘佳佳', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(55, '技术中心', '刘佳佳', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '马亮、李丹', 40, 40, 0, 0, 0, 0),
(56, '技术中心', '张伟', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '马亮、李丹', 10, 0, 0, 0, 0, 0),
(57, '技术中心', '张伟', '项目开发部', '', '南昌市生产监督管理局数据分析平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(58, '技术中心', '张伟', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(59, '技术中心', '张伟', '项目开发部', '', '元数据管理平台', '马亮、李丹', 30, 0, 0, 0, 0, 0),
(60, '技术中心', '李瑷彤', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(61, '技术中心', '李瑷彤', '项目开发部', '', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(62, '技术中心', '李瑷彤', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(63, '技术中心', '李瑷彤', '项目开发部', '', '元数据管理平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(64, '技术中心', '方涛', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(65, '技术中心', '方涛', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(66, '技术中心', '方涛', '项目开发部', '', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(67, '技术中心', '方涛', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '谢景帅', 0, 0, 0, 0, 0, 0),
(68, '技术中心', '方涛', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '谢景帅', 0, 0, 0, 0, 0, 0),
(69, '技术中心', '方涛', '项目开发部', '', '元数据管理平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(70, '技术中心', '郭建军', '项目开发部', 'LC2013001', '北京财政综合数据中心', '', 0, 0, 0, 0, 0, 0),
(71, '技术中心', '郭建军', '项目开发部', 'LC2014006', '智库终端', '', 0, 0, 0, 0, 0, 0),
(72, '技术中心', '郭建军', '项目开发部', 'LC2013041', '中关村科学城提升发展规划', '', 0, 0, 0, 0, 0, 0),
(73, '技术中心', '郭建军', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '', 0, 0, 0, 0, 0, 0),
(74, '技术中心', '郭建军', '项目开发部', 'IT', '技术中心', '', 0, 0, 0, 0, 0, 0),
(75, '技术中心', '郭建军', '项目开发部', 'LC2014057', '泛珠三角五省企业信息数据动态监测平台（广东等多省企业信息展现系统）', '', 0, 0, 0, 0, 0, 0),
(76, '技术中心', '郭建军', '项目开发部', 'LC2014039', '长三角企业信息数据平台', '', 0, 0, 0, 0, 0, 0),
(77, '技术中心', '郭建军', '项目开发部', 'LC2014059', '农业大数据分析应用云平台', '', 0, 0, 0, 0, 0, 0),
(78, '技术中心', '郭建军', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '', 0, 0, 0, 0, 0, 0),
(79, '技术中心', '张洁', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(80, '技术中心', '张洁', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 40, 0, 0, 0, 0, 0),
(81, '技术中心', '张洁', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(82, '技术中心', '石磊', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(83, '技术中心', '石磊', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(84, '技术中心', '石磊', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 40, 0, 0, 0, 0, 0),
(85, '技术中心', '石磊', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(86, '技术中心', '石磊', '项目开发部', 'LC2014013', '北京工商监控预警平台一期', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(87, '技术中心', '石磊', '项目开发部', 'LC2014059', '农业大数据分析应用云平台', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(88, '技术中心', '李秀敏', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '', 0, 0, 0, 0, 0, 0),
(89, '技术中心', '李秀敏', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '', 0, 0, 0, 0, 0, 0),
(90, '技术中心', '梅雪', '项目开发部', 'LC2013001', '北京财政综合数据中心', '', 0, 0, 0, 0, 0, 0),
(91, '技术中心', '梅雪', '项目开发部', 'LC2013007', '通用数据开发平台一期', '', 0, 0, 0, 0, 0, 0),
(92, '技术中心', '梅雪', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '', 0, 0, 0, 0, 0, 0),
(93, '技术中心', '梅雪', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '', 0, 0, 0, 0, 0, 0),
(94, '技术中心', '梅雪', '项目开发部', 'LC2014006', '智库终端', '', 0, 0, 0, 0, 0, 0),
(95, '技术中心', '梅雪', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '', 0, 0, 0, 0, 0, 0),
(96, '技术中心', '梅雪', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '', 0, 0, 0, 0, 0, 0),
(97, '技术中心', '梅雪', '项目开发部', 'LC2014046', '中关村产业发展促进信息平台', '', 0, 0, 0, 0, 0, 0),
(98, '技术中心', '梅雪', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '', 0, 0, 0, 0, 0, 0),
(99, '技术中心', '梅雪', '项目开发部', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '', 0, 0, 0, 0, 0, 0),
(100, '技术中心', '梅雪', '项目开发部', 'LC2013020', '北京工商数据分析平台运维升级', '', 0, 0, 0, 0, 0, 0),
(101, '技术中心', '胆莹', '项目开发部', 'LC2013020', '北京工商数据分析平台运维升级', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(102, '技术中心', '胆莹', '项目开发部', 'LC2013012', '北京市工商行政管理局统计报表系统升级改造', '崔晓嵩', 20, 0, 0, 0, 0, 0),
(103, '技术中心', '胆莹', '项目开发部', 'LC2014021', '重庆企业信用信息分析平台', '崔晓嵩', 20, 0, 0, 0, 0, 0),
(104, '技术中心', '胆莹', '项目开发部', 'IT', '技术中心', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(105, '技术中心', '胆莹', '项目开发部', 'LC2013018', '河南省工商行政管理局分析辅助决策系统采购项目', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(106, '技术中心', '胆莹', '项目开发部', 'LC2013017', '国家工商总局数据质量校核运维', '崔晓嵩', 0, 0, 0, 0, 0, 0),
(107, '技术中心', '赵亚飞', '项目开发部', 'LC2013001', '北京财政综合数据中心', '刘通', 40, 40, 40, 40, 40, 40),
(108, '技术中心', '赵亚飞', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '刘通', 0, 0, 0, 0, 0, 0),
(109, '技术中心', '赵亚飞', '项目开发部', 'LC2013059', '国家统计局统计数据可视化展现技术开发服务', '刘通', 0, 0, 0, 0, 0, 0),
(110, '技术中心', '赵亚飞', '项目开发部', 'LC2014005', '晋城市财政局财政数据分析与应用课题', '刘通', 0, 0, 0, 0, 0, 0),
(111, '技术中心', '杨永韩', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(112, '技术中心', '杨永韩', '项目开发部', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '马亮、李丹', 20, 20, 0, 0, 0, 0),
(113, '技术中心', '杨永韩', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 20, 0, 0, 0, 0, 0),
(114, '技术中心', '杨永韩', '项目开发部', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '马亮、李丹', 20, 20, 0, 0, 0, 0),
(115, '技术中心', '杨永韩', '项目开发部', '', '重庆企业信用信息分析平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(116, '技术中心', '李兴炎', '项目开发部', 'LC2013001', '北京财政综合数据中心', '张华松', 0, 0, 0, 0, 0, 0),
(117, '技术中心', '李兴炎', '项目开发部', 'LC2014004', '河南省财政数据分析应用系统', '张华松', 0, 0, 0, 0, 0, 0),
(118, '技术中心', '李兴炎', '项目开发部', 'LC2014045', '海淀区(财政)分析应用平台一期', '张华松', 0, 0, 0, 0, 0, 0),
(119, '技术中心', '康晓晨', '项目开发部', 'LC2013001', '北京财政综合数据中心', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(120, '技术中心', '康晓晨', '项目开发部', 'LC2013020', '北京工商数据分析平台运维升级', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(121, '技术中心', '康晓晨', '项目开发部', 'LC2013012', '北京市工商行政管理局统计报表系统升级改造', '马亮、李丹', 20, 20, 0, 0, 0, 0),
(122, '技术中心', '康晓晨', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '马亮、李丹', 20, 20, 0, 0, 0, 0),
(123, '技术中心', '康晓晨', '项目开发部', 'IT', '技术中心', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(124, '技术中心', '康晓晨', '项目开发部', '', '重庆企业信用信息分析平台', '马亮、李丹', 0, 0, 0, 0, 0, 0),
(125, '技术中心', '王小燕', '项目开发部', 'LC2014054', '海淀统计局数据平台一期', '谢景帅', 0, 0, 0, 0, 0, 0),
(126, '技术中心', '王小燕', '项目开发部', 'LC2014003', '集佳平台二期（基于云计算的知识产权大数据分析平台）', '谢景帅', 0, 0, 0, 0, 0, 0),
(127, '技术中心', '王小燕', '项目开发部', 'LC2014001', '海淀园企业动态监测平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(128, '技术中心', '王小燕', '项目开发部', 'LC2014021', '重庆企业信用信息分析平台', '谢景帅', 0, 0, 0, 0, 0, 0),
(129, '技术中心', '肖登', '测试', 'LC2013013', '国家工商行政管理总局企业登记管理数据分析系统', '关宁', 0, 0, 0, 0, 0, 0),
(130, '技术中心', '肖登', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(131, '技术中心', '肖登', '测试', 'LC2013038', '河南省工商行政管理局数据分析服务', '关宁', 0, 0, 0, 0, 0, 0),
(132, '技术中心', '肖登', '测试', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '关宁', 0, 0, 0, 0, 0, 0),
(133, '技术中心', '肖登', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 40),
(134, '技术中心', '肖登', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(135, '技术中心', '肖登', '测试', 'LC2014059', '农业大数据分析应用云平台', '关宁', 0, 0, 0, 0, 0, 0),
(136, '技术中心', '肖登', '测试', 'LC2014001', '海淀园企业动态监测平台', '关宁', 0, 0, 0, 0, 0, 0),
(137, '技术中心', '肖登', '测试', 'LC2014041', '北京工商手机移动终端运营项目', '关宁', 0, 0, 0, 0, 0, 0),
(138, '技术中心', '肖登', '测试', 'LC2014004', '河南省财政数据分析应用系统', '关宁', 0, 0, 0, 0, 0, 0),
(139, '技术中心', '温迎福', '测试', 'LC2014012', 'Spirit自动化测试平台', '关宁', 0, 0, 0, 0, 0, 0),
(140, '技术中心', '温迎福', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 40),
(141, '技术中心', '温迎福', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(142, '技术中心', '温迎福', '测试', 'LC2014041', '北京工商手机移动终端运营项目', '关宁', 0, 0, 0, 0, 0, 0),
(143, '技术中心', '温迎福', '测试', 'LC2014001', '海淀园企业动态监测平台', '关宁', 0, 0, 0, 0, 0, 0),
(144, '技术中心', '温迎福', '测试', 'LC2014059', '农业大数据分析应用云平台', '关宁', 0, 0, 0, 0, 0, 0),
(145, '技术中心', '王艳维', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 40),
(146, '技术中心', '王艳维', '测试', 'LC2014004', '河南省财政数据分析应用系统', '关宁', 0, 0, 0, 0, 0, 0),
(147, '技术中心', '王艳维', '测试', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '关宁', 0, 0, 0, 0, 0, 0),
(148, '技术中心', '王艳维', '测试', 'LC2013001', '北京财政综合数据中心', '关宁', 0, 0, 0, 0, 0, 0),
(149, '技术中心', '吕雪', '测试', 'LC2014013', '北京工商监控预警平台一期', '关宁', 0, 0, 0, 0, 0, 0),
(150, '技术中心', '吕雪', '测试', 'LC2014004', '河南省财政数据分析应用系统', '关宁', 0, 0, 0, 0, 0, 0),
(151, '技术中心', '吕雪', '测试', 'LC2014041', '北京工商手机移动终端运营项目', '关宁', 0, 0, 0, 0, 0, 0),
(152, '技术中心', '吕雪', '测试', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '关宁', 0, 0, 0, 0, 0, 0),
(153, '技术中心', '吕雪', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 40),
(154, '技术中心', '赵露露', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 30, 40, 40, 40, 40, 40),
(155, '技术中心', '赵露露', '测试', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '关宁', 10, 0, 0, 0, 0, 0),
(156, '技术中心', '麻伟超', '测试', 'LC2013007', '通用数据开发平台一期', '关宁', 40, 40, 40, 40, 40, 40),
(157, '技术中心', '关宁', '配置管理', 'IT', '技术中心', '关宁', 40, 40, 40, 40, 40, 40),
(158, '技术中心', '关宁', '配置管理', 'LC2013007', '通用数据开发平台一期', '关宁', 0, 0, 0, 0, 0, 0),
(159, '技术中心', '许健', '配置管理', 'IT', '技术中心', '关宁', 20, 20, 20, 20, 20, 20),
(160, '技术中心', '许健', '配置管理', 'LC2013007', '通用数据开发平台一期', '关宁', 20, 20, 20, 20, 20, 20),
(161, '技术中心', '张昊', '配置管理', 'IT', '技术中心', '关宁', 20, 20, 20, 20, 20, 20),
(162, '技术中心', '张昊', '配置管理', 'LC2013007', '通用数据开发平台一期', '关宁', 20, 20, 20, 20, 20, 20),
(163, '技术中心', '张爱席', '文档', 'IT', '技术中心', '', 0, 0, 0, 0, 0, 0),
(164, '技术中心', '张爱席', '文档', 'LC2013001', '北京财政综合数据中心', '', 0, 0, 0, 0, 0, 0),
(165, '技术中心', '张爱席', '文档', 'LC2013007', '通用数据开发平台一期', '', 0, 0, 0, 0, 0, 0),
(166, '技术中心', '张爱席', '文档', 'LC2013016', '数据终端（“数据工商”移动决策支持系统项目合同）', '', 0, 0, 0, 0, 0, 0),
(167, '技术中心', '张爱席', '文档', 'LC2014001', '海淀园企业动态监测平台', '', 0, 0, 0, 0, 0, 0),
(168, '技术中心', '张爱席', '文档', 'LC2014004', '河南省财政数据分析应用系统', '', 0, 0, 0, 0, 0, 0),
(169, '技术中心', '张爱席', '文档', 'LC2014041', '北京工商手机移动终端运营项目', '', 0, 0, 0, 0, 0, 0),
(170, '技术中心', '张爱席', '文档', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '', 0, 0, 0, 0, 0, 0),
(171, '技术中心', '张爱席', '文档', 'LC2013002', '福建省工商行政管理数据挖掘与决策支持系统一期项目', '', 0, 0, 0, 0, 0, 0),
(172, '技术中心', '于竹', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(173, '技术中心', '于竹', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(174, '技术中心', '李会申', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(175, '技术中心', '李会申', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(176, '技术中心', '李会申', '平台', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '于竹', 0, 0, 0, 0, 0, 0),
(177, '技术中心', '李会申', '平台', 'LC2014006', '智库终端', '于竹', 0, 0, 0, 0, 0, 0),
(178, '技术中心', '李会申', '平台', 'LC2013001', '北京财政综合数据中心', '于竹', 0, 0, 0, 0, 0, 0),
(179, '技术中心', '李会申', '平台', 'LC2014054', '海淀统计局数据平台一期', '于竹', 0, 0, 0, 0, 0, 0),
(180, '技术中心', '吴磊', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(181, '技术中心', '冯德贞', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(182, '技术中心', '冯德贞', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(183, '技术中心', '冯德贞', '平台', 'LC2014054', '海淀统计局数据平台一期', '于竹', 0, 0, 0, 0, 0, 0),
(184, '技术中心', '郭庆伟', '平台', 'LC2013007', '智库终端', '于竹', 0, 0, 0, 0, 0, 0),
(185, '技术中心', '郭庆伟', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(186, '技术中心', '张彪', '平台', 'LC2014020', '上海市在外地投资企业工商注册数据采集与分析系统', '于竹', 0, 0, 0, 0, 0, 0),
(187, '技术中心', '张彪', '平台', 'IT', '技术中心', '于竹', 0, 0, 0, 0, 0, 0),
(188, '技术中心', '张彪', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(189, '技术中心', '赵墨农', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(190, '技术中心', '刘颖', '平台', 'LC2013007', '通用数据开发平台一期', '于竹', 40, 40, 40, 40, 0, 0),
(191, '技术中心', '韩冬', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 40),
(192, '技术中心', '赵子延', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 40),
(193, '技术中心', '张娇娇', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 40),
(194, '技术中心', '于鹏', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 40),
(195, '技术中心', '于鹏', '平台', 'LC2014046', '中关村产业发展促进信息平台', '韩冬', 0, 0, 0, 0, 0, 0),
(196, '技术中心', '赵召', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 40),
(197, '技术中心', '季兴华 ', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 40),
(198, '技术中心', '马小波', '平台', 'LC2013007', '通用数据开发平台一期', '韩冬', 40, 40, 40, 40, 40, 40),
(199, '技术中心', '马小波', '平台', '未立项', '企业族谱开发', '韩冬', 0, 0, 0, 0, 0, 0),
(200, '技术中心', '马小波', '平台', 'LC2014068', '“个体私营经济与就业关系”课题调查问卷软件技术开发', '韩冬', 0, 0, 0, 0, 0, 0),
(201, '技术中心', '李沛新', '平台', 'LC2014055', '数据电商网站项目', '韩冬', 40, 40, 40, 40, 40, 40);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '21585c6859d78f6313421b0defd6e29b'),
(2, 'lipeixin', '21585c6859d78f6313421b0defd6e29b'),
(8, 'handong', '21585c6859d78f6313421b0defd6e29b');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
