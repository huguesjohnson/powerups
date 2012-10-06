VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Begin VB.Form SuspensionForm 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Suspension"
   ClientHeight    =   4545
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5910
   ControlBox      =   0   'False
   Icon            =   "SuspensionForm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4545
   ScaleWidth      =   5910
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CommandCancel 
      Caption         =   "Cancel All Changes and Close"
      Height          =   495
      Left            =   600
      TabIndex        =   14
      Top             =   3960
      Width           =   2535
   End
   Begin VB.CommandButton CommandSave 
      Caption         =   "Save All Changes and Close"
      Height          =   495
      Left            =   3240
      TabIndex        =   13
      Top             =   3960
      Width           =   2535
   End
   Begin ComctlLib.Slider SliderSuspensionForceLevel 
      Height          =   465
      Left            =   2520
      TabIndex        =   1
      Top             =   840
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      Min             =   1
      Max             =   50
      SelStart        =   1
      TickStyle       =   1
      TickFrequency   =   10
      Value           =   1
   End
   Begin ComctlLib.Slider SliderSuspensionDampingLevel 
      Height          =   465
      Left            =   2520
      TabIndex        =   3
      Top             =   1320
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      Max             =   50
      TickStyle       =   1
      TickFrequency   =   10
      Value           =   1
   End
   Begin ComctlLib.Slider SliderSuspensionUpperLimit 
      Height          =   465
      Left            =   2520
      TabIndex        =   5
      Top             =   1800
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   10
      Min             =   1
      Max             =   150
      SelStart        =   1
      TickStyle       =   1
      TickFrequency   =   10
      Value           =   1
   End
   Begin ComctlLib.Slider SliderSuspensionLowerLimit 
      Height          =   465
      Left            =   2520
      TabIndex        =   7
      Top             =   2280
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      Max             =   20
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderFrontRearSuspensionBias 
      Height          =   465
      Left            =   2520
      TabIndex        =   9
      Top             =   2760
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      Max             =   30
      TickStyle       =   1
      TickFrequency   =   10
      Value           =   1
   End
   Begin ComctlLib.Slider SliderSuspensionAntiDiveMultiplier 
      Height          =   465
      Left            =   2520
      TabIndex        =   11
      Top             =   3240
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   2
      TickStyle       =   1
      TickFrequency   =   2
   End
   Begin VB.Label LabelSuspensionAntiDiveMultiplier 
      Alignment       =   1  'Right Justify
      Caption         =   "Suspension Anti-Dive Multiplier:"
      Height          =   225
      Left            =   0
      TabIndex        =   12
      Top             =   3360
      Width           =   2415
   End
   Begin VB.Label LabelFrontRearSuspensionBias 
      Alignment       =   1  'Right Justify
      Caption         =   "Front/Rear Suspension Bias:"
      Height          =   225
      Left            =   0
      TabIndex        =   10
      Top             =   2880
      Width           =   2415
   End
   Begin VB.Label LabelSuspensionLowerLimit 
      Alignment       =   1  'Right Justify
      Caption         =   "Suspension Lower Limit:"
      Height          =   225
      Left            =   0
      TabIndex        =   8
      Top             =   2400
      Width           =   2415
   End
   Begin VB.Label LabelSuspensionUpperLimit 
      Alignment       =   1  'Right Justify
      Caption         =   "Suspension Upper Limit:"
      Height          =   225
      Left            =   0
      TabIndex        =   6
      Top             =   1920
      Width           =   2415
   End
   Begin VB.Label LabelSuspensionDampingLevel 
      Alignment       =   1  'Right Justify
      Caption         =   "Suspension Damping Level:"
      Height          =   225
      Left            =   0
      TabIndex        =   4
      Top             =   1440
      Width           =   2415
   End
   Begin VB.Label LabelSuspensionForceLevel 
      Alignment       =   1  'Right Justify
      Caption         =   "Suspension Force Level:"
      Height          =   225
      Left            =   0
      TabIndex        =   2
      Top             =   960
      Width           =   2415
   End
   Begin VB.Label LabelWarnining 
      Caption         =   $"SuspensionForm.frx":0CFA
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5535
   End
End
Attribute VB_Name = "SuspensionForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public cancelClicked As Boolean

Private Sub CommandCancel_Click()

    cancelClicked = True
    Hide

End Sub

Private Sub CommandSave_Click()
    
    Hide

End Sub

Private Sub Form_Load()

    cancelClicked = False
    
End Sub
