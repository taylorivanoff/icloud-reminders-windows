!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Reminders" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-reminders" "" "URL:iCloud Reminders"
  WriteRegStr HKCU "Software\Classes\icloud-reminders" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-reminders\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Reminders"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-reminders"
!macroend
