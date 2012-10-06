Attribute VB_Name = "OpenFileDialog"
' OpenFileDialog.bas: Module to launch the Windows file dialog in VB6
' Copyright (c) 2008 Hugues Johnson
'
' This module is free software; you can redistribute it and/or modify
' it under the terms of the GNU General Public License version 2
' as published by the Free Software Foundation.

' This is distributed in the hope that it will be useful,
' but WITHOUT ANY WARRANTY; without even the implied warranty of
' MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
' GNU General Public License for more details.
'
' You should have received a copy of the GNU General Public License
' along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
