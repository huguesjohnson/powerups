VERSION 5.00
Begin VB.Form MainForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Luise"
   ClientHeight    =   4650
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12060
   Icon            =   "MainForm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   310
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   804
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "All legendary weapons collected"
      Height          =   255
      Index           =   59
      Left            =   9120
      TabIndex        =   65
      Tag             =   "E461"
      Top             =   4320
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Rulakir dead"
      Height          =   255
      Index           =   58
      Left            =   6120
      TabIndex        =   64
      Tag             =   "E460"
      Top             =   4320
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Nei Weapons"
      Height          =   255
      Index           =   57
      Left            =   3120
      TabIndex        =   63
      Tag             =   "E45F"
      Top             =   4320
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Mieu learned Grantz"
      Height          =   255
      Index           =   56
      Left            =   120
      TabIndex        =   62
      Tag             =   "E45E"
      Top             =   4320
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Siren dead"
      Height          =   255
      Index           =   55
      Left            =   9120
      TabIndex        =   61
      Tag             =   "E45D"
      Top             =   4080
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Miun dead"
      Height          =   255
      Index           =   54
      Left            =   6120
      TabIndex        =   60
      Tag             =   "E45C"
      Top             =   4080
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Dark Force free"
      Height          =   255
      Index           =   53
      Left            =   3120
      TabIndex        =   59
      Tag             =   "E45B"
      Top             =   4080
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Kara in party"
      Height          =   255
      Index           =   52
      Left            =   120
      TabIndex        =   58
      Tag             =   "E400"
      Top             =   4080
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Dahlia can be entered"
      Height          =   255
      Index           =   51
      Left            =   9120
      TabIndex        =   57
      Tag             =   "E3C8+E3C9"
      Top             =   3840
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Laya in party"
      Height          =   255
      Index           =   50
      Left            =   6120
      TabIndex        =   56
      Tag             =   "E3C7"
      Top             =   3840
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set after taking control of Nial (2)"
      Height          =   255
      Index           =   49
      Left            =   3120
      TabIndex        =   55
      Tag             =   "E3BA"
      Top             =   3840
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set after taking control of Nial (1)"
      Height          =   255
      Index           =   48
      Left            =   120
      TabIndex        =   54
      Tag             =   "E3B9"
      Top             =   3840
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set when Nial's quest begins"
      Height          =   255
      Index           =   47
      Left            =   9120
      TabIndex        =   53
      Tag             =   "E3B8"
      Top             =   3600
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Siren defeated"
      Height          =   255
      Index           =   46
      Left            =   6120
      TabIndex        =   52
      Tag             =   "E3AC"
      Top             =   3600
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Azura can be entered"
      Height          =   255
      Index           =   45
      Left            =   3120
      TabIndex        =   51
      Tag             =   "E3A8+E3A9"
      Top             =   3600
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Lyle dead"
      Height          =   255
      Index           =   44
      Left            =   120
      TabIndex        =   50
      Tag             =   "E3A2"
      Top             =   3600
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Sari in party"
      Height          =   255
      Index           =   43
      Left            =   9120
      TabIndex        =   49
      Tag             =   "E3A1"
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Thea in party"
      Height          =   255
      Index           =   42
      Left            =   6120
      TabIndex        =   48
      Tag             =   "E3A0"
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Lensol gate opened"
      Height          =   255
      Index           =   41
      Left            =   3120
      TabIndex        =   47
      Tag             =   "E39D+E39E+E39F"
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Cille attacked"
      Height          =   255
      Index           =   40
      Left            =   120
      TabIndex        =   46
      Tag             =   "E39C"
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Shusoran attacked"
      Height          =   255
      Index           =   39
      Left            =   9120
      TabIndex        =   45
      Tag             =   "E39B"
      Top             =   3120
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set after taking control of Ayn (2)"
      Height          =   255
      Index           =   38
      Left            =   6120
      TabIndex        =   44
      Tag             =   "E39A"
      Top             =   3120
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set after taking control of Ayn (1)"
      Height          =   255
      Index           =   37
      Left            =   3120
      TabIndex        =   43
      Tag             =   "E399"
      Top             =   3120
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set at beginning of Ayn's quest"
      Height          =   255
      Index           =   36
      Left            =   120
      TabIndex        =   42
      Tag             =   "E398"
      Top             =   3120
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "E397 = ????"
      Height          =   255
      Index           =   35
      Left            =   9120
      TabIndex        =   41
      Tag             =   "E397"
      Top             =   2880
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "E396 = ????"
      Height          =   255
      Index           =   34
      Left            =   6120
      TabIndex        =   40
      Tag             =   "E396"
      Top             =   2880
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "E395 = ????"
      Height          =   255
      Index           =   33
      Left            =   3120
      TabIndex        =   39
      Tag             =   "E395"
      Top             =   2880
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "E394 = ????"
      Height          =   255
      Index           =   32
      Left            =   120
      TabIndex        =   38
      Tag             =   "E394"
      Top             =   2880
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "E393 = ????"
      Height          =   255
      Index           =   31
      Left            =   9120
      TabIndex        =   37
      Tag             =   "E393"
      Top             =   2640
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "E392 = ????"
      Height          =   255
      Index           =   30
      Left            =   6120
      TabIndex        =   36
      Tag             =   "E392"
      Top             =   2640
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "E391 = ????"
      Height          =   255
      Index           =   29
      Left            =   3120
      TabIndex        =   35
      Tag             =   "E391"
      Top             =   2640
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set at beginning of 2nd generation"
      Height          =   255
      Index           =   28
      Left            =   120
      TabIndex        =   34
      Tag             =   "E390"
      Top             =   2640
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Selected Lena to marry"
      Height          =   255
      Index           =   27
      Left            =   9120
      TabIndex        =   33
      Tag             =   "E38E"
      Top             =   2400
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Selected Maia to marry"
      Height          =   255
      Index           =   26
      Left            =   6120
      TabIndex        =   32
      Tag             =   "E38D"
      Top             =   2400
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "King of Cille defeated"
      Height          =   255
      Index           =   25
      Left            =   3120
      TabIndex        =   31
      Tag             =   "E38C"
      Top             =   2400
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Moons moved"
      Height          =   255
      Index           =   24
      Left            =   120
      TabIndex        =   30
      Tag             =   "E38B"
      Top             =   2400
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Lena joins party"
      Height          =   255
      Index           =   23
      Left            =   9120
      TabIndex        =   29
      Tag             =   "E38A"
      Top             =   2160
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Weather satellite repaired"
      Height          =   255
      Index           =   22
      Left            =   6120
      TabIndex        =   28
      Tag             =   "E388"
      Top             =   2160
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Lyle joins party in Weather Station"
      Height          =   255
      Index           =   21
      Left            =   3120
      TabIndex        =   27
      Tag             =   "E387"
      Top             =   2160
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Wren joins party"
      Height          =   255
      Index           =   20
      Left            =   120
      TabIndex        =   26
      Tag             =   "E386"
      Top             =   2160
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "'The one you seek abides...'"
      Height          =   255
      Index           =   19
      Left            =   9120
      TabIndex        =   25
      Tag             =   "E385"
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "After talking to Lyle in cave"
      Height          =   255
      Index           =   18
      Left            =   6120
      TabIndex        =   24
      Tag             =   "E384"
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Can use Yaata boat"
      Height          =   255
      Index           =   17
      Left            =   3120
      TabIndex        =   23
      Tag             =   "E382"
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Mieu joins party"
      Height          =   255
      Index           =   16
      Left            =   120
      TabIndex        =   22
      Tag             =   "E381"
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "'Layan woman who never blinks'"
      Height          =   255
      Index           =   15
      Left            =   9120
      TabIndex        =   21
      Tag             =   "E380"
      Top             =   1680
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Shopkeepers in Landen tech shop"
      Height          =   255
      Index           =   14
      Left            =   6120
      TabIndex        =   20
      Tag             =   "E37F"
      Top             =   1680
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "After talking to Lena in dungeon (2)"
      Height          =   255
      Index           =   13
      Left            =   3120
      TabIndex        =   19
      Tag             =   "E37E"
      Top             =   1680
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "After talking to Lena in dungeon (1)"
      Height          =   255
      Index           =   12
      Left            =   120
      TabIndex        =   18
      Tag             =   "E37D"
      Top             =   1680
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Rhys put in the dungeon"
      Height          =   255
      Index           =   11
      Left            =   9120
      TabIndex        =   17
      Tag             =   "E37C"
      Top             =   1440
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set after dragon disappears"
      Height          =   255
      Index           =   10
      Left            =   6120
      TabIndex        =   16
      Tag             =   "E37B"
      Top             =   1440
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Before Rhys enters dungeon"
      Height          =   255
      Index           =   9
      Left            =   3120
      TabIndex        =   15
      Tag             =   "E37A"
      Top             =   1440
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Set at beginning of Rhys' quest"
      Height          =   255
      Index           =   8
      Left            =   120
      TabIndex        =   14
      Tag             =   "E378"
      Top             =   1440
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Mystery Star active"
      Height          =   255
      Index           =   7
      Left            =   9120
      TabIndex        =   13
      Tag             =   "E175"
      Top             =   1200
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Twin's Ruby active"
      Height          =   255
      Index           =   6
      Left            =   6120
      TabIndex        =   12
      Tag             =   "E174"
      Top             =   1200
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "After talking to Siren on Sage Isle"
      Height          =   255
      Index           =   5
      Left            =   3120
      TabIndex        =   11
      Tag             =   "E171"
      Top             =   1200
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "After Miun dies,before chest opened"
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   10
      Tag             =   "E16F"
      Top             =   1200
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Aero parts active"
      Height          =   255
      Index           =   3
      Left            =   9120
      TabIndex        =   9
      Tag             =   "E15A"
      Top             =   960
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Aqua parts active"
      Height          =   255
      Index           =   2
      Left            =   6120
      TabIndex        =   8
      Tag             =   "E146"
      Top             =   960
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Laya's pendant active"
      Height          =   255
      Index           =   1
      Left            =   3120
      TabIndex        =   7
      Tag             =   "E144"
      Top             =   960
      Width           =   2895
   End
   Begin VB.CheckBox CheckboxEvent 
      Caption         =   "Sapphire can be used"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   6
      Tag             =   "E11B"
      Top             =   960
      Width           =   2895
   End
   Begin VB.CommandButton CommandQuit 
      Caption         =   "Quit Without Saving"
      Enabled         =   0   'False
      Height          =   300
      Left            =   9960
      TabIndex        =   2
      Top             =   120
      Width           =   2055
   End
   Begin VB.CommandButton CommandSaveAndQuit 
      Caption         =   "Save Changes and Quit"
      Enabled         =   0   'False
      Height          =   300
      Left            =   7800
      TabIndex        =   1
      Top             =   120
      Width           =   2055
   End
   Begin VB.TextBox TextSaveStateFile 
      BackColor       =   &H80000011&
      Height          =   300
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   3
      Text            =   "<click browse button to select a file>"
      Top             =   120
      Width           =   4095
   End
   Begin VB.CommandButton ButtonBrowse 
      Caption         =   "Browse.."
      Height          =   300
      Left            =   5520
      TabIndex        =   0
      Top             =   120
      Width           =   855
   End
   Begin VB.Label LabelGameEvents 
      Caption         =   "Game Events"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   600
      Width           =   1815
   End
   Begin VB.Label LabelSaveStateFile 
      Caption         =   "Save State File:"
      Height          =   225
      Left            =   120
      TabIndex        =   4
      Top             =   135
      Width           =   1215
   End
   Begin VB.Line Line1 
      X1              =   8
      X2              =   800
      Y1              =   32
      Y2              =   32
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Luise: Save state event editor for Phantasy Star III
' Copyright (c) 2009-2018 Hugues Johnson
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

Dim promptSave As Boolean
Private Sub ReadStuff()
    Dim fp As Integer
    Dim b As Byte
    Dim cb As Control
    Dim ctrl As Control
    Dim address As Long
        
    On Error GoTo ErrorHandler
        
    ' open the file
    fp = FreeFile
    Open TextSaveStateFile.Text For Binary As #fp
    
    ' loop through each checkbox
    For Each cb In Me.Controls
        If (TypeOf cb Is CheckBox) Then
            address = HexStringToInt(Left(cb.Tag, 4)) + 1
            Get #fp, address, b
            If (b = 0) Then
                cb.Value = vbUnchecked
            Else
                cb.Value = vbChecked
            End If
        End If
    Next
    
    ' close
    Close fp
    
    Me.CommandQuit.Enabled = True
    Me.CommandSaveAndQuit.Enabled = True

Exit Sub

ErrorHandler:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description

End Sub
    
Private Sub ButtonBrowse_Click()
    Dim filter As String
    Dim filePath As String
        
    On Error GoTo ErrorHandler
        
    filter = "Gens/Genecyst Save State Files (*.gs*)" & Chr(0) & "*.gs*" & Chr(0)
    filePath = ShowFileOpenDialog(filter, App.Path)
    If (Len(filePath) > 0) Then
        Screen.MousePointer = vbHourglass
        TextSaveStateFile.Text = filePath
        ' read stuff
        ReadStuff
        ' everything's fine, enable the save button
        Screen.MousePointer = vbDefault
    End If

Exit Sub

ErrorHandler:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description
    
End Sub

Private Sub CommandQuit_Click()
    Dim result As VbMsgBoxResult
    
    result = MsgBox("Seriously, this will exit without saving." & vbNewLine & vbNewLine & "Click OK to continue exiting without saving or the other one to cancel.", vbOKCancel, "Quit?")
    
    If result = vbOK Then
        promptSave = False
        Unload Me
    End If

End Sub

Private Sub CommandSaveAndQuit_Click()

    SaveChanges
    promptSave = False
    Unload Me

End Sub

Private Sub Form_Load()

    promptSave = True

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim result As VbMsgBoxResult
    
    If (promptSave = True) Then
        If Not (Me.TextSaveStateFile.Text = "<click browse button to select a file>") Then
            result = MsgBox("Do you want to save changes?", vbYesNo, "Save Changes?")
            If result = vbYes Then
                SaveChanges
            End If
        End If
    End If

End Sub

Private Sub SaveChanges()
    Dim fp As Integer
    Dim b As Byte
    Dim cb As Control
    Dim ctrl As Control
    Dim address As Long
    Dim tags() As String
    Dim index As Integer

    On Error GoTo ErrorHandler
        
    ' open the file
    fp = FreeFile
    Open TextSaveStateFile.Text For Binary As #fp
    
    ' loop through each checkbox
    For Each cb In Me.Controls
        If (TypeOf cb Is CheckBox) Then
            tags = Split(cb.Tag, "+")
            For index = 0 To UBound(tags)
                address = HexStringToInt(tags(index)) + 1
                If (cb.Value = vbChecked) Then
                    b = CByte(255)
                Else
                    b = CByte(0)
                End If
                Put #fp, address, b
            Next
        End If
    Next
    
    ' close
    Close fp
    
Exit Sub

ErrorHandler:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description

End Sub

Private Function HexStringToInt(hexString As String) As Long
    
    HexStringToInt = Val("&H" & hexString & "&")

End Function
