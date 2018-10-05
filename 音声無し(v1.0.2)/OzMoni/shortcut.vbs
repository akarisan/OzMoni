Dim objShell
Dim objShortCut
Dim strDesktop
Dim strFileName
Dim strTargetPath

Set objShell = WScript.CreateObject("WScript.Shell")

'---------------------------------------------------
'必要に応じて下記変更
'---------------------------------------------------
'デスクトップを指定
strDesktop = objShell.SpecialFolders("Desktop")
'ショートカット名の指定
strFileName = strDesktop + "\OzMoni.lnk"
'実行ファイルの指定
strTargetPath = "C:\OzMoni\OzMoni.bat"

'ショートカット作成
Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strTargetPath
objShortCut.Save

Set objShortCut = Nothing
Set objShell = Nothing