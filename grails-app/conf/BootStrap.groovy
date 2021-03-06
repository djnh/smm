import com.xinnuo.smm.BreakRuleGrade
import com.xinnuo.smm.BreakRuleType
import com.xinnuo.smm.Game
import com.xinnuo.smm.GroupRelateRuleType
import com.xinnuo.smm.GroupSex
import com.xinnuo.smm.Item
import com.xinnuo.smm.Org
import com.xinnuo.smm.PointRule
import com.xinnuo.smm.RaceGroup
import com.xinnuo.smm.RuleTemplate
import com.xinnuo.smm.SportsMeeting
import com.xinnuo.smm.SystemRole
import com.xinnuo.smm.SystemUser
import com.xinnuo.smm.Tryout
import com.xinnuo.smm.Type

class BootStrap {

    def init = { servletContext ->
		
		/*
		def game = new Game(name:"足球")
		game.save(flush:true)
		
		def adminRole = new SystemRole(name:"系统管理员",privilege:"11111")
		adminRole.save(flush:true)
		def meetingAdminRole = new SystemRole(name:"大会管理员",privilege:"01111")
		meetingAdminRole.save(flush:true)
		def checkRole = new SystemRole(name:"径赛检录员",privilege:"00100")
		checkRole.save(flush:true)
		def trackInputRole = new SystemRole(name:"径赛录入员",privilege:"00010")
		trackInputRole.save(flush:true)
		def fieldInputRole = new SystemRole(name:"田赛录入员",privilege:"00001")
		fieldInputRole.save(flush:true)
		def allRole = new SystemRole(name:"全能裁判员",privilege:"00111")
		allRole.save(flush:true)
		
		def ruleTemplate = new RuleTemplate(name:"第36界哈尔滨工程大学田径运动会",firstPoints: 9, secondPoints: 7, thirdPoints: 6, fourthPoints: 5, fifthPoints: 4, sixthPoints: 3, seventhPoints: 2, eighthPoints: 1, allRoundPointsTimes: 0)
		ruleTemplate.save(flush:true)
		
		def sportsMeeting = new SportsMeeting(name: "哈尔滨工程大学田径运动会", times: 36, entrepreneurOrg: "哈尔滨工程大学体育运动委员会", startTime: Date.parse("yyyyMMdd", "20100520"), endTime: Date.parse("yyyyMMdd", "20100521"), heldLocation: "哈尔滨工程大学北体育场", ruleTemplate: ruleTemplate)
		sportsMeeting.save(flush:true)
		
		def xinnuo = new SystemUser(loginName:"xinnuo",password: "xinnuo", systemRole: adminRole)
		xinnuo.save(flush:true)
		
		def ts01 = new SystemUser(loginName:"ts01",password: "1234", systemRole: fieldInputRole, sportsMeeting: sportsMeeting)
		ts01.save(flush:true)
		
		def js01 = new SystemUser(loginName:"js01",password: "1234", systemRole: trackInputRole, sportsMeeting: sportsMeeting)
		js01.save(flush:true)
		
		def mailGroup = new GroupSex(name: "男子组")
		mailGroup.save(flush:true)
		
		def femailGroup = new GroupSex(name: "女子组")
		femailGroup.save(flush:true)
		
		def 教工大众组 = new RaceGroup(name: "教工大众组",groupSex: mailGroup)
		教工大众组.save(flush:true)
		def 教工青年男子组 = new RaceGroup(name: "教工青年男子组",groupSex: mailGroup)
		教工青年男子组.save(flush:true)
		def 教工青年女子组 = new RaceGroup(name: "教工青年女子组",groupSex: femailGroup)
		教工青年女子组.save(flush:true)
		def 教工益壮男子组 = new RaceGroup(name: "教工益壮男子组",groupSex: mailGroup)
		教工益壮男子组.save(flush:true)
		def 教工益壮女子组 = new RaceGroup(name: "教工益壮女子组",groupSex: femailGroup)
		教工益壮女子组.save(flush:true)
		def 教工中年男子组 = new RaceGroup(name: "教工中年男子组",groupSex: mailGroup)
		教工中年男子组.save(flush:true)
		def 教工中年女子组 = new RaceGroup(name: "教工中年女子组",groupSex: femailGroup)
		教工中年女子组.save(flush:true)
		def 学生本科男子组 = new RaceGroup(name: "学生本科男子组",groupSex: mailGroup)
		学生本科男子组.save(flush:true)
		def 学生本科女子组 = new RaceGroup(name: "学生本科女子组",groupSex: femailGroup)
		学生本科女子组.save(flush:true)
		def 学生大众组 = new RaceGroup(name: "学生大众组",groupSex: mailGroup)
		学生大众组.save(flush:true)
		def 研究生男子组 = new RaceGroup(name: "研究生男子组",groupSex: mailGroup)
		研究生男子组.save(flush:true)
		def 研究生女子组 = new RaceGroup(name: "研究生女子组",groupSex: femailGroup)
		研究生女子组.save(flush:true)
		
		def 短跑 = new Type(name: "短跑")
		短跑.save(flush:true)
		def 长跑 = new Type(name: "长跑")
		长跑.save(flush:true)
		def 接力 = new Type(name: "接力")
		接力.save(flush:true)
		def 远度 = new Type(name: "远度")
		远度.save(flush:true)
		def 高度 = new Type(name: "高度")
		高度.save(flush:true)
		def 全能 = new Type(name: "全能")
		全能.save(flush:true)
		
		def 决赛 = new Tryout(name:"决赛")
		决赛.save(flush:true)
		def 预决赛 = new Tryout(name:"预决赛")
		预决赛.save(flush:true)
		def 预复决赛 = new Tryout(name:"预复决赛")
		预复决赛.save(flush:true)
		
		def a100米 = new Item(type: 短跑, name: "100米", tryout: 预决赛, groupMemberMax: 8, groupsSimultaneity: 1, orgMax:0, raceGroups:[教工青年男子组,教工青年女子组,教工中年男子组,教工中年女子组,学生本科男子组,学生本科女子组,研究生男子组,研究生女子组])
		a100米.save(flush:true)
		def a100米定向 = new Item(type: 短跑, name: "100米定向", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:4, remark: "姓名处填写领导姓名", raceGroups:[教工大众组])
		a100米定向.save(flush:true)
		def a10人11足 = new Item(type: 接力, name: "10人11足", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[教工大众组])
		a10人11足.save(flush:true)
		def a1500米 = new Item(type: 长跑, name: "1500米", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:2, raceGroups:[学生本科男子组,学生本科女子组])
		a1500米.save(flush:true)
		def a200米 = new Item(type: 短跑, name: "200米", tryout: 预决赛, groupMemberMax: 8, groupsSimultaneity: 1, orgMax:2, raceGroups:[教工青年男子组,教工青年女子组,学生本科男子组,学生本科女子组,研究生男子组])
		a200米.save(flush:true)
		def a3000米 = new Item(type: 长跑, name: "3000米", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:2, raceGroups:[学生本科男子组])
		a3000米.save(flush:true)
		def a3000米障碍 = new Item(type: 长跑, name: "3000米障碍", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:2, raceGroups:[学生本科男子组])
		a3000米障碍.save(flush:true)
		def a4x100米接力 = new Item(type: 接力, name: "4×100米接力", tryout: 决赛, groupMemberMax: 8, groupsSimultaneity: 1, orgMax:4, raceGroups:[教工青年男子组,教工青年女子组,学生本科男子组,学生本科女子组,研究生男子组,研究生女子组])
		a4x100米接力.save(flush:true)
		def a4x400米接力 = new Item(type: 接力, name: "4×400米接力", tryout: 决赛, groupMemberMax: 8, groupsSimultaneity: 1, orgMax:4, raceGroups:[学生本科男子组,学生本科女子组])
		a4x400米接力.save(flush:true)
		def a400米 = new Item(type: 短跑, name: "400米", tryout: 决赛, groupMemberMax: 8, groupsSimultaneity: 1, orgMax:2, raceGroups:[学生本科男子组,学生本科女子组])
		a400米.save(flush:true)
		def a60米抱球跑 = new Item(type: 短跑, name: "60米抱球跑", tryout: 决赛, groupMemberMax: 8, groupsSimultaneity: 1, orgMax:2, raceGroups:[教工益壮男子组,教工益壮女子组])
		a60米抱球跑.save(flush:true)
		def a8x40米蛇形接力 = new Item(type: 接力, name: "8×40米蛇形接力", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[教工大众组])
		a8x40米蛇形接力.save(flush:true)
		def a800米 = new Item(type: 长跑, name: "800米", tryout: 决赛, groupMemberMax: 8, groupsSimultaneity: 1, orgMax:0, raceGroups:[教工青年男子组,教工中年男子组,学生本科男子组,学生本科女子组,研究生男子组,研究生女子组])
		a800米.save(flush:true)
		def 抱球障碍接力 = new Item(type: 接力, name: "抱球障碍接力", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[教工大众组])
		抱球障碍接力.save(flush:true)
		def 背向向后传球 = new Item(type: 接力, name: "背向向后传球", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[教工大众组])
		背向向后传球.save(flush:true)
		def 标枪 = new Item(type: 远度, name: "标枪", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:0, raceGroups:[教工青年男子组,教工青年女子组,教工中年男子组,学生本科男子组,学生本科女子组,研究生男子组])
		标枪.save(flush:true)
		def 传运接力 = new Item(type: 接力, name: "传运接力", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		传运接力.save(flush:true)
		def 疾风31 = new Item(type: 短跑, name: "疾风31", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1,remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		疾风31.save(flush:true)
		def 胯下传球 = new Item(type: 接力, name: "胯下传球", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[教工大众组])
		胯下传球.save(flush:true)
		def 拉绳赛跑 = new Item(type: 接力, name: "拉绳赛跑", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[教工大众组])
		拉绳赛跑.save(flush:true)
		def 陆地冰壶 = new Item(type: 接力, name: "陆地冰壶", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[教工大众组])
		陆地冰壶.save(flush:true)
		def 爬低绳 = new Item(type: 接力, name: "爬低绳", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		爬低绳.save(flush:true)
		def 千米徒步健身走 = new Item(type: 长跑, name: "千米徒步健身走", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:0, raceGroups:[教工益壮男子组, 教工益壮女子组])
		千米徒步健身走.save(flush:true)
		def 铅球 = new Item(type: 远度, name: "铅球", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:0, raceGroups:[教工青年男子组,教工青年女子组,教工益壮男子组, 教工益壮女子组,教工中年男子组,教工中年女子组,学生本科男子组,学生本科女子组,研究生男子组,研究生女子组])
		铅球.save(flush:true)
		def 赛龙舟 = new Item(type: 接力, name: "赛龙舟", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		赛龙舟.save(flush:true)
		def 三级跳远 = new Item(type: 远度, name: "三级跳远", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:2, raceGroups:[学生本科男子组])
		三级跳远.save(flush:true)
		def 手榴弹掷准 = new Item(type: 远度, name: "手榴弹掷准", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:4, raceGroups:[教工益壮男子组, 教工益壮女子组])
		手榴弹掷准.save(flush:true)
		def 双手头上拔河 = new Item(type: 接力, name: "双手头上拔河", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		双手头上拔河.save(flush:true)
		def 踢球进圈 = new Item(type: 接力, name: "踢球进圈", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		踢球进圈.save(flush:true)
		def 跳背接力 = new Item(type: 接力, name: "跳背接力", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		跳背接力.save(flush:true)
		def 跳长绳比快 = new Item(type: 接力, name: "跳长绳比快", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		跳长绳比快.save(flush:true)
		def 跳高 = new Item(type: 高度, name: "跳高", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:2, raceGroups:[教工青年男子组,教工青年女子组,学生本科男子组,学生本科女子组,研究生男子组,研究生女子组])
		跳高.save(flush:true)
		def 跳远 = new Item(type: 远度, name: "跳远", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:0, raceGroups:[教工青年男子组,教工青年女子组,教工中年男子组,教工中年女子组,学生本科男子组,学生本科女子组,研究生男子组,研究生女子组])
		跳远.save(flush:true)
		def 铁饼 = new Item(type: 远度, name: "铁饼", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:2, raceGroups:[学生本科男子组,学生本科女子组])
		铁饼.save(flush:true)
		def 圆圈接力 = new Item(type: 接力, name: "圆圈接力", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:1, remark: "姓名处填写单位表编号+项目名称", raceGroups:[学生大众组])
		圆圈接力.save(flush:true)
		def 自行车慢骑 = new Item(type: 短跑, name: "自行车慢骑", tryout: 决赛, groupMemberMax: 0, groupsSimultaneity: 1, orgMax:4, remark: "姓名处填写领导姓名", raceGroups:[教工大众组])
		自行车慢骑.save(flush:true)
		
		def 船舶工程学院 = new Org(name:"船舶工程学院",number:"01",loginName:"01",password:"01",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		船舶工程学院.save(flush:true)
		def 航天与建筑工程学院 = new Org(name:"航天与建筑工程学院",number:"02",loginName:"02",password:"02",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		航天与建筑工程学院.save(flush:true)
		def 动力与能源工程学院 = new Org(name:"动力与能源工程学院",number:"03",loginName:"03",password:"03",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		动力与能源工程学院.save(flush:true)
		def 自动化学院 = new Org(name:"动力与能源工程学院",number:"04",loginName:"04",password:"04",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		自动化学院.save(flush:true)
		def 水声工程学院 = new Org(name:"水声工程学院",number:"05",loginName:"05",password:"05",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		水声工程学院.save(flush:true)
		def 计算机科学与技术学院和软件学院 = new Org(name:"计算机科学与技术学院和软件学院",number:"06",loginName:"06",password:"06",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		计算机科学与技术学院和软件学院.save(flush:true)
		def 机电工程学院 = new Org(name:"机电工程学院",number:"07",loginName:"07",password:"07",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		机电工程学院.save(flush:true)
		def 信息与通信工程学院 = new Org(name:"信息与通信工程学院",number:"08",loginName:"08",password:"08",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		信息与通信工程学院.save(flush:true)
		def 经济管理学院 = new Org(name:"经济管理学院",number:"09",loginName:"09",password:"09",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		经济管理学院.save(flush:true)
		def 材料科学与化学工程学院 = new Org(name:"材料科学与化学工程学院",number:"10",loginName:"10",password:"10",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		材料科学与化学工程学院.save(flush:true)
		def 理学院 = new Org(name:"理学院",number:"11",loginName:"11",password:"11",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		理学院.save(flush:true)
		def 外语系 = new Org(name:"外语系",number:"12",loginName:"12",password:"12",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		外语系.save(flush:true)
		def 人文社会科学学院 = new Org(name:"人文社会科学学院",number:"13",loginName:"13",password:"13",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		人文社会科学学院.save(flush:true)
		def 国际合作学院 = new Org(name:"国际合作学院",number:"14",loginName:"14",password:"14",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		国际合作学院.save(flush:true)
		def 核学院与技术学院 = new Org(name:"核学院与技术学院",number:"15",loginName:"15",password:"15",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		核学院与技术学院.save(flush:true)
		def 国防教育学院 = new Org(name:"国防教育学院",number:"16",loginName:"16",password:"16",accessGroups:RaceGroup.getAll(),accessItems:Item.getAll())
		国防教育学院.save(flush:true)
		def 教工组 = [教工大众组,教工青年男子组,教工青年女子组,教工益壮男子组,教工益壮女子组,教工中年男子组,教工中年女子组]
		def 教工运动项目 = [a100米,a100米定向,a10人11足,a200米,a4x100米接力,a60米抱球跑,a8x40米蛇形接力,a800米,背向向后传球,标枪,胯下传球,拉绳赛跑,陆地冰壶,千米徒步健身走,铅球,手榴弹掷准,跳高,跳远,自行车慢骑]
		def 机关党委 = new Org(name:"机关党委",number:"17",loginName:"17",password:"17",accessGroups:教工组,accessItems:教工运动项目)
		机关党委.save(flush:true)
		def 后勤集团 = new Org(name:"后勤集团",number:"18",loginName:"18",password:"18",accessGroups:教工组,accessItems:教工运动项目)
		后勤集团.save(flush:true)
		def 产业集团 = new Org(name:"产业集团",number:"19",loginName:"19",password:"19",accessGroups:教工组,accessItems:教工运动项目)
		产业集团.save(flush:true)
		def 工程训练中心 = new Org(name:"工程训练中心",number:"20",loginName:"20",password:"20",accessGroups:教工组,accessItems:教工运动项目)
		工程训练中心.save(flush:true)
		def 直属单位总支 = new Org(name:"直属单位总支",number:"21",loginName:"21",password:"21",accessGroups:教工组,accessItems:教工运动项目)
		直属单位总支.save(flush:true)
		def 图书馆 = new Org(name:"图书馆",number:"22",loginName:"22",password:"22",accessGroups:教工组,accessItems:教工运动项目)
		图书馆.save(flush:true)
		
		def pointRule1 = new PointRule(lessThan:8, moreThan:1, getCount: 6, firstPoints: 9, secondPoints: 7, thirdPoints: 6, fourthPoints: 5, fifthPoints: 4, sixthPoints: 3, seventhPoints: 0, eighthPoints: 0, ruleTemplate: ruleTemplate)
		pointRule1.save(flush:true)
		def pointRule2 = new PointRule(lessThan:7, moreThan:1, getCount: 5, firstPoints: 9, secondPoints: 7, thirdPoints: 6, fourthPoints: 5, fifthPoints: 4, sixthPoints: 0, seventhPoints: 0, eighthPoints: 0, ruleTemplate: ruleTemplate)
		pointRule2.save(flush:true)
		def pointRule3 = new PointRule(lessThan:6, moreThan:1, getCount: 4, firstPoints: 9, secondPoints: 7, thirdPoints: 6, fourthPoints: 5, fifthPoints: 0, sixthPoints: 0, seventhPoints: 0, eighthPoints: 0, ruleTemplate: ruleTemplate)
		pointRule3.save(flush:true)
		def pointRule4 = new PointRule(lessThan:5, moreThan:1, getCount: 3, firstPoints: 9, secondPoints: 7, thirdPoints: 6, fourthPoints: 0, fifthPoints: 0, sixthPoints: 0, seventhPoints: 0, eighthPoints: 0, ruleTemplate: ruleTemplate)
		pointRule4.save(flush:true)
		
		def record = new BreakRuleType(name:"纪录", remark:"破")
		record.save(flush:true)
		def level = new BreakRuleType(name:"等级", remark:"达")
		level.save(flush:true)
		
		def 世界纪录 = new BreakRuleGrade(name:"世界纪录",breakRuleType: record )
		世界纪录.save(flush:true)
		def 全国纪录 = new BreakRuleGrade(name:"全国纪录",breakRuleType: record )
		全国纪录.save(flush:true)
		def 省级纪录 = new BreakRuleGrade(name:"省级纪录",breakRuleType: record )
		省级纪录.save(flush:true)
		def 市级纪录 = new BreakRuleGrade(name:"市级纪录",breakRuleType: record )
		市级纪录.save(flush:true)
		def 大会纪录 = new BreakRuleGrade(name:"大会纪录",breakRuleType: record )
		大会纪录.save(flush:true)
		
		def 国际健将等级 = new BreakRuleGrade(name:"国际健将等级",breakRuleType: level ) 
		国际健将等级.save(flush:true)
		def 健将等级 = new BreakRuleGrade(name:"健将等级",breakRuleType: level )
		健将等级.save(flush:true)
		def 一级等级 = new BreakRuleGrade(name:"一级等级",breakRuleType: level )
		一级等级.save(flush:true)
		def 二级等级 = new BreakRuleGrade(name:"二级等级",breakRuleType: level )
		二级等级.save(flush:true)
		def 三级等级 = new BreakRuleGrade(name:"三级等级",breakRuleType: level )
		三级等级.save(flush:true)
		
		def 同名次 = new GroupRelateRuleType(name:"同名次",remark:"同名次")
		同名次.save(flush:true)
		def 高低分 = new GroupRelateRuleType(name:"高低分",remark:"第一名")
		高低分.save(flush:true)
		
		*/
	}
    def destroy = {
    }
}
