; Win8StartScreenLauncher v1 by vhanla
; written in flatassembler
; nov 2012
; http;//apps.codigobit.info

format PE GUI 4.0
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
      invoke GetShellWindow
      invoke PostMessage,eax,WM_SYSCOMMAND,SC_TASKLIST,0
      invoke ExitProcess, 0


section '.idata' import data readable writeable

library kernel, 'kernel32.dll', \
	  user, 'user32.dll' 
  import kernel, \ 
	 ExitProcess, 'ExitProcess'
  import user,\ 
	 PostMessage,'PostMessageA',\ 
	 GetShellWindow, 'GetShellWindow'


section '.rsrc' resource data readable

directory RT_ICON, icons,\
	 RT_GROUP_ICON, group_icons

resource icons,\
	 1, LANG_NEUTRAL,myicon
resource group_icons,\
	 17, LANG_NEUTRAL, main_icon

resource versions,\
	   1,LANG_NEUTRAL,version

icon main_icon,\
     myicon, 'Win8StartScreenLauncher_Icon.ico'

 versioninfo version,VOS__WINDOWS32,VFT_APP,VFT2_UNKNOWN,LANG_ENGLISH+SUBLANG_DEFAULT,0,\
	      'FileDescription','Windows 8 Start Screen Launcher',\
	      'LegalCopyright','Codigobit.info',\
	      'FileVersion','1.0',\
	      'ProductVersion','1.0',\
	      'OriginalFilename','WIN8SSL.EXE'