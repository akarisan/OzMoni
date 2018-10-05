@echo off
echo ＊＊＊＊＊＊＊＊＊＊＊＊＊＊
echo LiveResultDisplay「OzMoni」
echo v1.0.1
echo Install-Setup
echo ＊＊＊＊＊＊＊＊＊＊＊＊＊＊
ping 127.0.0.1 -n 2 > nul
echo インストールを開始します
path = %~dp0
copy /Y %path%\OzMoni\Style\OzMoni.xml %USERPROFILE%\Documents\Mulka2\Style\
copy /Y %path%\OzMoni\Style\OzMoni.xsl %USERPROFILE%\Documents\Mulka2\Style\
mkdir C:\OzMoni
copy /Y %path%\OzMoni\index.html C:\OzMoni\
copy /Y %path%\OzMoni\OzMoni.bat C:\OzMoni\
echo インストールが終了しました
start %path%OzMoni\shortcut.vbs
echo %path%
echo インストールパッチを終了します
pause
start C:\OzMoni\OzMoni.bat