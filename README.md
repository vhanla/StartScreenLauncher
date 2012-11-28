StartScreenLauncher
===================

Start Screen Launcher v1.0
This is a simple assembly code that will launch Windows 8 Start Screen (StartMenu on previous Windows versions).

It might be useful for users who never uses Winkey and still likes the new StartScreen.

![picture](http://i.imgur.com/MqLEs.jpg)

It uses WinAPI instead of using keyboard sends (WinKey).

This is the only important piece of code using WinAPI.

    PostMessage(GetShellWindow,WM_SYSCOMMAND,SC_TASKLIST,0)

----
- Written by [vhanla](http://vhanla.deviantart.com) - More apps ? [codigobit](http://apps.codigobit.info)
- Source Code: https://github.com/vhanla/StartScreenLauncher

Under Creative Commons License CC BY

![CC BY](http://i.creativecommons.org/l/by/3.0/88x31.png) [Legal Code](http://creativecommons.org/licenses/by/3.0/legalcode)

