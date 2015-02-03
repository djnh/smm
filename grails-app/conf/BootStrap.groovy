import com.xinnuo.smm.Game
import com.xinnuo.smm.GroupSex
import com.xinnuo.smm.RaceGroup
import com.xinnuo.smm.SportsMeeting
import com.xinnuo.smm.SystemRole
import com.xinnuo.smm.SystemUser
import com.xinnuo.smm.Tryout
import com.xinnuo.smm.Type


class BootStrap {

    def init = { servletContext ->
		def game = new Game(name:"足球")
		game.save()
		
		def adminRole = new SystemRole(name:"系统管理员",privilege:"11111")
		adminRole.save()
		def meetingAdminRole = new SystemRole(name:"大会管理员",privilege:"01111")
		meetingAdminRole.save()
		def checkRole = new SystemRole(name:"径赛检录员",privilege:"00100")
		checkRole.save()
		def trackInputRole = new SystemRole(name:"径赛录入员",privilege:"00010")
		trackInputRole.save()
		def fieldInputRole = new SystemRole(name:"田赛录入员",privilege:"00001")
		fieldInputRole.save()
		def allRole = new SystemRole(name:"全能裁判员",privilege:"00111")
		allRole.save()
		
		def sportsMeeting = new SportsMeeting(name: "哈尔滨工程大学田径运动会", times: 36, entrepreneurOrg: "哈尔滨工程大学体育运动委员会", startTime: Date.parse("yyyyMMdd", "20100520"), endTime: Date.parse("yyyyMMdd", "20100521"), heldLocation: "哈尔滨工程大学北体育场")
		sportsMeeting.save()
		
		def xinnuo = new SystemUser(loginName:"xinnuo",password: "xinnuo", systemRole: adminRole)
		xinnuo.save()
		
		def ts01 = new SystemUser(loginName:"ts01",password: "1234", systemRole: fieldInputRole, sportsMeeting: sportsMeeting)
		ts01.save()
		
		def js01 = new SystemUser(loginName:"js01",password: "1234", systemRole: trackInputRole, sportsMeeting: sportsMeeting)
		js01.save()
		
		def mailGroup = new GroupSex(name: "男子组")
		mailGroup.save()
		
		def femailGroup = new GroupSex(name: "女子组")
		femailGroup.save()
		
		def 教工大众组 = new RaceGroup(name: "教工大众组",groupSex: mailGroup)
		教工大众组.save()
		def 教工青年男子组 = new RaceGroup(name: "教工青年男子组",groupSex: mailGroup)
		教工青年男子组.save()
		def 教工青年女子组 = new RaceGroup(name: "教工青年女子组",groupSex: femailGroup)
		教工青年女子组.save()
		def 教工益壮男子组 = new RaceGroup(name: "教工益壮男子组",groupSex: mailGroup)
		教工益壮男子组.save()
		def 教工益壮女子组 = new RaceGroup(name: "教工益壮女子组",groupSex: femailGroup)
		教工益壮女子组.save()
		def 教工中年男子组 = new RaceGroup(name: "教工中年男子组",groupSex: mailGroup)
		教工中年男子组.save()
		def 教工中年女子组 = new RaceGroup(name: "教工中年女子组",groupSex: femailGroup)
		教工中年女子组.save()
		def 学生本科男子组 = new RaceGroup(name: "学生本科男子组",groupSex: mailGroup)
		学生本科男子组.save()
		def 学生本科女子组 = new RaceGroup(name: "学生本科女子组",groupSex: femailGroup)
		学生本科女子组.save()
		def 学生大众组 = new RaceGroup(name: "学生大众组",groupSex: mailGroup)
		学生大众组.save()
		def 研究生男子组 = new RaceGroup(name: "研究生男子组",groupSex: mailGroup)
		研究生男子组.save()
		def 研究生女子组 = new RaceGroup(name: "研究生女子组",groupSex: femailGroup)
		研究生女子组.save()
		
		def 短跑 = new Type(name: "短跑")
		短跑.save()
		def 长跑 = new Type(name: "长跑")
		长跑.save()
		def 接力 = new Type(name: "接力")
		接力.save()
		def 远度 = new Type(name: "远度")
		远度.save()
		def 高度 = new Type(name: "高度")
		高度.save()
		def 全能 = new Type(name: "全能")
		全能.save()
		
		def 决赛 = new Tryout(name:"决赛")
		决赛.save()
		def 预决赛 = new Tryout(name:"预决赛")
		预决赛.save()
		def 预复决赛 = new Tryout(name:"预复决赛")
		预复决赛.save()
    }
    def destroy = {
    }
}
