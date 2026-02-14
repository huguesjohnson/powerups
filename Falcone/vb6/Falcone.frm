VERSION 5.00
Begin VB.Form MainForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Falcone"
   ClientHeight    =   7935
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6510
   Icon            =   "Falcone.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7935
   ScaleWidth      =   6510
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton ButtonSave 
      Caption         =   "Save"
      Enabled         =   0   'False
      Height          =   495
      Left            =   4920
      TabIndex        =   68
      Top             =   7320
      Width           =   1455
   End
   Begin VB.ComboBox ComboBoxItem24 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   66
      Top             =   6840
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem23 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   64
      Top             =   6840
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem22 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   62
      Top             =   6480
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem21 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   60
      Top             =   6480
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem20 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   58
      Top             =   6120
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem19 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   56
      Top             =   6120
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem18 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   54
      Top             =   5760
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem17 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   52
      Top             =   5760
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem16 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   50
      Top             =   5400
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem15 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   48
      Top             =   5400
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem14 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   46
      Top             =   5040
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem13 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   44
      Top             =   5040
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem12 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   42
      Top             =   4680
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem11 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   40
      Top             =   4680
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem10 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   38
      Top             =   4320
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem9 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   36
      Top             =   4320
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem8 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   34
      Top             =   3960
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem7 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   32
      Top             =   3960
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem6 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   30
      Top             =   3600
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem5 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   28
      Top             =   3600
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem4 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   26
      Top             =   3240
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem3 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   24
      Top             =   3240
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem2 
      Height          =   315
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   22
      Top             =   2880
      Width           =   2295
   End
   Begin VB.ComboBox ComboBoxItem1 
      Height          =   315
      Left            =   840
      Style           =   2  'Dropdown List
      TabIndex        =   21
      Top             =   2880
      Width           =   2295
   End
   Begin VB.TextBox TextBoxCharacter4MaxHP 
      Height          =   285
      Left            =   5640
      MaxLength       =   3
      TabIndex        =   10
      Top             =   1800
      Width           =   735
   End
   Begin VB.TextBox TextBoxCharacter4HP 
      Height          =   285
      Left            =   2400
      MaxLength       =   3
      TabIndex        =   9
      Top             =   1800
      Width           =   735
   End
   Begin VB.TextBox TextBoxCharacter3MaxHP 
      Height          =   285
      Left            =   5640
      MaxLength       =   3
      TabIndex        =   8
      Top             =   1440
      Width           =   735
   End
   Begin VB.TextBox TextBoxCharacter1HP 
      Height          =   285
      Left            =   2400
      MaxLength       =   3
      TabIndex        =   3
      Top             =   720
      Width           =   735
   End
   Begin VB.TextBox TextBoxCharacter3HP 
      Height          =   285
      Left            =   2400
      MaxLength       =   3
      TabIndex        =   7
      Top             =   1440
      Width           =   735
   End
   Begin VB.TextBox TextBoxCharacter2MaxHP 
      Height          =   285
      Left            =   5640
      MaxLength       =   3
      TabIndex        =   6
      Top             =   1080
      Width           =   735
   End
   Begin VB.TextBox TextBoxCharacter2HP 
      Height          =   285
      Left            =   2400
      MaxLength       =   3
      TabIndex        =   5
      Top             =   1080
      Width           =   735
   End
   Begin VB.TextBox TextBoxCharacter1MaxHP 
      Height          =   285
      Left            =   5640
      MaxLength       =   3
      TabIndex        =   4
      Top             =   720
      Width           =   735
   End
   Begin VB.CommandButton ButtonBrowse 
      Caption         =   "Browse.."
      Height          =   300
      Left            =   5520
      TabIndex        =   2
      Top             =   240
      Width           =   855
   End
   Begin VB.TextBox TextSaveStateFile 
      BackColor       =   &H80000011&
      Height          =   300
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   1
      Text            =   "<click browse button to select a file>"
      Top             =   240
      Width           =   4215
   End
   Begin VB.Label LabelItem24 
      Caption         =   "Item 24:"
      Height          =   255
      Left            =   3360
      TabIndex        =   67
      Top             =   6885
      Width           =   615
   End
   Begin VB.Label LabelItem23 
      Caption         =   "Item 23:"
      Height          =   255
      Left            =   120
      TabIndex        =   65
      Top             =   6885
      Width           =   615
   End
   Begin VB.Label LabelItem22 
      Caption         =   "Item 22:"
      Height          =   255
      Left            =   3360
      TabIndex        =   63
      Top             =   6525
      Width           =   615
   End
   Begin VB.Label LabelItem21 
      Caption         =   "Item 21:"
      Height          =   255
      Left            =   120
      TabIndex        =   61
      Top             =   6525
      Width           =   615
   End
   Begin VB.Label LabelItem20 
      Caption         =   "Item 20:"
      Height          =   255
      Left            =   3360
      TabIndex        =   59
      Top             =   6165
      Width           =   615
   End
   Begin VB.Label LabelItem19 
      Caption         =   "Item 19:"
      Height          =   255
      Left            =   120
      TabIndex        =   57
      Top             =   6165
      Width           =   615
   End
   Begin VB.Label LabelItem18 
      Caption         =   "Item 18:"
      Height          =   255
      Left            =   3360
      TabIndex        =   55
      Top             =   5805
      Width           =   615
   End
   Begin VB.Label LabelItem17 
      Caption         =   "Item 17:"
      Height          =   255
      Left            =   120
      TabIndex        =   53
      Top             =   5805
      Width           =   615
   End
   Begin VB.Label LabelItem16 
      Caption         =   "Item 16:"
      Height          =   255
      Left            =   3360
      TabIndex        =   51
      Top             =   5445
      Width           =   615
   End
   Begin VB.Label LabelItem15 
      Caption         =   "Item 15:"
      Height          =   255
      Left            =   120
      TabIndex        =   49
      Top             =   5445
      Width           =   615
   End
   Begin VB.Label LabelItem14 
      Caption         =   "Item 14:"
      Height          =   255
      Left            =   3360
      TabIndex        =   47
      Top             =   5085
      Width           =   615
   End
   Begin VB.Label LabelItem13 
      Caption         =   "Item 13:"
      Height          =   255
      Left            =   120
      TabIndex        =   45
      Top             =   5085
      Width           =   615
   End
   Begin VB.Label LabelItem12 
      Caption         =   "Item 12:"
      Height          =   255
      Left            =   3360
      TabIndex        =   43
      Top             =   4725
      Width           =   615
   End
   Begin VB.Label LabelItem11 
      Caption         =   "Item 11:"
      Height          =   255
      Left            =   120
      TabIndex        =   41
      Top             =   4725
      Width           =   615
   End
   Begin VB.Label LabelItem10 
      Caption         =   "Item 10:"
      Height          =   255
      Left            =   3360
      TabIndex        =   39
      Top             =   4365
      Width           =   615
   End
   Begin VB.Label LabelItem9 
      Caption         =   "Item 9:"
      Height          =   255
      Left            =   120
      TabIndex        =   37
      Top             =   4365
      Width           =   615
   End
   Begin VB.Label LabelItem8 
      Caption         =   "Item 8:"
      Height          =   255
      Left            =   3360
      TabIndex        =   35
      Top             =   4005
      Width           =   615
   End
   Begin VB.Label LabelItem7 
      Caption         =   "Item 7:"
      Height          =   255
      Left            =   120
      TabIndex        =   33
      Top             =   4005
      Width           =   615
   End
   Begin VB.Label LabelItem6 
      Caption         =   "Item 6:"
      Height          =   255
      Left            =   3360
      TabIndex        =   31
      Top             =   3645
      Width           =   615
   End
   Begin VB.Label LabelItem5 
      Caption         =   "Item 5:"
      Height          =   255
      Left            =   120
      TabIndex        =   29
      Top             =   3645
      Width           =   615
   End
   Begin VB.Label LabelItem4 
      Caption         =   "Item 4:"
      Height          =   255
      Left            =   3360
      TabIndex        =   27
      Top             =   3285
      Width           =   615
   End
   Begin VB.Label LabelItem3 
      Caption         =   "Item 3:"
      Height          =   255
      Left            =   120
      TabIndex        =   25
      Top             =   3285
      Width           =   615
   End
   Begin VB.Label LabelItem2 
      Caption         =   "Item 2:"
      Height          =   255
      Left            =   3360
      TabIndex        =   23
      Top             =   2925
      Width           =   615
   End
   Begin VB.Label LabelItem1 
      Caption         =   "Item 1:"
      Height          =   255
      Left            =   120
      TabIndex        =   20
      Top             =   2925
      Width           =   615
   End
   Begin VB.Label LabelMaxHPWarnining 
      Caption         =   $"Falcone.frx":0442
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   120
      TabIndex        =   19
      Top             =   2160
      Width           =   6255
   End
   Begin VB.Label LabelCharacter4MaxHP 
      Caption         =   "Character 4 Maximum Hit Points:"
      Height          =   255
      Left            =   3240
      TabIndex        =   18
      Top             =   1830
      Width           =   2295
   End
   Begin VB.Label LabelCharacter4HP 
      Caption         =   "Character 4 Current Hit Points:"
      Height          =   255
      Left            =   120
      TabIndex        =   17
      Top             =   1830
      Width           =   2295
   End
   Begin VB.Label LabelCharacter3MaxHP 
      Caption         =   "Character 3 Maximum Hit Points:"
      Height          =   255
      Left            =   3240
      TabIndex        =   16
      Top             =   1470
      Width           =   2295
   End
   Begin VB.Label LabelCharacter3HP 
      Caption         =   "Character 3 Current Hit Points:"
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   1470
      Width           =   2295
   End
   Begin VB.Label LabelCharacter2MaxHP 
      Caption         =   "Character 2 Maximum Hit Points:"
      Height          =   255
      Left            =   3240
      TabIndex        =   14
      Top             =   1110
      Width           =   2295
   End
   Begin VB.Label LabelCharacter2HP 
      Caption         =   "Character 2 Current Hit Points:"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   1110
      Width           =   2295
   End
   Begin VB.Label LabelCharacter1MaxHP 
      Caption         =   "Character 1 Maximum Hit Points:"
      Height          =   255
      Left            =   3240
      TabIndex        =   12
      Top             =   750
      Width           =   2295
   End
   Begin VB.Label LabelCharacter1HP 
      Caption         =   "Character 1 Current Hit Points:"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   750
      Width           =   2295
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   6240
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label LabelSaveStateFile 
      Caption         =   "Save State File:"
      Height          =   225
      Left            =   120
      TabIndex        =   0
      Top             =   260
      Width           =   1215
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Falcone: Character Editor for Order of the Griffon
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

Private Sub ButtonBrowse_Click()
    Dim filter As String
    Dim filePath As String
        
    On Error GoTo ErrorHandler
        
    filter = "MagicEngine Save State Files (*.me*)" & Chr(0) & "*.me*" & Chr(0)
    filePath = ShowFileOpenDialog(filter, App.Path)
    If (Len(filePath) > 0) Then
        Screen.MousePointer = vbHourglass
        TextSaveStateFile.Text = filePath
        ' read stuff
        ReadStuff
        ' everything's fine, enable the save button
        ButtonSave.Enabled = True
        Screen.MousePointer = vbDefault
    End If

Exit Sub

ErrorHandler:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description

End Sub

Private Sub ReadStuff()
    Dim fp As Integer
    Dim b As Byte
        
    On Error GoTo ErrorHandler
        
    ' open the file
    fp = FreeFile
    Open TextSaveStateFile.Text For Binary As #fp
    
    ' read items
    Get #fp, 46543, b
    SetComboBoxSelection ComboBoxItem1, b
    Get #fp, 46544, b
    SetComboBoxSelection ComboBoxItem2, b
    Get #fp, 46545, b
    SetComboBoxSelection ComboBoxItem3, b
    Get #fp, 46546, b
    SetComboBoxSelection ComboBoxItem4, b
    Get #fp, 46547, b
    SetComboBoxSelection ComboBoxItem5, b
    Get #fp, 46548, b
    SetComboBoxSelection ComboBoxItem6, b
    Get #fp, 46549, b
    SetComboBoxSelection ComboBoxItem7, b
    Get #fp, 46550, b
    SetComboBoxSelection ComboBoxItem8, b
    Get #fp, 46551, b
    SetComboBoxSelection ComboBoxItem9, b
    Get #fp, 46552, b
    SetComboBoxSelection ComboBoxItem10, b
    Get #fp, 46553, b
    SetComboBoxSelection ComboBoxItem11, b
    Get #fp, 46554, b
    SetComboBoxSelection ComboBoxItem12, b
    Get #fp, 46555, b
    SetComboBoxSelection ComboBoxItem13, b
    Get #fp, 46556, b
    SetComboBoxSelection ComboBoxItem14, b
    Get #fp, 46557, b
    SetComboBoxSelection ComboBoxItem15, b
    Get #fp, 46558, b
    SetComboBoxSelection ComboBoxItem16, b
    Get #fp, 46559, b
    SetComboBoxSelection ComboBoxItem17, b
    Get #fp, 46560, b
    SetComboBoxSelection ComboBoxItem18, b
    Get #fp, 46561, b
    SetComboBoxSelection ComboBoxItem19, b
    Get #fp, 46562, b
    SetComboBoxSelection ComboBoxItem20, b
    Get #fp, 46563, b
    SetComboBoxSelection ComboBoxItem21, b
    Get #fp, 46564, b
    SetComboBoxSelection ComboBoxItem22, b
    Get #fp, 46565, b
    SetComboBoxSelection ComboBoxItem23, b
    Get #fp, 46566, b
    SetComboBoxSelection ComboBoxItem24, b
    
    ' read hit points
    Get #fp, 46696, b
    TextBoxCharacter1HP.Text = Trim$(Str$(b))
    Get #fp, 46697, b
    TextBoxCharacter1MaxHP.Text = Trim$(Str$(b))
    Get #fp, 46754, b
    TextBoxCharacter2HP.Text = Trim$(Str$(b))
    Get #fp, 46755, b
    TextBoxCharacter2MaxHP.Text = Trim$(Str$(b))
    Get #fp, 46812, b
    TextBoxCharacter3HP.Text = Trim$(Str$(b))
    Get #fp, 46813, b
    TextBoxCharacter3MaxHP.Text = Trim$(Str$(b))
    Get #fp, 46870, b
    TextBoxCharacter4HP.Text = Trim$(Str$(b))
    Get #fp, 46871, b
    TextBoxCharacter4MaxHP.Text = Trim$(Str$(b))
        
    ' close
    Close fp

Exit Sub

ErrorHandler:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description

End Sub

Private Sub SetComboBoxSelection(ByRef cb As ComboBox, b As Byte)
    Dim sval As String
    Dim index As Integer
    Dim foundIndex As Integer
    Dim count As Integer
    Dim currentItem As String
                
    sval = Hex$(b)
    If (Len(sval) < 2) Then
        sval = "0" & sval
    End If
    
    foundIndex = -1
    index = 0
    count = cb.ListCount
    Do While ((foundIndex = -1) And (index < count))
        currentItem = Mid$(cb.List(index), 2, 2)
        If (currentItem = sval) Then
            foundIndex = index
        Else
            index = index + 1
        End If
    Loop
    
    If (foundIndex > -1) Then
        cb.ListIndex = foundIndex
    Else
        cb.ListIndex = 0
    End If

End Sub

Private Sub LoadComboBox(ByRef cb As ComboBox)

    With cb
        .Clear
        .AddItem "[00] = Empty"
        .AddItem "[01] = Short Sword"
        .AddItem "[02] = Short Sword +1"
        .AddItem "[03] = Short Sword +2"
        .AddItem "[04] = Short Sword +3"
        .AddItem "[05] = Axe"
        .AddItem "[06] = Axe +1"
        .AddItem "[07] = Axe +2"
        .AddItem "[08] = Dagger"
        .AddItem "[09] = Dagger +1"
        .AddItem "[0A] = Dagger +2"
        .AddItem "[0B] = Staff"
        .AddItem "[0C] = Staff of Healing"
        .AddItem "[0D] = Staff of Striking"
        .AddItem "[0E] = Mace"
        .AddItem "[0F] = Mace +1"
        .AddItem "[10] = Mace +2"
        .AddItem "[11] = Mace +3"
        .AddItem "[12] = Sword"
        .AddItem "[13] = Sword +1"
        .AddItem "[14] = Sword +2"
        .AddItem "[15] = Sword +3"
        .AddItem "[16] = Spear"
        .AddItem "[17] = Spear +1"
        .AddItem "[18] = Spear +2"
        .AddItem "[19] = Spear +3"
        .AddItem "[1A] = Sword +1, vs Drain +3"
        .AddItem "[1B] = Sword +1, vs Spells+2"
        .AddItem "[1C] = Sword +1, vs Undead+2"
        .AddItem "[1D] = Sword +1, vs Dragons+3"
        .AddItem "[1E] = Sling"
        .AddItem "[1F] = Sling +1"
        .AddItem "[20] = Dart"
        .AddItem "[21] = Dart +1"
        .AddItem "[22] = Dart +2"
        .AddItem "[23] = Bow"
        .AddItem "[24] = Bow +1"
        .AddItem "[45] = Shield"
        .AddItem "[46] = Shield +1"
        .AddItem "[47] = Shield +2"
        .AddItem "[48] = Shield +3"
        .AddItem "[49] = Leather Armor"
        .AddItem "[4A] = Leather Armor +1"
        .AddItem "[4B] = Leather Armor +2"
        .AddItem "[4C] = Leather Armor +3"
        .AddItem "[4D] = Chain Mail Armor"
        .AddItem "[4E] = Chain Mail Armor +1"
        .AddItem "[4F] = Chain Mail Armor +2"
        .AddItem "[50] = Chain Mail Armor +3"
        .AddItem "[51] = Plate Mail Armor"
        .AddItem "[52] = Plate Mail Armor +1"
        .AddItem "[53] = Plate Mail Armor +2"
        .AddItem "[54] = Plate Mail Armor +3"
        .AddItem "[58] = Displacer Cloak"
        .AddItem "[59] = Girdle of Giant Strength"
        .AddItem "[5A] = Gauntlets of Ogre"
        .AddItem "[5B] = Boots of Speed"
        .AddItem "[5E] = Potion of Healing"
        .AddItem "[5F] = Potion of Extra Healing"
        .AddItem "[60] = Potion of Fire Resistance"
        .AddItem "[61] = Potion of Invulnerability"
        .AddItem "[62] = Wand of Cold"
        .AddItem "[63] = Wand of Fireballs"
        .AddItem "[64] = Wand of Lightning"
        .AddItem "[65] = Rod of Resurrection"
        .AddItem "[66] = Ring of Fire Resistance"
        .AddItem "[67] = Ring of Protection +1"
        .AddItem "[68] = Ring of Regenerate"
        .AddItem "[69] = Scroll of Magic Missile"
        .AddItem "[6A] = Scroll of Prot from Evil"
        .AddItem "[6B] = Scroll of Shield"
        .AddItem "[6C] = Scroll of Sleep"
        .AddItem "[6D] = Scroll of Charm"
        .AddItem "[6E] = Scroll of Invisibility"
        .AddItem "[6F] = Scroll of Web"
        .AddItem "[70] = Scroll of Dispel Magic"
        .AddItem "[71] = Scroll of Fireball"
        .AddItem "[72] = Scroll of Lightning"
        .AddItem "[73] = Scroll of Protection from Evil 10ft"
        .AddItem "[74] = Scroll of Protection from Missiles"
        .AddItem "[75] = Scroll of Hold"
        .AddItem "[76] = Scroll of Confusion"
        .AddItem "[77] = Scroll of Ice Storm"
        .AddItem "[78] = Scroll of Charm Monsters"
        .AddItem "[79] = Scroll of Dimension Door"
        .AddItem "[7A] = Scroll of Curse"
    End With

End Sub

Private Sub ButtonSave_Click()
    Dim fp As Integer

    On Error GoTo ErrorHandler
        
    ' open the file
    fp = FreeFile
    Open TextSaveStateFile.Text For Binary As #fp

    ' write items
    Put #fp, 46543, CByte(Val("&H" & Mid$(ComboBoxItem1.Text, 2, 2)))
    Put #fp, 46544, CByte(Val("&H" & Mid$(ComboBoxItem2.Text, 2, 2)))
    Put #fp, 46545, CByte(Val("&H" & Mid$(ComboBoxItem3.Text, 2, 2)))
    Put #fp, 46546, CByte(Val("&H" & Mid$(ComboBoxItem4.Text, 2, 2)))
    Put #fp, 46547, CByte(Val("&H" & Mid$(ComboBoxItem5.Text, 2, 2)))
    Put #fp, 46548, CByte(Val("&H" & Mid$(ComboBoxItem6.Text, 2, 2)))
    Put #fp, 46549, CByte(Val("&H" & Mid$(ComboBoxItem7.Text, 2, 2)))
    Put #fp, 46550, CByte(Val("&H" & Mid$(ComboBoxItem8.Text, 2, 2)))
    Put #fp, 46551, CByte(Val("&H" & Mid$(ComboBoxItem9.Text, 2, 2)))
    Put #fp, 46552, CByte(Val("&H" & Mid$(ComboBoxItem10.Text, 2, 2)))
    Put #fp, 46553, CByte(Val("&H" & Mid$(ComboBoxItem11.Text, 2, 2)))
    Put #fp, 46554, CByte(Val("&H" & Mid$(ComboBoxItem12.Text, 2, 2)))
    Put #fp, 46555, CByte(Val("&H" & Mid$(ComboBoxItem13.Text, 2, 2)))
    Put #fp, 46556, CByte(Val("&H" & Mid$(ComboBoxItem14.Text, 2, 2)))
    Put #fp, 46557, CByte(Val("&H" & Mid$(ComboBoxItem15.Text, 2, 2)))
    Put #fp, 46558, CByte(Val("&H" & Mid$(ComboBoxItem16.Text, 2, 2)))
    Put #fp, 46559, CByte(Val("&H" & Mid$(ComboBoxItem17.Text, 2, 2)))
    Put #fp, 46560, CByte(Val("&H" & Mid$(ComboBoxItem18.Text, 2, 2)))
    Put #fp, 46561, CByte(Val("&H" & Mid$(ComboBoxItem19.Text, 2, 2)))
    Put #fp, 46562, CByte(Val("&H" & Mid$(ComboBoxItem20.Text, 2, 2)))
    Put #fp, 46563, CByte(Val("&H" & Mid$(ComboBoxItem21.Text, 2, 2)))
    Put #fp, 46564, CByte(Val("&H" & Mid$(ComboBoxItem22.Text, 2, 2)))
    Put #fp, 46565, CByte(Val("&H" & Mid$(ComboBoxItem23.Text, 2, 2)))
    Put #fp, 46566, CByte(Val("&H" & Mid$(ComboBoxItem24.Text, 2, 2)))
    
    ' write hit points
    Put #fp, 46696, CByte(TextBoxCharacter1HP.Text)
    Put #fp, 46697, CByte(TextBoxCharacter1MaxHP.Text)
    Put #fp, 46754, CByte(TextBoxCharacter2HP.Text)
    Put #fp, 46755, CByte(TextBoxCharacter2MaxHP.Text)
    Put #fp, 46812, CByte(TextBoxCharacter3HP.Text)
    Put #fp, 46813, CByte(TextBoxCharacter3MaxHP.Text)
    Put #fp, 46870, CByte(TextBoxCharacter4HP.Text)
    Put #fp, 46871, CByte(TextBoxCharacter4MaxHP.Text)
        
    ' close
    Close fp
    
Exit Sub

ErrorHandler:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description

End Sub

Private Sub TextBoxCharacter1HP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter1HP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter1HP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter1HP.SelStart = 0
    TextBoxCharacter1HP.SelLength = Len(TextBoxCharacter1HP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub TextBoxCharacter2HP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter2HP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter2HP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter2HP.SelStart = 0
    TextBoxCharacter2HP.SelLength = Len(TextBoxCharacter2HP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub TextBoxCharacter3HP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter3HP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter3HP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter3HP.SelStart = 0
    TextBoxCharacter3HP.SelLength = Len(TextBoxCharacter3HP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub TextBoxCharacter4HP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter4HP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter4HP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter4HP.SelStart = 0
    TextBoxCharacter4HP.SelLength = Len(TextBoxCharacter4HP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub TextBoxCharacter1MaxHP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter1MaxHP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter1MaxHP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter1MaxHP.SelStart = 0
    TextBoxCharacter1MaxHP.SelLength = Len(TextBoxCharacter1MaxHP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub TextBoxCharacter2MaxHP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter2MaxHP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter2MaxHP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter2MaxHP.SelStart = 0
    TextBoxCharacter2MaxHP.SelLength = Len(TextBoxCharacter2MaxHP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub TextBoxCharacter3MaxHP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter3MaxHP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter3MaxHP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter3MaxHP.SelStart = 0
    TextBoxCharacter3MaxHP.SelLength = Len(TextBoxCharacter3MaxHP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub TextBoxCharacter4MaxHP_Validate(Cancel As Boolean)
    Dim intVal As Integer
        
    On Error GoTo ValidationFailed

    If Not IsNumeric(TextBoxCharacter4MaxHP.Text) Then
        GoTo ValidationFailed
    Else
        intVal = CInt(TextBoxCharacter4MaxHP.Text)
        If (intVal < 1) Or (intVal > 255) Then
            GoTo ValidationFailed
        End If
        Cancel = False
    End If

Exit Sub

ValidationFailed:
    Cancel = True
    TextBoxCharacter4MaxHP.SelStart = 0
    TextBoxCharacter4MaxHP.SelLength = Len(TextBoxCharacter4MaxHP.Text)
    MsgBox "Please enter a number between 1 and 255"

End Sub

Private Sub Form_Load()
    Dim ctrl As Control
    
    Screen.MousePointer = vbHourglass
    
    For Each ctrl In Me.Controls
        If TypeOf ctrl Is ComboBox Then
            LoadComboBox ctrl
        End If
    Next

    Screen.MousePointer = vbDefault
End Sub
