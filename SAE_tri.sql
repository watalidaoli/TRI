/* 数据库 */
SET NAMES UTF8; /*编码方式*/
DROP DATABASE IF EXISTS tri;
CREATE DATABASE tri CHARSET=UTF8;
USE tri;

/* 1.用户信息表 */
CREATE TABLE tri_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,  /*ID*/
  uname VARCHAR(32), 
  upwd VARCHAR(32), 
  phone VARCHAR(32) /*手机, 必填*/
);
/*登录测试数据*/
INSERT INTO tri_user VALUES(null, 'tom', md5('123456'), '18812345678');

/* 2.购物车cart表 */
CREATE TABLE tri_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,  /*购物车id*/
  user_id INT,  /*用户id*/
  mid INT,  /*电影id*/
  row INT,  /*排*/
  col INT /*座*/
  -- title VARCHAR(50),  /*标题*/
  -- price DECIMAL(10, 2),  /*价格*/
  -- img_url VARCHAR(50),  /*图片*/
  -- count INT,  /*数量*/
  -- status INT,  /*下单状态*/
  -- order_time DATETIME,  /*下单时间*/
  -- pay_time DATETIME /*付款时间*/
);

/* 3.电影数据表 */
CREATE TABLE tri_movies(
  mid INT PRIMARY KEY AUTO_INCREMENT,  /*电影id*/
  mtitle VARCHAR(50),  /*电影标题*/
  msubtitle VARCHAR(50),  /*副标题*/
  mdirector VARCHAR(50),  /*导演*/ 
  mperformer VARCHAR(100),  /*演员相关*/
  mmsg VARCHAR(50),  /*时长*/
  mdate VARCHAR(50),  /*上映日期*/
  mdetails VARCHAR(255),  /*电影详情*/
  mimg_url VARCHAR(100),  /*图片路径*/
  mrank DECIMAL(5, 1),  /*电影评分*/
  mprice DECIMAL(10, 2) /*电影价格*/
);

/* 4.电影院信息表 */
CREATE TABLE tri_cinema(
  cid INT PRIMARY KEY AUTO_INCREMENT,  /*电影院id*/
  cname VARCHAR(50),  /*名称*/
  caddress VARCHAR(50),  /*地址*/
  cprice DECIMAL(10, 2),  /*价格*/
  crank DECIMAL(5, 1),  /*影院评分*/
  cphone VARCHAR(50) /*影院号码*/
);

/* ------------------ */
/* 插入电影院信息 */
INSERT INTO tri_cinema VALUES(
  null, 
  "英嘉星美影城(原星美金源IMAX店)", 
  "北京市海淀区远大路1号金源时代购物中心5层东首511", 
  51.00, 9.2, "010-88878696"
);
INSERT INTO tri_cinema VALUES(
  null, 
  "北京横店电影城(王府井店)", 
  "北京市东城区王府井大街253号王府井百货(北京市百货大楼)北馆8F", 
  51.00, 8.7, "010-45678964"
);
INSERT INTO tri_cinema VALUES(
  null, 
  "星美影商城(北京分钟寺店)", 
  "北京市丰台区南三环东路成寿寺路2号新业广场2层", 
  51.00, 7.4, "010-45781236"
);
INSERT INTO tri_cinema VALUES(
  null, 
  "北京耀莱成龙影城(五棵松店)", 
  "北京市海淀区复兴路69号卓展购物中心5层东侧", 
  51.00, 6.5, "010-78542410"
);
INSERT INTO tri_cinema VALUES(
  null, 
  "北京嘉华国际影城(学清路店)", 
  "北京市海淀区学清路甲8号圣熙8号购物中心5层西侧", 
  51.00, 9.8, "010-45671594"
);
INSERT INTO tri_cinema VALUES(
  null, 
  "天幕新彩云国际影城", 
  "海淀区北太平桥西侧中央新影集团1F", 
  51.00, 7.4, "010-12524856"
);
INSERT INTO tri_cinema VALUES(
  null, 
  "北京沃美影城(常营店)", 
  "北京市朝阳区朝阳北路17号华联常营购物中心西区4层(地铁6号线常营站B出口)", 
  51.00, 8.2, "010-14112484"
);
INSERT INTO tri_cinema VALUES(
  null, 
  "首都电影院(西单店)", 
  "北京市西城区西单北大街131号西单大悦城10层", 
  51.00, 8.1, "010-88866641"
);

/* 插入电影数据 */
INSERT INTO tri_movies VALUES(
  null, 
  "蜘蛛侠：英雄远征", 
  "劫后重生 决战千里", 
  "导演：乔·沃茨", 
  "主演：汤姆·赫兰德, 杰克·吉伦哈尔, 塞缪尔·杰克逊, 赞达亚·科尔曼, 雅各·巴塔伦, 玛丽莎·托梅, 乔恩·费儒, 寇碧·史莫德斯, 马丁·斯塔尔, 纽曼·阿卡", 
  "美国 | 127分钟", 
  "2019-06-28上映", "剧情：故事全面延续“复联4”，蜘蛛侠志承钢铁侠远征欧洲，独挑大梁对抗群敌！新角色“神秘客”穿越多元宇宙霸气登场！神盾局局长尼克·弗瑞回归领军！“漫威新铁三角”组合强势出击！全新蜘蛛战衣酷炫升级！史诗对决燃爆今夏突破想象极限！", 
  "Timg/details/a2b6ffe3ff69fcb3fe48032811f4b65ffd94be16.png", 
  9.1, 
  70.00
); /*1-1*/
INSERT INTO tri_movies VALUES(
  null, 
  "千与千寻", 
  "冒险之旅 接踵而至", 
  "导演：宫崎骏", 
  "主演：柊瑠美, 周冬雨, 入野自由, 井柏然, 夏木真理, 王琳, 中村彰男, 彭昱畅, 菅原文太, 田壮壮, 内藤刚志, 泽口靖子, 我修院达也, 神木隆之介, 玉井夕海", 
  "日本 | 125分钟", 
  "2019-06-21上映", 
  "剧情：千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一份工作才能不被魔法变成别的东西。千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。为了救小白，千寻又踏上了她的冒险之旅。", 
  "Timg/details/e432f48be814a0f6691484f9b3baf23814c1276f.jpg", 
  9.5, 
  51.00
); /*1-2*/
INSERT INTO tri_movies VALUES(
  null, 
  "玩具总动员4", 
  "玩具小伙伴 翻开新篇章", 
  "导演：乔什·库雷", 
  "主演：汤姆·汉克斯, 蒂姆·艾伦, 安妮·波茨, 唐·里克斯, 爱丝黛儿·哈里斯, 布莱克·克拉克, 罗里·艾伦, 杰夫·皮金", 
  "美国 | 100分钟", 
  "2019-06-21上映", 
  "剧情：当邦妮将所有玩具带上房车家庭旅行时，胡迪（汤姆·汉克斯 配音）与伙伴们将共同踏上全新的冒险之旅，领略房间外面的世界有多广阔，甚至偶遇老朋友牧羊女（安妮·波茨 配音）。在多年的独自闯荡中，牧羊女已经变得热爱冒险，不再只是一个精致的洋娃娃。正当胡迪和牧羊女发现彼此对玩具的使命的意义大相径庭时，他们很快意识到更大的威胁即将到来。", 
  "Timg/details/15c9b124d08b82a36a510ed01fb3a733b2635e9c.jpg", 
  9.0, 
  51.00
); /*1-3*/
INSERT INTO tri_movies VALUES(
  null, 
  "扫毒2天地对决", 
  "天地对决 一触即发", 
  "导演：邱礼涛", 
  "主演：刘德华, 古天乐, 苗侨伟, 林嘉欣, 卫诗雅, 周秀娜, 张国强, 林家栋, 郑则仕, 应采儿", 
  "中国香港 | 100分钟", 
  "2019-07-05上映", 
  "剧情：毒品市场维持四分天下的格局已久，但自从地藏与墨西哥大毒枭跨境合作扩展势力，再加上一连串黑吃黑的动作，毒界变得风声鹤唳。另一方面，因儿时亲眼目睹父亲被毒品所毁而嫉毒如仇的慈善家兼金融巨子余顺天，正悬赏一亿歼灭香港最大毒贩，此举在社会上引起轩然大波。警员林正风本致力搜证拘捕地藏，毒贩却因巨额悬赏导致人身安全受威胁，他在执行保护毒贩的任务时深感无奈，但又被余顺天的出价所诱惑，陷入黑白正邪的心理挣扎。原来，余顺天和地藏有不可告人的同门关系，一场天地对决一触即发。", 
  "Timg/details/915a10fb101f038d727854a396208d63272ac9ba.jpg", 
  8.7, 
  51.00
); /*1-4*/
INSERT INTO tri_movies VALUES(
  null, 
  "八子", 
  "血肉铸山河 永雄永不朽", 
  "导演：高希希", 
  "主演：刘端端, 邵兵, 岳红, 何润东, 程媛媛", 
  "中国大陆 | 121分钟", 
  "2019-06-21上映", 
  "剧情：上世纪30年代的赣南地区，在这个被称为中国革命“红色摇篮”的地方，曾经有这样一位母亲，她将八个儿子先后送入红军，奔赴战场前线。但战火无情，兄弟中的六人陆续牺牲，只剩下大哥杨大牛和最小的孩子满崽。满崽找到了大牛的部队，成了哥哥麾下的普通一兵，经过一场场战役的淬炼，新兵满崽迅速成长为一个真正的战士。最后的战斗打响了，为了掩护大部队安全撤离，杨大牛带领弟弟满崽和全体战友浴血肉搏，直至弹尽粮绝…… 英雄的身前，是枪林弹雨的沙场，而在英雄的身后，家乡的村庄依然宁静安详，微风吹过金黄的稻浪簌簌作响，一位年迈的母亲正在村头的小路旁孤独的守望……", 
  "Timg/details/6437c90b700b6f4380be3f88a30ced8647761c82.jpg", 
  8.6, 
  51.00
); /*1-5*/
INSERT INTO tri_movies VALUES(
  null, 
  "爱宠大机密2", 
  "萌宠救世界 勇敢大不同", 
  "导演：克里斯·雷纳德", 
  "主演：帕顿·奥斯瓦尔特, 冯绍峰, 凯文·哈特, 陈佩斯, 哈里森·福特, 冯小刚, 艾瑞克·斯通斯崔特, 珍妮·斯蕾特, 郭采洁, 蒂凡尼·哈迪斯, 马丽", 
  "美国 | 86分钟", 
  "2019-07-05上映", 
  "剧情：《爱宠大机密2》将延续2016年夏天轰动一时的《爱宠大机密》的故事，讲述宠物在我们每天离家工作或上学后的生活。", 
  "Timg/details/a441e322566447294a1cfc876549b52804f70767.jpg", 
  8.6, 
  51.00
); /*1-6*/
INSERT INTO tri_movies VALUES(
  null, 
  "绝杀慕尼黑", 
  "一场比赛 极具争议", 
  "导演：安东·梅格尔季切夫", 
  "主演：弗拉基米尔·马什科夫, 谢尔盖·加尔马什, 马拉特·巴沙罗夫, 安德烈·斯莫利亚科夫", 
  "俄罗斯 | 120分钟", 
  "2019-06-13上映", 
  "剧情：电影根据体育历史中著名的传奇真实事件改编，讲述了1972年慕尼黑奥运会篮球决赛中，前苏联篮球队打败了保持了36年全胜纪录的美国队的传奇故事。在决赛结束前三秒钟，美国队以一分优势领先。美国队已经开始提前庆祝比赛的胜利了，因为他们相信比赛结果已成定局。然而，一位来自苏联的不知名篮球教练，率领着艰难、困苦、贫穷中的苏联国家队，比赛结果发生逆转，整个篮球历史也发生了改变。", 
  "Timg/details/5edbd1a20d9ec0a3c3a5c0c29d27acd687691655.jpg", 
  9.2, 
  52.00
); /*2-1*/
INSERT INTO tri_movies VALUES(
  null, 
  "九龙不败", 
  "不败警探 誓破迷案", 
  "导演：陈果", 
  "主演：张晋, 安达臣·施华, 郑嘉颖, 刘心悠, 邓丽欣, 陈钰芸, 周国贤, 吴岱融, 吴耀汉, 吴嘉龙, 张松枝, 周子扬, 廖骏雄", 
  "中国香港, 中国大陆 | 100分钟", 
  "2019-07-02上映", 
  "剧情：警探九龙(张晋 饰) ，查案方式奇异狠辣却屡建奇功，是叱咤香港警界的精英干探,  但他处事独断爆裂，又被警队视为“偏执狂人”。九龙奉命调查一桩妙龄女警连环被凶杀 案，用尽手段后不仅毫无线索,  他的警花未婚妻方宁（邓丽欣 饰）竟然也在这场抓捕行动中意外失踪。在爱与痛的边缘挣扎的九龙，突然发现女警连环遇害只是第一步，凶手还有着更加血腥的阴谋，自己和未婚妻竟然也被算计其中。此时澳门再度发生女警被杀案，这次的作案手法更加令人发指，但凶手好像故意留下了线索，是危险陷阱还是复仇曙光？九龙义无反顾出发，在好友王梦奇（刘心悠 饰）及国际拳王冼力山（Anderson The Spider Silva 饰）的协助下,  与澳门警司曹志德（郑嘉颖 饰）联手展开调查。魔高一丈，道高几何！血债血偿之前，就算流干最后一滴血，也要誓不罢休。", 
  "Timg/details/779c39a333ad76d18d4fb39a7229fe0945539490.jpg", 
  7.8, 
  37.00
); /*2-2*/
INSERT INTO tri_movies VALUES(
  null, 
  "黑衣人：全球追缉", "延续世界观 续写新故事", 
  "导演：F·加里·格雷", 
  "主演：克里斯·海姆斯沃斯, 泰莎·汤普森, 丽贝卡·弗格森, 连姆·尼森, 艾玛·汤普森, 拉菲·斯波, 库梅尔·南贾尼", 
  "美国 | 115分钟", 
  "2019-06-14上映", 
  "剧情：英国黑衣人总部王牌探员H（克里斯·海姆斯沃斯 饰）与新晋探员M（泰莎·汤普森 饰）在阻止外星团伙入侵的过程中意外铲除了隐藏在黑衣人组织中的内奸，成功拯救世界。", 
  "Timg/details/d15cd9552621f04970a8eddd18120992287a6d49.jpg", 
  7.6, 
  50.00
); /*2-3*/
INSERT INTO tri_movies VALUES(
  null, 
  "最好的我们", 
  "耿耿于怀 不如勇敢", 
  "导演：章笛沙", 
  "主演：陈飞宇, 何蓝逗, 惠英红, 汪苏泷, 董力, 周楚濋, 方文强, 蒋紫嫣, 王初伊, 高文峰, 陈帅", 
  "中国大陆 | 110分钟", 
  "2019-06-06上映", 
  "剧情：每个人的心里大概都藏着一个念念不忘的人。一个偶然被提及的名字，让女摄影师耿耿（何蓝逗 饰）内心掀起万千波澜，触动了回忆的开关，那个撩人心动的少年余淮（陈飞宇 饰）再度闯进她的思绪。那是记忆里最好的时光，“学渣”耿耿和“学霸”余淮成了同桌，还结识了简单（王初伊 饰）、贝塔（周楚濋 饰）、徐延亮（陈帅 饰）。校园里充盈着专属少男少女们的懵懂、青涩、怦然心动和勇敢，耿耿余淮也拥有了他们的约定。高考后，当耿耿满怀期待憧憬约定兑现之时，余淮却忽然消失不见了。七年后两人重逢，余淮当年未说出口的那句话、他不辞而别的秘密，耿耿能否得到解答？这段耿耿于怀的过往，让两人再度面临情感的抉择……", 
  "Timg/details/a096398c822ec0c6c8c1fc3be17d384f870b0087.jpg", 
  9.0, 
  42.00
); /*2-4*/
INSERT INTO tri_movies VALUES(
  null, 
  "碟仙", 
  "绝望妈妈 惊人举动", 
  "导演：廉涛", 
  "主演：黄奕, 范逸臣, 程小夏, 刘晨霞", 
  "中国大陆 | 83分钟", 
  "2019-06-21上映", "剧情：以网络直播为业的单亲妈妈梦瑶（黄奕 饰）带着上幼儿园的女儿雯雯住进了一栋便宜的学区房，然而，屋里的诡异氛围，与不时散发的奇怪恶臭，令梦瑶感到不安。某夜，雯雯竟然在梦游中，玩了前租客遗留的“碟仙”游戏。传说只要玩过的人，七日内必会被碟仙夺命！紧接着，屋内接连发生令人毛骨悚然的怪事。七日大限将至，眼看爱女危在旦夕，为了解开碟仙诅咒，夺回女儿，绝望的妈妈不惜做出了惊人的举动……", 
  "Timg/details/374592529070c01582fb618258b4d8e623e549c5.jpg", 
  5.4, 
  62.00
); /*2-5*/
INSERT INTO tri_movies VALUES(
  null, 
  "哥斯拉2：怪兽之王", 
  "超级生物 王者争霸", 
  "导演：迈克尔·道赫蒂", 
  "主演：凯尔·钱德勒, 维拉·法米加, 米莉·波比·布朗, 渡边谦, 章子怡, 莎莉·霍金斯, 布莱德利·惠特福德, 查尔斯·丹斯, 托马斯·米德蒂奇", 
  "美国 | 132分钟", 
  "2019-05-31上映", 
  "剧情：在这部电影中，哥斯拉将和众多大家在流行文化中所熟知的怪兽展开较量。全新故事中，研究神秘动物学的机构“帝王组织”成员将勇敢直面巨型怪兽，其中强大的哥斯拉也将和魔斯拉、拉顿和它的死对头——三头王基多拉展开激烈对抗。当这些只存在于传说里的超级生物再度崛起时，它们将展开王者争霸，人类的命运岌岌可危……", 
  "Timg/details/54aa21de56d8355582b208e2331c52d9286b1625.jpg", 
  8.6, 
  68.00
); /*2-6*/
INSERT INTO tri_movies VALUES(
  null, 
  "素人特工", 
  "废柴特工 玩转极限", 
  "导演：袁锦麟", 
  "主演：王大陆, 张榕容, 米拉·乔沃维奇, 许魏洲, 刘美彤, 肖战, 林雪, 大卫·麦金尼斯, 鲁诺, 陈国坤, 周海媚", 
  "中国大陆 | 113分钟", 
  "2019-07-12上映", 
  "剧情：极限运动达人赵风（王大陆 饰），误打误撞闯入了一场国际犯罪交易，不得不跟随国际特工（米拉·乔沃维奇 饰）一起前往布达佩斯。在这里他与废柴刑警淼淼（张榕容 饰）、民间科学家丁山（许魏洲 饰）与待业医生LV（刘美彤 饰）组成一支素人特工小队。这四个特工小白和高级国际特攻米拉一起，与恐怖分子开启了一场又惊又喜的斗争。", 
  "Timg/details/b7058df94f5b97b13f19af32d530a90a2bba64c5.jpg", 
  7.8, 
  50.00
); /*3-1*/
INSERT INTO tri_movies VALUES(
  null, 
  "妈阁是座城", 
  "赌桌对面 面临输赢", 
  "导演：李少红", 
  "主演：白百何, 黄觉, 吴刚, 刘嘉玲, 梁天, 钱小豪, 彭敬慈, 魏璐, 耿乐, 于小彤, 苏小明, 胡先煦, 曾志伟", 
  "中国大陆 | 127分钟", 
  "2019-06-14上映", 
  "剧情：女叠码仔梅晓鸥（白百何 饰）历尽沧桑，在妈阁（澳门）这座赌城中与来历迥异的赌徒打交道，有地产商段凯文（吴刚 饰）、有艺术家史奇澜（黄觉 饰），也有来自不同阶级的政商人员，连早已堕落低谷的前夫卢晋桐（耿乐 饰）都重新卷入她的人生。这些人入赌场就搏杀，出赌场就赖账，女叠码仔过的就是放债和讨债的生活。 赌博让人迷失本性，叠码仔与赌徒周旋，也等于与魔鬼打交道，一时假仁假义，一时恩断情绝，赌至终局，谁能寻回本性，谁能鸿运当头？", 
  "Timg/details/f608c34fe11861fc8ecd3013531b60dd7dccd765.jpg", 
  7.8, 
  38.00
); /*3-2*/
INSERT INTO tri_movies VALUES(
  null, 
  "命运之夜——天之杯II ：迷失之蝶", 
  "握紧双手 堵上信念", 
  "导演：须藤友德", 
  "主演：杉山纪彰, 下屋则子, 神谷浩史, 川澄绫子, 植田佳奈", 
  "日本 | 113分钟", 
  "2019-07-12上映", 
  "剧情：「圣杯战争」相隔10年再度在冬木市开战，随着被称作「圣杯战争」御三家之一的间桐家当主‧间桐脏砚（津嘉山正种 配音）的加入，战争变得错综复杂。不知名的黑影在城市内蠢蠢欲动，将御主及从者相继打倒。作为魔术师（御主）加入战争的卫宫士郎（杉山纪彰 配音）也再次受伤，并失去了他的从者Saber（川澄绫子 配音）。尽管如此，士郎为了守护间桐樱（下屋则子 配音），并没有退出战争，但担心着士郎的间桐樱却再次被魔术师的宿命所束缚…", 
  "Timg/details/db52d77ea28ea79d28faf6fc1394ba942f3f19e3.jpg", 
  9.4, 
  39.00
); /*3-3*/
INSERT INTO tri_movies VALUES(
  null, 
  "X战警：黑凤凰", 
  "浴火对决 拯救地球", 
  "导演：西蒙·金伯格", 
  "主演：苏菲·特纳, 詹姆斯·麦卡沃伊, 迈克尔·法斯宾德, 詹妮弗·劳伦斯, 杰西卡·查斯坦, 尼古拉斯·霍尔特, 亚历桑德拉·希普, 泰伊·谢里丹, 柯蒂·斯密特-麦菲, 拉马尔·约翰逊", 
  "美国 | 114分钟", 
  "2019-06-06上映", 
  "剧情：在一次危及生命的太空营救行动中，琴·葛蕾（苏菲·特纳 饰）被神秘的宇宙力量击中，成为最强大的变种人。此后琴不仅要设法掌控日益增长、极不稳定的力量，更要与自己内心的恶魔抗争，她的失控让整个X战警大家庭分崩离析，也让整个星球陷入毁灭的威胁之中……", 
  "Timg/details/060a14e4644195e4d229fea6e917542ebe789486.jpg", 
  8.5, 
  59.00
); /*3-4*/
INSERT INTO tri_movies VALUES(
  null, 
  "追龙II", 
  "众多影帝集结 演绎双雄争霸", 
  "导演：王晶, 关智耀", 
  "主演：梁家辉, 古天乐, 林家栋, 任达华, 邱意浓, 叶相明", 
  "中国大陆, 中国香港 | 103分钟", 
  "2019-06-06上映", 
  "剧情：悍匪龙志强（梁家辉 饰），在香港回归前，趁香港英政府不作为，而屡犯巨案，先后绑架富豪利家及雷家之长子，勒索超过二十亿元，事主怕被报复,  交赎款后都不敢报警。中国公安部极为关注，与香港警方合力，派香港警员何天（古天乐 饰）卧底潜入龙志强犯罪团伙，发现他正策划绑架澳门富豪贺不凡，最终陆港警察合力勇擒龙志强，救出贺不凡。", 
  "Timg/details/4d627ae00985d3e3b1aa1889b5d9b673926b2db3.jpg", 
  7.7, 
  38.00
); /*3-5*/
INSERT INTO tri_movies VALUES(
  null, 
  "猪猪侠·不可思议的世界", 
  "幻想世界 遇到英雄", 
  "导演：钟彧, 陆锦明", 
  "主演：", 
  "中国大陆 | 85分钟", 
  "2019-07-05上映", 
  "剧情：电影讲述了从小就喜爱猪猪侠的少女吉祥，由于学业的压力与父母产生矛盾，正当她伤心难过之时，吉祥房间中的一幅猪猪侠梦幻世界图，令她意外穿越到梦幻世界，在那里吉祥遇见超能力已经消失的童年英雄猪猪侠，为了送吉祥回家，猪猪侠与吉祥开始了一段啼笑皆非却又惊心动魄的冒险之旅。", 
  "Timg/details/07a90b26f7d708276145de4dc014e5a2ebf2c77f.jpg", 
  7.1, 
  39.00
); /*3-6*/
INSERT INTO tri_movies VALUES(
  null, 
  "逆流大叔", 
  "逆流而上 纵横人生", 
  "导演：陈咏燊", 
  "主演：吴镇宇, 胡定欣, 黄德斌, 潘灿良, 胡子彤", 
  "中国香港 | 93分钟", 
  "2019-06-28上映", 
  "剧情：男人，就是要逆流而上。阿龙(吴镇宇 饰)、淑仪(潘灿良 饰)、泰哥(黄德斌 饰)、威廉(胡子彤 饰)，四个高不成低不就、做事得过且过的宽频网络公司员工，见公司掀起了裁员风暴，为表对公司忠诚以「保饭碗」，误打误碰地加入了公司新成立的龙舟队！面对男人之苦，这班本来选择逃避的大叔们，坐到只许前进不许后退的龙舟之上，竟重拾了人生久违了的冲劲。一鼓作气的他们，不但参与了难度更高的长途龙舟大赛，更借着重新燃起的斗志，迈步去迎接自己人生里一道又一道的逆流…", 
  "Timg/details/f993c1890c27512fdd4acdbd3e009814fd6dcc32.jpg", 
  7.3, 
  36.00
); /*4-1*/
INSERT INTO tri_movies VALUES(
  null, 
  "监护风云", 
  "回家之路 不寒而栗", 
  "导演：泽维尔·勒格朗", 
  "主演：蕾雅·德吕盖, 德尼·梅诺谢, 托马斯·乔里亚, 马蒂尔德·奥恩维尔, 科拉莉·吕西耶", 
  "法国 | 94分钟", 
  "2019-06-21上映", 
  "剧情：当米里亚姆（蕾雅·德吕盖 饰）跟丈夫安托万·北松（德尼·梅诺谢 饰）离婚后，她希望12 岁的儿子朱利安（托马斯·吉奥利亚）能够远离拥有暴力倾向的父亲，故向法庭申请单独扶养权。然而安托万成功在庭上说服法官，法官最终判处双方拥有共同监护权。大受打击的米里亚姆除了要接受未如所愿的裁判外，还要提防前夫别有用心的父亲。面对水火不容的双亲，身处夹缝中的朱利安不得不想尽一切办法，阻止家庭危机。", 
  "Timg/details/83fe02bb8b8c5d20d9917bf0d8611677f3b761d8.jpg", 
  8.2, 
  38.90
); /*4-2*/
INSERT INTO tri_movies VALUES(
  null, 
  "周恩来回延安", 
  "不忘初心 牢记使命", 
  "导演：吴卫东, 刘劲", 
  "主演：刘劲, 唐国强, 卢奇, 黄薇", 
  "中国大陆 | 90分钟", 
  "2019-05-15上映", 
  "剧情：影片以1973年6月身患重症的周恩来总理，在特殊历史时期下肩负历史使命和老一辈革命家对老区人民的情怀回到圣地延安的历史事件为叙事中心，电影通过周恩来总理独有的视角回顾了中国革命在延安时期13年的重大历史事件，以四个时空表现了周恩来总理在延安的所见所闻、所思所感展示了中国共产党人不忘初心、砥砺前行的崇高责任感。", 
  "Timg/details/81da4ba1b61ec4400e3daec28bfdd23b8ca71fc8.jpg", 
  7.0, 
  39.00
); /*4-3*/
INSERT INTO tri_movies VALUES(
  null, 
  "机动战士高达NT", 
  "一切答案 终将揭晓", 
  "导演：吉泽俊一", 
  "主演：榎木淳弥, 村中知, 松浦爱弓, 古川慎, 山路和弘, 寺杣昌纪", 
  "日本 | 89分钟", 
  "2019-07-12上映", 
  "剧情：U. C.0097时期，“拉普拉斯事变”的纷争终结后，2架独角兽高达被秘密封印，新吉翁残党“袖章”也随之瓦解。就在人类逐渐走出战争带来的阴影之时，失踪两年的独角兽三号机“凤凰”突然现身，拥有颠覆世界秩序力量的它即刻引发了地球联邦军、吉翁袖章残党以及路欧商会三方势力的争夺狩猎，一场宇宙对决也即将拉开帷幕......", 
  "Timg/details/7c2c0941cf0c575b2ba201cc2bdb1087ef7dc3c2.jpg", 
  7.3, 
  41.00
); /*4-4*/
INSERT INTO tri_movies VALUES(
  null, 
  "大河唱", 
  "生活境遇 书写命运", 
  "导演：柯永权, 杨植淳", 
  "主演：苏阳, 马风山, 魏宗富, 刘世凯, 张进来", 
  "中国大陆 | 98分钟", 
  "2019-06-18上映", 
  "剧情：沿黄河出发，从源头无人区到入海口，历时3年，跨越七十万公里……《大河唱》纪录了一位从河边出走的当代艺术家和四位固守土地的民间艺人：说书人刘世凯、花儿歌手马风山、百年皮影班班主魏宗富、民营秦腔剧团团长张进来，和探寻用中国人自己的方式歌唱当下的艺术家苏阳。", 
  "Timg/details/6c91af0dd7c3bdb5eba1e9c8a98256f49eb12fb5.jpg", 
  6.5, 
  33.00
); /*4-5*/
INSERT INTO tri_movies VALUES(
  null, 
  "大侦探皮卡丘", 
  "精灵活现 超萌翻天", 
  "导演：罗伯·莱特曼", 
  "主演：瑞安·雷诺兹, 贾斯蒂斯·史密斯, 凯瑟琳·纽顿, 克里斯·吉尔, 苏琪·沃特豪斯, 比尔·奈伊, 瑞塔·奥拉, 渡边谦, 奥马尔·查帕罗, 乔丹·朗, 雷佳音", 
  "美国 | 104分钟", 
  "2019-05-10上映", 
  "剧情：蒂姆·古德曼（贾斯提斯·史密斯 饰） 为寻找下落不明的父亲来到莱姆市，意外与父亲的前宝可梦搭档大侦探皮卡丘相遇，并惊讶地发现自己是唯一能听懂皮卡丘说话的人类，他们决定组队踏上揭开真相的刺激冒险之路。探案过程中他们邂逅了各式各样的宝可梦，并意外发现了一个足以毁灭整个宝可梦宇宙的惊天阴谋。", 
  "Timg/details/7b9c865070840227c800cc61541d99412d395dec.jpg", 
  8.8, 
  53.00
); /*4-6*/
INSERT INTO tri_movies VALUES(
  null, 
  "学区房72小时", 
  "面临两选择 一切为孩子", 
  "导演：陈晓鸣", 
  "主演：管轩, 徐幸, 傅淼", 
  "中国大陆 | 99分钟", 
  "2019-06-28上映", 
  "剧情：某大学副教授傅重为了让女儿进入市重点小学，在72小时内出售现有房子，凑足钱款，买下对口学校的学区房。由于时间紧迫，付重不得不以200万价格降价出售，钟点工牛阿姨声称儿子小宝正急于购买婚房，拿出自己多年的积蓄，双方一拍即合，立刻签约。正在皆大欢喜的时候，傅重又接到坏消息——卖方坐地起价40万。付重正为难之际，中介来电说有客户愿以市场价250万一次性付款购买傅重的住宅，这样，所有问题便可解决…… 而这位客户，正是有求于傅重的学生家长袁主席。是坚守诚信与牛阿姨履行合约，还是为孩子的未来，毁约将住宅高价转售他人，傅重面临两难抉择……", 
  "Timg/details/8451cdf1b1dc6a06bc95ba6185427f39956363b3.jpg", 
  6.4, 
  33.00
); /*5-1*/
INSERT INTO tri_movies VALUES(
  null, 
  "潜行者", 
  "潜龙出击 步步惊心", 
  "导演：吕冠南, 谭广源", 
  "主演：伍允龙, 吴建豪, 安志杰, 冯文娟, 迟帅", 
  "中国大陆 | 90分钟", 
  "2019-06-28上映", 
  "剧情：故事开始于卧底警察潜伏黑帮，意外的坐上了黑帮老大的位置，不料被大毒枭设计一步步拖入公海的魔鬼运输船；恰逢此时，一支神秘的第三方部队正在展开他们的复仇计划，命运的纠葛从此开始。在三方力量的角逐中，激烈的搏斗、刀战、枪战、狙击战、遥控炸弹，层层升级步步惊心。在法与情，爱与恨，兄弟和女人之间，有些事情总要有人去做。", 
  "Timg/details/92b292b8402e979e10e503b2d5bbef1c7d3873cb.jpg", 
  7.3, 
  35.00
); /*5-2*/
INSERT INTO tri_movies VALUES(
  null, 
  "你咪理，我爱你！", 
  "意想不到 惊叫连连", 
  "导演：王祖蓝", 
  "主演：王祖蓝, 曾志伟, 毛舜筠, 王菀之, 郑恺, 郑秀文, 容祖儿", 
  "中国香港 | 88分钟", 
  "2019-06-28上映", 
  "剧情：自上帝造⼈以來，⼈間就誕生了千千萬萬個男⼈和女⼈的愛情故事。本片由十三個關於愛情的小故事組成，從個人、家庭、社會等不同層面出發，探討這個永恆的人生議題——愛情！", 
  "Timg/details/a9b1e704907664d818c77e75103562a8ef7f3a4b.jpg", 
  7.3, 
  35.00
); /*5-3*/
INSERT INTO tri_movies VALUES(
  null, 
  "秦明·生死语者", 
  "为生者言 为死者权", 
  "导演：李海蜀, 黄彦威", 
  "主演：严屹宽, 代斯, 耿乐, 释彦能, 郑晓宁, 杜鹃", 
  "中国大陆 | 104分钟", 
  "2019-06-14上映", 
  "剧情：被誉为“鬼手佛心”的“尸语者”秦明（严屹宽 饰）解剖过 1000 多具尸体，从未出错，因意外发现泡在福尔马林里6年的“无语体师”死于他杀，引发媒体质疑误判，被舆论推至风口浪尖之上。在尸体留下的线索指引下，秦明在实习助手嘉嘉（代斯 饰）和刑警队长林涛（耿乐 饰）的协助调查下发现了尘封 16 年的雪灾杀人案、误判 6 年的“无语体师”他杀案、悬而无果的 IT 男肺炸案背后的秘密。经历了这一系列变故的秦明最终成为了一名“为死者言，为生者权”的“生死语者”", 
  "Timg/details/22f0ad4d06af8e84d8cd175e3eddcfe51cddb184.jpg", 
  8.1, 
  39.00
); /*5-4*/
INSERT INTO tri_movies VALUES(
  null, 
  "我的青春都是你", 
  "青春都是你 毕业不分手", 
  "导演：周彤, 代梦颖", 
  "主演：宋威龙, 宋芸桦, 林妍柔, 黄俊捷, 金士杰", 
  "中国大陆, 中国台湾 | 92分钟", 
  "2019-06-21上映", 
  "剧情：周林林（宋芸桦 饰）高考发挥超常进入东方大学，与同校理科状元方予可（宋威龙 饰）一同进入了最高学府。郎有情妾无意，方予可其实从幼儿园时期就心系周林林，人生若只如初见，儿时的初遇相见便立下了日久的暗恋情愫！但万人瞩目的帅哥方予可身边有天之骄女茹庭（林妍柔 饰），从小暗恋状元对周林林看不顺眼，周林林则对方予可身边的同为校园风云人物的小西学长（黄俊捷 饰）心存爱慕，修习大学恋爱秘籍，苦练恋爱通关技巧，十八般武艺七十二变法轮番上阵！四人之间情感纠葛，在校园里上演了一幕青春爱情喜剧！", 
  "Timg/details/2e1e8c3562bdae7ff34407992691f02056c6905d.jpg", 
  7.8, 
  34.00
); /*5-5*/
INSERT INTO tri_movies VALUES(
  null, 
  "善良的天使", 
  "坚定向前 大有可为", 
  "导演：柯文思", 
  "主演：亨利·基辛格, 唐纳德·特朗普, 柯文思, 陆克文, 玛德琳·奥布莱特", 
  "美国, 中国大陆 | 88分钟", 
  "2019-07-02上映", 
  "剧情：影片以亨利·基辛格博士回忆与周恩来总理关于中美差异的对话开场，集聚了全球知名学者、政要，包括另外两位美国前国务卿：詹姆士·贝克、玛德琳·奥尔布赖特；前北约最高司令韦斯利·克拉克、澳大利亚前总理陆克文等；中国的前人大常委会副委员长、经济学家成思危、香港特别行政区前行政长官董建华、恒隆集团主席陈启宗、《超限战》作者乔良将军等。他们各自表达了对中美关系的期望、乐观的态度和谨慎的担忧，并认同增加中美之间共识和互信的深远意义。 同时，《善良的天使》还拍摄了一群为了彼此靠得更近而不断努力跨越两国之间地域和文化差异的美国人和中国人。他们中有教育工作者、企业家、农民、工人、电影大亨、小城市的市长等等。从他们的故事中我们看到中美两国在各个层次和领域之间已经存在、并且可以实现更多的相互了解和学习，来加强彼此已有的纽带，缔结新的友谊。", 
  "Timg/details/1e3baa15dc7aa817f856dda3eb62da1ea7630658.jpg", 
  7.4, 
  35.00
); /*5-6*/
INSERT INTO tri_movies VALUES(
  null, 
  "上海的女儿", 
  "历经繁华 尝尽苦涩", 
  "导演：陈苗, Hilla Medalia", 
  "主演：周采芹, 鲁肃, 吴珊卓, 温明娜, 曹可凡, 杜源", 
  "中国大陆 | 88分钟", 
  "2019-07-02上映", 
  "剧情：“人生本是戏”，艺术和生活的界限模糊了一个上海名门之后的海外闯荡，一个超逾时代的女性偶像，她就是周采芹Tsai Chin！从成为首位轰动西方的华裔邦女郎，到蜚声好莱坞的华裔女演员，她历经繁华，也尝尽苦涩。周采芹刻入骨髓里的坚毅与傲气，使得耄耋之年的她，仍在表演艺术上坦荡无畏地续写传奇……", 
  "Timg/details/7db20966e98c8fb4d6da1be4a3ee4cdce89ff996.jpg", 
  7.3, 
  37.00
); /*6-1*/
INSERT INTO tri_movies VALUES(
  null, 
  "狮子王", 
  "高度还原 致敬经典", 
  "导演：乔恩·费儒", 
  "主演：唐纳德·格洛弗, 詹姆斯·厄尔·琼斯, 塞斯·罗根, 比利·艾希纳, 切瓦特·埃加福特, 约翰·奥利弗, 阿尔法·伍达德, 碧昂丝·诺尔斯", 
  "美国 | 118分钟", 
  "2019-07-12上映", 
  "剧情：小狮子王辛巴（唐纳德·格洛弗 配音）在众多热情的朋友的陪伴下，不但经历了生命中最光荣的时刻，也遭遇了最艰难的挑战，最后终于成为了森林之王，也在周而复始生生不息的自然中体会出生命的真义。非洲大草原上一轮红日冉冉升起，为高大的乞力马扎罗山披上层金色的光纱，所有的动物涌向了同一个地方——荣耀石，兴奋地等待着一个重大消息的宣布：它们的国王木法沙将迎来自己的新生儿。这个新生儿就是小狮子辛巴，它是木法沙的法定接班人、荣耀石未来的国王。", 
  "Timg/details/3366afaad8987e259e2d3ced3d8798c204478a22.jpg", 
  9.4, 
  39.00
); /*6-2*/
INSERT INTO tri_movies VALUES(
  null, 
  "最后一刻", 
  "离奇往事 浮出水面", 
  "导演：王向力", 
  "主演：吴启华, 王一, 彭波, 雁琪, 刘俊峰", 
  "中国大陆 | 93分钟", 
  "2019-06-28上映", 
  "剧情：龙小种参加最爱你房地产公司《疯狂的房子》比赛，过五关斩六将勇夺冠军，奖励别墅一套，咸鱼终翻身，却遭三个绑架犯绑架，老板雷震宇被人设计，酒吧老板王金水遭遇活埋，而好友李大炮的女儿甜甜也突然失踪，这一切似乎都跟神秘的疯女人黄雨欣有关，三年前的离奇往事渐渐浮出水面……", 
  "Timg/details/ba802455fc4953c2dad8aa2ea4ffe11e760c0bb0.jpg", 
  6.5, 
  31.00
); /*6-3*/
INSERT INTO tri_movies VALUES(
  null, 
  "三年", 
  "精准扶贫 扫黑除恶", 
  "导演：陈江", 
  "主演：高明, 马文波, 肖聪, 宋若冰, 邹笨笨", 
  "中国大陆 | 100分钟", 
  "2019-06-18上映", 
  "剧情：影片《三年》聚焦在“精准扶贫”工作中的“扫黑除恶”，与村霸恶势展开一场正义与邪恶的较量。柯伟华（马文波饰），牛国峰（肖聪饰）各自从市县两级下派到山高路远，交通闭塞的大别山区西岭村驻村扶贫工作。在驻村帮扶三年时间里，由于村民墨守成规的思想，村霸恶痞黑势力的种种阻挠与障碍，工作陷入了艰难险阻。老党员陈书圆（高明饰）的出现让事情峰回路转。故事斗转千回，扣人心弦，耐人寻味，反映了新时代共产党人，为人民对党忠诚服务人民的宗旨。深刻领会精准扶贫思想，坚决打赢脱贫攻坚战和扫黑除恶的真实案例故事。", 
  "Timg/details/5a07814e01e5a950fbfd6f70791c8578f651119f.jpg", 
  6.5, 
  30.00
); /*6-4*/
INSERT INTO tri_movies VALUES(
  null, 
  "五月天人生无限公司", 
  "无限公司 继续营业", 
  "导演：陈奕仁", 
  "主演：陈信宏, 温尚翊, 石锦航, 蔡升晏, 刘冠佑, 黄渤, 梁家辉", 
  "中国台湾 | 112分钟", 
  "2019-05-24上映", 
  "剧情：一部电影拥有超过400万位演员，是怎样的体验？ 人生无限公司，每个参与过的人都是主演。 每个“加班夜”都如此难舍难忘， 演唱会内外，你的人生故事可有什么变与不变？ 五月天“人生无限公司”巡演， 横跨四大洲、历时一年半、上百场巡回、超过400万观众，不断刷新纪录，不断创造新的感动。 这部70亿人的自传，此刻翻越到下一章节：人生无限公司将在大银幕继续营业。", 
  "Timg/details/37380897be7a1104901be5d820ee7fd0dae1c883.jpg", 
  8.4, 
  54.80
); /*6-5*/
INSERT INTO tri_movies VALUES(
  null, 
  "真相漩涡", 
  "凶手是谁 陷入迷局", 
  "导演：西蒙·凯瑟", 
  "主演：皮尔斯·布鲁斯南, 盖·皮尔斯, 明妮·德里弗, 尼可拉·科斯特-瓦尔道, 艾玛·罗伯茨, 格雷戈·金尼尔, 亚历山德拉·西普, 杰米·肯尼迪, 克拉克·格雷格, 奥德娅·拉什", 
  "美国, 瑞典 | 100分钟", 
  "2019-06-21上映", 
  "剧情：学识与魅力并存的大学教授埃文•贝赫场（盖•皮尔斯 饰），表面家庭事业双丰收，私下与多个女大学生关系暧昧，身为哲学教授他自认为滴水不漏。直到埃文的学生乔伊斯（奥德娅•拉什 饰）的离奇失踪并死亡，警探马洛伊（皮尔斯•布鲁斯南 饰）开始调查案件的始末，种种迹象表明埃文就是凶手，但马洛伊始终找不到确凿证据。案件进入僵局时，埃文的妻子（明妮•德里弗 饰）与埃文决裂，搅乱了这场高智商的对决。当埃文被逼入绝境时，警探马洛伊找到的证据却证明埃文无罪，凶手到底是谁？看不见的真相一步步陷入漩涡迷局！", 
  "Timg/details/2b818e95aa35be23b544e662f8902e1978c83419.jpg", 
  7.5, 
  42.90
); /*6-6*/
INSERT INTO tri_movies VALUES(
  null, 
  "进京城", 
  "京剧起源 揭秘玄机", 
  "导演：胡玫", 
  "主演：马伊琍, 富大龙, 马敬涵, 王子文, 姚安濂, 焦晃, 刘佩琦", 
  "中国大陆 | 113分钟", 
  "2019-05-10上映", 
  "剧情：前途无量的天才武生演员汪长生是扬州春台班的希望之星。在乾隆皇帝派凤格格（马伊琍 饰）下江南选戏班入京之际，汪长生虽颇受格格青睐，却毅然决然和其未婚妻方春荣（王子文 饰）约定私奔。这一举动让春台班陷入了巨大危机之中，也让春台班东家江春（姚安濂 饰）蹶不振、久卧病榻。另边，名动京城的名角儿岳九，却因为同行设计陷害而被朝廷赶出京城，被迫南下逃亡扬州。本不相干的两位戏曲天才，相遇在小镇。长生路见不平拔刀相助，救下了被仇人追杀的岳九（富大龙 饰）。二人相见如故，大谈戏曲。默默看到一切的方春荣最终劝说丈夫回到了扬州。长生回到了春台班，用自己的努力，靠着格格的赏识，赢得了拯救全戏班的机会。却不料，乾隆皇帝（焦晃 饰）改变主意，招百戏入京朝圣。格格承诺的钦点机会和粮饷荡然无存，并被急召回宫。岳九出资拯救春台班，条件是入京再和汪长生共唱一曲。春台班终于得偿所愿，顺利入京。汪长生和岳九联合演绎了一出大戏献给前来巡视的乾隆。春台班和汪长生等人至此臻于化境、名垂青史。", 
  "Timg/details/657eeb2d32ce23db196719304ca99446a2f3aed9.jpg", 
  8.5, 
  41.00
); /*7-1*/
INSERT INTO tri_movies VALUES(
  null, 
  "罗马", 
  "生活在继续 希望就还在", 
  "导演：阿方索·卡隆", 
  "主演：雅利扎·阿巴里西奥, 玛丽娜·德·塔维拉, 迭戈·科蒂娜·奥特里, 卡洛斯·佩拉尔塔, 马科·格拉夫, 丹妮拉·德米萨", 
  "墨西哥, 美国 | 135分钟", 
  "2019-05-10上映", 
  "剧情：故事发生在墨西哥城的一个中产阶级社区“罗马”，年轻的女佣克里奥（雅利扎·阿巴里西奥 饰）在雇主索菲亚（玛丽娜·德·塔维拉 饰）家中工作。索菲亚的丈夫长期在外，由女佣克里奥照顾索菲的四个孩子。突如其来的两个意外，同时砸中了女佣克里奥和雇主索菲亚，两人究竟该如何面对苦涩茫然的生活？四位孩子似乎是希望所在。", 
  "Timg/details/4bf84e36cc3510b60423a019b358582dbf00137b.jpg", 
  8.8, 
  42.00
); /*7-2*/
INSERT INTO tri_movies VALUES(
  null, 
  "废柴老爸", 
  "说声爱他 再抱抱他", 
  "导演：冯超", 
  "主演：王迅, 黄灿灿, 梁超, 张伦硕, 唐奕霖", 
  "中国大陆 | 90分钟", 
  "2019-06-15上映", 
  "剧情：游戏公司设计师元大宝（王迅 饰）是一位单身父亲，正处于事业与感情的中年危机，因为忙于工作以及单亲家庭的状况，大宝与鬼马精灵且正处于叛逆期的儿子时常“擦枪走火”。一次他带着儿子元小宝（何雄飞 饰）前往城堡参加学校亲子演出的排练，他们父子竟然在众人都不知情的情况下，被神秘的魔术师用一个魔法箱互换了心智。换位后的元大宝和元小宝与学校老师、老板高大尚及投资经理安吉拉发生了一系列的误会和一系列爆笑的事件……最后，通过换位加深了与儿子相互的理解，父子间的关系也更为融洽，元大宝由“中年危机”成为了人生大赢家。", 
  "Timg/details/873f746f6210ffc3944d072cdf11cd74aaa2a1ad.jpg", 
  7.3, 
  38.00
); /*7-3*/
INSERT INTO tri_movies VALUES(
  null, 
  "港珠澳大桥", 
  "超级工程 世界第一", 
  "导演：闫东", 
  "主演：", 
  "中国大陆 | 70分钟", 
  "2019-05-01上映", 
  "剧情：作为世界最长跨海大桥，港珠澳大桥全长55公里，海中桥隧长35.578公里，历时14年，总投资1200亿元……震撼世界的数字背后，是成千上万的平民英雄。2017年3月6日，最后一节沉管即将出坞，但伶仃洋上的大雾，让大桥建设者们的心悬了起来……", 
  "Timg/details/432d77a717f03cc1f230c6eed7f94fd09b651e7a.jpg", 
  7.4, 
  49.00
); /*7-4*/
INSERT INTO tri_movies VALUES(
  null, 
  "潜艇总动员：外星宝贝计划", 
  "惊心冒险 寻找家人", 
  "导演：申宇, 张超", 
  "主演：范楚绒, 洪海天, 李晔, 贾邱, 胡谦, 谭满堂, 周南飞, 王燕华, 王晓彤, 徐慧, 时佳, 赵国卿, 严丽祯", 
  "中国大陆 | 77分钟", 
  "2019-06-01上映", 
  "剧情：在海豹镇长和企鹅教授的宣传带领下，海底社会认同了“外星人有害论”的观点。小潜艇阿力偶然遇到来地球游玩却和父母走散的小外星人Wugu，通过了解，阿力发现外星人不但不危险，还很友好。为了帮助Wugu找到父母，阿力和朋友贝贝踏上了冒险的旅程……", 
  "Timg/details/ab365882c65ec103c7fa8a1a2ade19aa63bbdf21.jpg", 
  7.0, 
  35.00
); /*7-5*/
INSERT INTO tri_movies VALUES(
  null, 
  "无所不能", 
  "无助绝望 反击复仇", 
  "导演：Sanjay Gupta", 
  "主演：赫里尼克·罗斯汉, 亚米·高塔姆, 沙棘·乔杜里, 吉里什·库卡尼, 洛尼特·罗伊", 
  "印度 | 133分钟", 
  "2019-06-05上映", 
  "剧情：盲人罗汉对生活积极向上的态度让他跟平常人没什么两样。经人介绍，他认识了独立自信的盲人女孩苏皮莉亚。本来不想结婚的苏皮莉亚在罗汉的关心下慢慢意识到了幸福是存在的，两个有缺陷的人同样可以组成完整的家庭。 本应该开始幸福婚姻的两人，不幸遭遇到无妄之灾，突如其来的重大变故让罗汉陷入深深的悲痛、无助和绝望，继而开始了“独行侠”式的反击复仇。", 
  "Timg/details/55f57cc946cf5a3982ae2bbb9e3791151042e153.jpg", 
  7.8, 
  39.00
); /*7-6*/



