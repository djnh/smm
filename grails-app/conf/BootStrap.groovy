import com.xinnuo.smm.Game
import com.xinnuo.smm.GroupSex
import com.xinnuo.smm.SportsMeeting
import com.xinnuo.smm.SystemRole
import com.xinnuo.smm.SystemUser

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
    }
    def destroy = {
    }
}
