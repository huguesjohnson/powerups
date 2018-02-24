Attribute VB_Name = "OpenFileDialog"
' OpenFileDialog.bas: Module to launch the Windows file dialog in VB6
' Copyright (c) 2008-2018 Hugues Johnson
'
'Permission is hereby granted, free of charge, to any person obtaining a copy of
'this software and associated documentation files (the "Software"), to deal in 
'the Software without restriction, including without limitation the rights to 
'use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies 
'of the Software, and to permit persons to whom the Software is furnished to 
'do so, subject to the following conditions:
'
'The above copyright notice and this permission notice shall be included in 
'all copies or substantial portions of the Software.
'
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
'EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
'MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
'IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
'DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
'TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
'OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Option Explicit

Public Declare Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (pOpenfilename As OPENFILENAME) As Long

Public Type OPENFILENAME
    lStructSize As Long
    hwndOwner As Long
    hInstance As Long
    lpstrFilter As String
    lpstrCustomFilter As String
    nMaxCustFilter As Long
    nFilterIndex As Long
    lpstrFile As String
    nMaxFile As Long
    lpstrFileTitle As String
    nMaxFileTitle As Long
    lpstrInitialDir As String
    lpstrTitle As String
    flags As Long
    nFileOffset As Integer
    nFileExtension As Integer
    lpstrDefExt As String
    lCustData As Long
    lpfnHook As Long
    lpTemplateName As String
End Type

Const OFN_HIDEREADONLY = &H4
Public Function ShowFileOpenDialog(filter As String, initialDirectory As String)
    Dim OpenFile As OPENFILENAME
    Dim lReturn As Long

    OpenFile.lpstrFilter = filter
    OpenFile.lStructSize = Len(OpenFile)
    OpenFile.nFilterIndex = 1
    OpenFile.lpstrFile = String(255, 0)
    OpenFile.nMaxFile = Len(OpenFile.lpstrFile) - 1
    OpenFile.lpstrFileTitle = OpenFile.lpstrFile
    OpenFile.nMaxFileTitle = OpenFile.nMaxFile
    OpenFile.lpstrInitialDir = initialDirectory
    OpenFile.lpstrTitle = "Open File"
    OpenFile.flags = OFN_HIDEREADONLY

    lReturn = GetOpenFileName(OpenFile)
    If (lReturn < 1) Then
        ShowFileOpenDialog = ""
    Else
        ShowFileOpenDialog = Trim$(OpenFile.lpstrFile)
    End If

End Function
