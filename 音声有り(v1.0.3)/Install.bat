@echo off
echo ����������������������������
echo LiveResultDisplay�uOzMoni�v
echo v1.0.1
echo Install-Setup
echo ����������������������������
ping 127.0.0.1 -n 2 > nul
echo �C���X�g�[�����J�n���܂�
path = %~dp0
copy /Y %path%\OzMoni\Style\OzMoni.xml %USERPROFILE%\Documents\Mulka2\Style\
copy /Y %path%\OzMoni\Style\OzMoni.xsl %USERPROFILE%\Documents\Mulka2\Style\
mkdir C:\OzMoni
copy /Y %path%\OzMoni\index.html C:\OzMoni\
copy /Y %path%\OzMoni\OzMoni.bat C:\OzMoni\
echo �C���X�g�[�����I�����܂���
start %path%OzMoni\shortcut.vbs
echo %path%
echo �C���X�g�[���p�b�`���I�����܂�
pause
start C:\OzMoni\OzMoni.bat