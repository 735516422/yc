SET NAMES UTF8;
DROP DATABASE IF EXISTS yc;
CREATE DATABASE yc CHARSET=UTF8;
USE yc;
#创建产品
CREATE TABLE yc_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	pname VARCHAR(32)
);
INSERT INTO yc_product VALUES(1,'传统继保测试仪');
INSERT INTO yc_product VALUES(2,'光数字测试仪');
INSERT INTO yc_product VALUES(3,'手持式测试仪');
INSERT INTO yc_product VALUES(4,'合并单元测试仪');
INSERT INTO yc_product VALUES(5,'数模一体机');
#创建产品详细信息
CREATE TABLE yc_product_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	pid INT,
	dname VARCHAR(32),
	pic VARCHAR(128),
	phone VARCHAR(16),
	ability TEXT,
	art_trait TEXT,
	art_target TEXT,
	apply_scope TEXT,
	downloads TEXT,
	FOREIGN KEY(pid) REFERENCES yc_product(pid)
);
INSERT INTO yc_product_detail VALUES(1,1,'RTS-100A-66G六相继电保护测试仪'
,'img/RTS-100A-66G.jpg',13037319267,'电流电压
        提供手动调节、自动递变、任意控制多种调节方式；提供向量图、相分量、相间量、序分量多种呈现方式，自动转换；
    状态序列
        支持短路计算，提供多种状态切换方式组合；     
    定值校验
        支持零序、负序、过流/速断、距离、工频变化量等分段定值连续测试；
    差动保护
        可对变压器、母差、发电机、发变组的启动/速断电流、比例制动曲线（斜率、拐点）、谐波制动系数进行定值验证或可视化动态图形扫描； 
    谐波试验
        可叠加直流分量、2~20次谐波，支持谐波手动调节和自动递变输出测试；
    低周减载
        可对动作值/时间、df/dt滑差闭锁值、dv/dt滑差闭锁值、低电压/电流闭锁值进行测试；
    同期试验
        可对动作值/时间、导前角/时间、调压/调频脉宽、电气零点等进行测试；
    系统振荡
        可模拟旋转/摇摆振荡，可模拟加/减速失步，可模拟叠加故障进行测试；
    整组联动
        可对保护出口、重合、加速出口时间进行测试，可设置故障转换及转换时刻；
    阻抗特性
        可对各类保护厂家的阻抗边界进行可视化动态图型扫描，包括圆特性、四边形特性、平行四边形特性等；
    时间特性
        可对i-t、v-t、f-t、v*/f*-t等一般反时限、非常反时限、超反时限可视化动态图形扫描；
    故障回放
        支持对Comtrade格式录波文件进行自定义回放测试；
    铁路牵引变差动保护
        可对电气化铁路牵引变压器的的启动/速断电流、比例制动曲线（斜率、拐点）、谐波制动系数进行定值验证或可视化动态图形扫描，支持Y/△-11变压器、Y/V接线阻抗匹配平衡变压器、Y/A接线阻抗匹配平衡变压器、SCOTT接线变压器、单相V/V变压器、 三相V/V变压器、单相变压器等;',
	' 6路电压（0~125V AC）、6电流（0~35A AC）同时输出，且幅值、相位、频率完全独立调节；
    测试功能丰富，人机交互界面友好，自动生成试验报告，可导出Word保存编辑；
    提供短路故障模型计算、合闸角控制、非周期分量衰减时间常数等功能；
    提供阻抗边界搜索、反时限特性搜索、主变/母差/发电机/发变组差动比例曲线搜索、铁路牵引变差动比例曲线搜索等可视化动态图型测试功能，软件对扫描程序进行优化，耗时短，精度高；
    内置GPS模块，可实现双机同步测试，可进行光纤纵联差动保护试验；
    内嵌工控机，10.4大屏幕，多点触控；
    可外接PC操作，操作软件一致；
    散热结构设计合理，保护措施可靠完善，对过流、过温、短路等具有自保护及告警功能；',
    ' 交流电压源
          输出范围：  6×125V
          分辨率：  25μV 
          最大输出功率： 60VA/相  
          输出精度：  ±0.05%，±0.2%可选
    交流电流源
          输出范围：  6×35A（可定制0~40A）
          分辨率：  5μA
          最大输出功率： 450VA/相  
          输出精度：  ±0.05%，±0.2%可选
    直流电压源
          输出范围：  6×175V 
          分辨率：  25μV
          最大输出功率： 90W/相  
          输出精度：  ±0.05%，±0.2%可选
    直流电流源
          输出范围：  6×20A
          分辨率：  5μA
          最大输出功率： 200W/相  
          输出精度：  ±0.05%，±0.2%可选
    输出频率
          输出范围：  0~1000Hz
          分辨率：  1mHz        
          精度：   ±0.001Hz（10~65Hz）,±0.005Hz（65~450Hz），±0.01Hz（450~1000Hz）
    输出相位
          输出范围：  0~359.999°
          分辨率：  0.001°        
          输出精度：  ±0.05°（40~60Hz）
    谐波
          输出范围：  2~20次谐波及直流
          输出精度：  ±0.1%
    电流、电压同步性  ＜10μs
    大电流输出时间
          0~10A，   连续输出
          10~20A，  >60s
          20~Imax,  >15s
    同步接口
          内置GPS/北斗双模对时模块，外接GPS天线
          对时精度：  <1μs
    电以太网口
          1个，RJ-45，100/1000Mbits/s 
    开关量输入
          8路，10-250VDC或空接点，自动识别，无极性 
    开关量输出
          8路，4空接点/4快速开出
          交直流开断能力： 0.5A，250V 
          快速开出时间：  <10μs
    屏幕
          10.4’多点触控电容屏
          分辨率：1024×768  
    供电电源
          AC：220V±15%，50Hz±10Hz 
    重量
          360 ×200 ×415 （mm），15.0Kg',
	  '广泛用于变电站、发电厂、保护生产厂家、电力科研院所/院校，可对以下设备进行测试：
    测试保护设备：发电机及变压器差动、线路纵联差动、距离、零序、工频变化量距离、功率方向、电流反时限、重合闸及后加速、过激磁保护等
    测试自动装置：自动准同期、低周低压减载、备自动、快切、事故解列装置
    电力系统仿真：COMTRADE格式瞬态数据回放
    通用设备校准：电度表（0.5~0.1级，单相或三相）、变送器、同步相量测量装置、故障录波器、各类测量仪表 （V、I、f、Ø、S、P、Q）等校准',
    null);
#关于永程
CREATE TABLE yc_model(
	mid INT PRIMARY KEY AUTO_INCREMENT,
	mname VARCHAR(32)
);
#关于永程详细信息
CREATE TABLE yc_model_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	mid INT,
	text TEXT,
	FOREIGN KEY(mid) REFERENCES yc_model(mid)
);
#关于永程图片
CREATE TABLE yc_model_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	did INT,
	url VARCHAR(128),
	FOREIGN KEY(did) REFERENCES yc_model_detail(did)
);
#新闻中心
CREATE TABLE yc_news(
	nid INT PRIMARY KEY AUTO_INCREMENT,
	nname VARCHAR(32)
);
#新闻中心详细信息
CREATE TABLE yc_news_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	nid INT,
	titile VARCHAR(128),
	time BIGINT,
	stext VARCHAR(256),
	text TEXT,
	FOREIGN KEY(nid) REFERENCES yc_news(nid)
);
#新闻中心图片
CREATE TABLE yc_news_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	did INT,
	url VARCHAR(128),
	FOREIGN KEY(did) REFERENCES yc_news_detail(did)
);

#新闻中心
CREATE TABLE yc_technical(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	tname VARCHAR(32)
);
#新闻中心详细信息
CREATE TABLE yc_technical_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	tid INT,
	titile VARCHAR(128),
	time BIGINT,
	url VARCHAR(128),
	FOREIGN KEY(tid) REFERENCES yc_technical(tid)
);