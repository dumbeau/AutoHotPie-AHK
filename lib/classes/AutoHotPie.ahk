#Include %A_LineFile%\..\PieMenuClasses\
Display := new Display()
class AutoHotPie {
	__New(AHPSettings){
		ObjMerge(this,AHPSettings)
		this.functionConfig := {} ;Don't need this large object!!!	
		this.appProfiles := []
		for k, appProfile in AHPSettings.appProfiles {
			if (appProfile.enable == true)
				this.appProfiles.Push(new this.AppProfile(appProfile,this))
		}
	}
	#Include AppProfile.ahk
}