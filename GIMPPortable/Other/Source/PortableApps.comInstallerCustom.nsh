!macro CustomCodePreInstall
	${If} ${FileExists} "$INSTDIR\App\AppInfo\appinfo.ini"
		ReadINIStr $0 "$INSTDIR\App\AppInfo\appinfo.ini" "Version" "PackageVersion"
		${VersionCompare} $0 "2.10.0.2" $R0
		${If} $R0 == 2
			Rename "$INSTDIR\App\gimp\lib\gimp\2.0\plug-ins" "$INSTDIR\Data\plug-ins-pre-2.10"
			RMDir /r "$INSTDIR\App\gimp"
		${EndIf}
	${EndIf}
!macroend
