; Startup + icloud-reminders:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Reminders" '"$INSTDIR\iCloud Reminders.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-reminders" "" "URL:iCloud Reminders"
  WriteRegStr HKCU "Software\Classes\icloud-reminders" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-reminders\shell\open\command" "" '"$INSTDIR\iCloud Reminders.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Reminders"
  DeleteRegKey HKCU "Software\Classes\icloud-reminders"
!macroend
