!macro CustomCodePreInstall
	Delete "$INSTDIR\Data\settings\sessionrc-backupbeforepslayout"
	Rename "$INSTDIR\Data\settings\sessionrc" "$INSTDIR\Data\settings\sessionrc-backupbeforepslayout"
!macroend
