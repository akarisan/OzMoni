Dim objShell
Dim objShortCut
Dim strDesktop
Dim strFileName
Dim strTargetPath

Set objShell = WScript.CreateObject("WScript.Shell")

'---------------------------------------------------
'�K�v�ɉ����ĉ��L�ύX
'---------------------------------------------------
'�f�X�N�g�b�v���w��
strDesktop = objShell.SpecialFolders("Desktop")
'�V���[�g�J�b�g���̎w��
strFileName = strDesktop + "\OzMoni.lnk"
'���s�t�@�C���̎w��
strTargetPath = "C:\OzMoni\OzMoni.bat"

'�V���[�g�J�b�g�쐬
Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strTargetPath
objShortCut.Save

Set objShortCut = Nothing
Set objShell = Nothing