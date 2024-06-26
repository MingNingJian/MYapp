SET NAMES UTF8;
DROP DATABASE IF EXISTS iweb;
CREATE DATABASE iweb CHARSET=UTF8;
USE iweb;

/**用户表**/
CREATE TABLE user(
    uid INT PRIMARY KEY AUTO_INCREMENT, /*用户编号*/    
    uname VARCHAR(32),                  /*用户名-邮箱格式*/
    phone VARCHAR(11),                 	/*电话*/
    upwd VARCHAR(32),	               	/*密码*/
    nickname VARCHAR(32) NOT NULL DEFAULT '',	  /*昵称*/
    sex	VARCHAR(1) NOT NULL DEFAULT '',		  /*性别，M-男，F-女, DEFAULT 'M'*/
    age	VARCHAR(3) NOT NULL DEFAULT '',		  /*年龄*/
    edu	VARCHAR(16) NOT NULL DEFAULT '',	      /*学历*/
    job	VARCHAR(16) NOT NULL DEFAULT ''	      /*职业*/
);
INSERT INTO user VALUES
(1, 'admin', '13501234567', '123456','','','','',''),
(2, 'test', '13501234567', '123456','','','','','');

/*老师表*/
CREATE TABLE teacher(
	tid INT PRIMARY KEY AUTO_INCREMENT, /*讲师编号*/    
	tname VARCHAR(32),                  /*讲师名称*/
	maincourse VARCHAR(32),             /*主讲课程*/
	tpic VARCHAR(64),                   /*照片*/
	experience VARCHAR(1024),           /*电话*/
	style VARCHAR(1024)	                /*电话*/
);
INSERT INTO teacher VALUES
(1, '张艳丽', '小学数学','img-teacher/zx.jpg', '戚艳丽，毕业于中国地质大学（北京），地质工程专业。大学期间获得国家励志奖学金，国家菜百助学金。','为人谦和，做事认真负责。崇尚教育即教学相长，是心与心的交流。没有所谓的笨孩子，只有缺乏关注的孩子，主张给予每个孩子关注，引导，鼓励。大学期间获得国家励志奖学金，国家菜百助学金。为人谦和，做事认真负责。崇尚教育即教学相长，是心与心的交流。没有所谓的笨孩子。'),
(2, '韩波', '小学语文','img-teacher/zd.jpg', '汉语言文学专业，教育硕士，三年小学教学经历，先后在《新课程》《语文教学研究》发表多篇论文。','研究生期间主持参与省级、校级课题，多次获校级一等奖学金。结合教学实践形成了一套“童心释教”教学方法，用童心点燃孩子的激情，调动孩子的积极性，倾听引领，寓教于乐。研究生期间主持参与省级、校级课题，多次获校级一等奖学金。结合教学实践形成了一套“童心释教”教学方法，用童心点燃孩子的激情。'),
(3, '王秀丽', '初中物理','img-teacher/lwh.jpg', '北京航空航天大学金属材料学博士，高思中学物理部总监，五年北京初中物理教学经验，授课风趣幽默，用实验引导物理学习。','教师寄语：合抱之木，生于毫末；九层之台，起于累土；千里之行，始于足下；但行努力，莫问前程。北京航空航天大学金属材料学博士，高思中学物理部总监，五年北京初中物理教学经验，授课风趣幽默，用实验引导物理学习。教师寄语：合抱之木；但行努力，莫问前程。'),
(4, '付磊', '初中语文','img-teacher/zzl.jpg', '毕业于北京师范大学，文学硕士，北京市民办教育优秀园丁奖。','多年教学经验，熟悉小学、中学、小升初、中考等领域的语文学习，经验丰富。教学成绩斐然，累计学员1万余人，广受好评。搭建并且研发了思泉语文小学和初中9年的课程体系与全套内容，并主持产品输出与全国众多万人校合作。现为思泉语文负责人。毕业于北京师范大学，文学硕士，北京市民办教育优秀园丁奖。'),
(5, '张文东', '高中数学','img-teacher/zzl.jpg', '高思小学数学四年级教研负责人。毕业于北京大学生命科学学院，本科期间一直兼职从小学到高中的教学辅导工作，深受学生敬爱。','高中期间，曾在同一届全国联赛中获物理一等奖、数学二等奖、化学三等奖，理科知识基础扎实。王老师善于从实际出发，引导学生去独立思考，在教学过程中注重培养学生良好的学习习惯。引导学生去独立思考，在教学过程中注重培养学生良好的学习习惯。');

/*课程类别表*/
CREATE TABLE type(
    tpid INT PRIMARY KEY AUTO_INCREMENT, /*类别编号*/
    tpname VARCHAR(32)                    /*类别名称*/
);
INSERT INTO type VALUES
(1,'基础课程'),
(2,'核心课程'),
(3,'进阶课程');

/*课程表*/
CREATE TABLE course(
    cid INT PRIMARY KEY AUTO_INCREMENT, /*课程编号*/
    typeId INT,                               /*课程类别*/
    title VARCHAR(32),                   /*课程名称*/
    teacherId INT,                         /*主讲老师*/
    cLength VARCHAR(32),                 /*课时*/
    startTime VARCHAR(32),               /*开课时间*/
    address VARCHAR(32),                 /*授课地址*/
    pic VARCHAR(32),                     /*主图片*/
    price FLOAT(8,2),                    /*价格*/
    details VARCHAR(2048)                  /*详情*/
);
INSERT INTO course VALUES
(NULL,'1','01初一化学基础讲解','1','1天','每周一开课','未来教育各校区 ','img-course/01.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'2','02初一化学基础讲解','2','1天','每周一开课','未来教育各校区 ','img-course/02.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'3','03初一化学基础讲解','3','1天','每周一开课','未来教育各校区 ','img-course/03.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'1','04初一化学基础讲解','4','1天','每周一开课','未来教育各校区 ','img-course/04.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'2','05初一化学基础讲解','1','1天','每周一开课','未来教育各校区 ','img-course/05.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'3','06初一化学基础讲解','2','1天','每周一开课','未来教育各校区 ','img-course/06.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'1','07初一化学基础讲解','3','1天','每周一开课','未来教育各校区 ','img-course/06.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'2','08初一化学基础讲解','4','1天','每周一开课','未来教育各校区 ','img-course/05.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'3','09初一化学基础讲解','1','1天','每周一开课','未来教育各校区 ','img-course/04.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'1','10初一化学基础讲解','2','1天','每周一开课','未来教育各校区 ','img-course/03.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'2','11初一化学基础讲解','3','1天','每周一开课','未来教育各校区 ','img-course/02.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>'),
(NULL,'3','12初一化学基础讲解','4','1天','每周一开课','未来教育各校区 ','img-course/01.png','200.00','<p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p><p>本课程详细讲解了初一化学的各个方面，课程从生命的基础开始，依次讲解了生命系统的结构层次，组成细胞的元素、细胞中的化合物、细胞中的无机化合物和蛋白质、核酸、糖类与脂质、细胞核与细胞器	细胞核与细胞器的结构、功能、细胞膜与跨膜运输	细胞膜的流动模型、跨膜运输的种类、细胞内的能量变化、细胞呼吸的过程及场所、细胞内的能量变化、光合作用的过程及场所、细胞的生命历程、细胞的有丝分裂的过程，遗传物质的变化、细胞的分化、衰老、癌变	细胞的分化、衰老、癌变的原因及现象</p>');

/**购物车表**/
CREATE TABLE cart(
    ctid INT PRIMARY KEY AUTO_INCREMENT, /*购物车编号*/
    userId INT,                          /*用户编号*/
    courseId INT,                        /*产品编号*/
    courseCount INT                      /*数量*/
);





/*个人收藏*/
CREATE TABLE favorite(
    fid INT PRIMARY KEY AUTO_INCREMENT,/*收藏记录id*/
    userId INT,         /*用户id*/
    courseId INT,       /*课程id*/
    fTime VARCHAR(16)   /*收藏时间*/
);




/**订单表**/
CREATE TABLE orders(
    oid INT PRIMARY KEY AUTO_INCREMENT,  /*订单编号*/
    userId INT,                          /*用户编号*/
    createtime BIGINT,                  /*生成时间*/
    address VARCHAR(200),                         /*订单地址：通用字段，此项目可以不用*/
    totalprice FLOAT(8,2),               /*订单总价*/
    state int                            /*订单状态：0已提交未付款 1已付款 2已取消*/
);



/**订单详情表**/
CREATE TABLE orders_detail(
   odid INT PRIMARY KEY AUTO_INCREMENT,
   orderId INT,                          /*订单编号*/
   courseId INT,                       /*课程编号*/
   count INT ,                           /*购买数量*/
   price FLOAT(8,2)                     /*产品单价：需要记载，因为产品价格可能波动*/
);

