VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Begin VB.Form MainForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Hilary"
   ClientHeight    =   9315
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10920
   Icon            =   "MainForm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   9315
   ScaleWidth      =   10920
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CommandSave 
      Caption         =   "Save All Changes and Close"
      Enabled         =   0   'False
      Height          =   495
      Left            =   8280
      TabIndex        =   58
      Top             =   8760
      Width           =   2535
   End
   Begin VB.CommandButton CommandCancel 
      Caption         =   "Cancel All Changes and Close"
      Enabled         =   0   'False
      Height          =   495
      Left            =   5640
      TabIndex        =   57
      Top             =   8760
      Width           =   2535
   End
   Begin VB.CommandButton CommandEditSuspension 
      Caption         =   "Edit Suspension"
      Enabled         =   0   'False
      Height          =   495
      Left            =   120
      TabIndex        =   56
      Top             =   8760
      Width           =   2175
   End
   Begin VB.CheckBox CheckFAT_REARW 
      Caption         =   "FAT_REARW"
      Enabled         =   0   'False
      Height          =   255
      Left            =   960
      TabIndex        =   53
      Top             =   8280
      Width           =   2415
   End
   Begin VB.CheckBox CheckNARROW_FRONTW 
      Caption         =   "NARROW_FRONTW"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3480
      TabIndex        =   54
      Top             =   8280
      Width           =   2415
   End
   Begin VB.CheckBox CheckGOOD_INSAND 
      Caption         =   "GOOD_INSAND"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6000
      TabIndex        =   55
      Top             =   8280
      Width           =   2415
   End
   Begin VB.CheckBox CheckNO_EXHAUST 
      Caption         =   "NO_EXHAUST"
      Enabled         =   0   'False
      Height          =   255
      Left            =   960
      TabIndex        =   49
      Top             =   8040
      Width           =   2415
   End
   Begin VB.CheckBox CheckREARWHEEL_1ST 
      Caption         =   "REARWHEEL_1ST"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3480
      TabIndex        =   50
      Top             =   8040
      Width           =   2415
   End
   Begin VB.CheckBox CheckHANDBRAKE_TYRE 
      Caption         =   "HANDBRAKE_TYRE"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6000
      TabIndex        =   51
      Top             =   8040
      Width           =   2415
   End
   Begin VB.CheckBox CheckSIT_IN_BOAT 
      Caption         =   "SIT_IN_BOAT"
      Enabled         =   0   'False
      Height          =   255
      Left            =   8400
      TabIndex        =   52
      Top             =   8040
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_BIKE 
      Caption         =   "IS_BIKE"
      Enabled         =   0   'False
      Height          =   255
      Left            =   960
      TabIndex        =   45
      Top             =   7800
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_HELI 
      Caption         =   "IS_HELI"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3480
      TabIndex        =   46
      Top             =   7800
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_PLANE 
      Caption         =   "IS_PLANE"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6000
      TabIndex        =   47
      Top             =   7800
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_BOAT 
      Caption         =   "IS_BOAT"
      Enabled         =   0   'False
      Height          =   255
      Left            =   8400
      TabIndex        =   48
      Top             =   7800
      Width           =   2415
   End
   Begin VB.CheckBox CheckNEUTRALHANDLING 
      Caption         =   "NEUTRALHANDLING"
      Enabled         =   0   'False
      Height          =   255
      Left            =   960
      TabIndex        =   41
      Top             =   7560
      Width           =   2415
   End
   Begin VB.CheckBox CheckHAS_NO_ROOF 
      Caption         =   "HAS_NO_ROOF"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3480
      TabIndex        =   42
      Top             =   7560
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_BIG 
      Caption         =   "IS_BIG"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6000
      TabIndex        =   43
      Top             =   7560
      Width           =   2415
   End
   Begin VB.CheckBox CheckHALOGEN_LIGHTS 
      Caption         =   "HALOGEN_LIGHTS"
      Enabled         =   0   'False
      Height          =   255
      Left            =   8400
      TabIndex        =   44
      Top             =   7560
      Width           =   2415
   End
   Begin VB.CheckBox CheckDBL_EXHAUST 
      Caption         =   "DBL_EXHAUST"
      Enabled         =   0   'False
      Height          =   255
      Left            =   960
      TabIndex        =   37
      Top             =   7320
      Width           =   2415
   End
   Begin VB.CheckBox CheckTAILGATE_BOOT 
      Caption         =   "TAILGATE_BOOT"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3480
      TabIndex        =   38
      Top             =   7320
      Width           =   2415
   End
   Begin VB.CheckBox CheckNOSWING_BOOT 
      Caption         =   "NOSWING_BOOT"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6000
      TabIndex        =   39
      Top             =   7320
      Width           =   2415
   End
   Begin VB.CheckBox CheckNONPLAYER_STABILISER 
      Caption         =   "NONPLAYER_STABILISER"
      Enabled         =   0   'False
      Height          =   255
      Left            =   8400
      TabIndex        =   40
      Top             =   7320
      Width           =   2415
   End
   Begin VB.CheckBox CheckNO_DOORS 
      Caption         =   "NO_DOORS"
      Enabled         =   0   'False
      Height          =   255
      Left            =   960
      TabIndex        =   33
      Top             =   7080
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_VAN 
      Caption         =   "IS_VAN"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3480
      TabIndex        =   34
      Top             =   7080
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_BUS 
      Caption         =   "IS_BUS"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6000
      TabIndex        =   35
      Top             =   7080
      Width           =   2415
   End
   Begin VB.CheckBox CheckIS_LOW 
      Caption         =   "IS_LOW"
      Enabled         =   0   'False
      Height          =   255
      Left            =   8400
      TabIndex        =   36
      Top             =   7080
      Width           =   2415
   End
   Begin VB.CheckBox CheckHANGING_BOOT 
      Caption         =   "HANGING_BOOT"
      Enabled         =   0   'False
      Height          =   255
      Left            =   8400
      TabIndex        =   32
      Top             =   6840
      Width           =   2415
   End
   Begin VB.CheckBox CheckREV_BONNET 
      Caption         =   "REV_BONNET"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6000
      TabIndex        =   31
      Top             =   6840
      Width           =   2415
   End
   Begin VB.CheckBox Check2G_BOOST 
      Caption         =   "2G_BOOST"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3480
      TabIndex        =   30
      Top             =   6840
      Width           =   2415
   End
   Begin VB.CheckBox Check1G_BOOST 
      Caption         =   "1G_BOOST"
      Enabled         =   0   'False
      Height          =   255
      Left            =   960
      TabIndex        =   29
      Top             =   6840
      Width           =   2415
   End
   Begin VB.ComboBox ComboRearLights 
      Enabled         =   0   'False
      Height          =   315
      ItemData        =   "MainForm.frx":0CFA
      Left            =   7320
      List            =   "MainForm.frx":0D0A
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   1560
      Width           =   3135
   End
   Begin VB.ComboBox ComboFrontLights 
      Enabled         =   0   'False
      Height          =   315
      ItemData        =   "MainForm.frx":0D36
      Left            =   2040
      List            =   "MainForm.frx":0D46
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   1560
      Width           =   3255
   End
   Begin VB.ComboBox ComboABS 
      Enabled         =   0   'False
      Height          =   315
      ItemData        =   "MainForm.frx":0D72
      Left            =   2040
      List            =   "MainForm.frx":0D7C
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   1920
      Width           =   3255
   End
   Begin VB.ComboBox ComboEngineType 
      Enabled         =   0   'False
      Height          =   315
      ItemData        =   "MainForm.frx":0D95
      Left            =   2040
      List            =   "MainForm.frx":0DA2
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1200
      Width           =   3255
   End
   Begin VB.ComboBox ComboDriveType 
      Enabled         =   0   'False
      Height          =   315
      ItemData        =   "MainForm.frx":0DCC
      Left            =   7320
      List            =   "MainForm.frx":0DD9
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1200
      Width           =   3135
   End
   Begin VB.ComboBox ComboNumberOfGears 
      Enabled         =   0   'False
      Height          =   315
      ItemData        =   "MainForm.frx":0E0E
      Left            =   7320
      List            =   "MainForm.frx":0E1E
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   840
      Width           =   3135
   End
   Begin ComctlLib.Slider SliderMass 
      Height          =   465
      Left            =   7320
      TabIndex        =   10
      Top             =   1920
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   5000
      SmallChange     =   100
      Min             =   1
      Max             =   25500
      SelStart        =   1
      TickStyle       =   1
      TickFrequency   =   1000
      Value           =   1
   End
   Begin VB.ComboBox ComboSelectVehicle 
      BackColor       =   &H00E0E0E0&
      Enabled         =   0   'False
      Height          =   315
      Left            =   2040
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   840
      Width           =   3255
   End
   Begin VB.TextBox TextBackupFile 
      BackColor       =   &H00E0E0E0&
      Height          =   300
      Left            =   6840
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   120
      Width           =   3855
   End
   Begin VB.TextBox TextFilePath 
      BackColor       =   &H00E0E0E0&
      Height          =   300
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   0
      Text            =   "<click browse button to select a file>"
      Top             =   120
      Width           =   3735
   End
   Begin VB.CommandButton ButtonBrowse 
      Caption         =   "Browse.."
      Height          =   300
      Left            =   4680
      TabIndex        =   1
      Top             =   120
      Width           =   855
   End
   Begin ComctlLib.Slider SliderDimensionsX 
      Height          =   465
      Left            =   2160
      TabIndex        =   11
      Top             =   2400
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   40
      SmallChange     =   10
      Max             =   200
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderDimensionsY 
      Height          =   465
      Left            =   2160
      TabIndex        =   13
      Top             =   2880
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   40
      SmallChange     =   10
      Max             =   200
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderDimensionsZ 
      Height          =   465
      Left            =   2160
      TabIndex        =   15
      Top             =   3360
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   40
      SmallChange     =   10
      Max             =   200
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderCenterOfMassX 
      Height          =   465
      Left            =   7320
      TabIndex        =   12
      Top             =   2400
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   40
      SmallChange     =   10
      Max             =   200
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderCenterOfMassY 
      Height          =   465
      Left            =   7320
      TabIndex        =   14
      Top             =   2880
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   40
      SmallChange     =   10
      Max             =   200
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderCenterOfMassZ 
      Height          =   465
      Left            =   7320
      TabIndex        =   16
      Top             =   3360
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   40
      SmallChange     =   10
      Max             =   200
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderPercentSubmerged 
      Height          =   465
      Left            =   2160
      TabIndex        =   17
      Top             =   3840
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   40
      SmallChange     =   10
      Min             =   5
      Max             =   120
      SelStart        =   5
      TickStyle       =   1
      TickFrequency   =   10
      Value           =   5
   End
   Begin ComctlLib.Slider SliderTractionMultiplier 
      Height          =   465
      Left            =   2160
      TabIndex        =   19
      Top             =   4320
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   100
      Max             =   800
      TickStyle       =   1
      TickFrequency   =   50
   End
   Begin ComctlLib.Slider SliderTractionLoss 
      Height          =   465
      Left            =   2160
      TabIndex        =   21
      Top             =   4800
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   500
      Max             =   2500
      TickStyle       =   1
      TickFrequency   =   500
   End
   Begin ComctlLib.Slider SliderTractionBias 
      Height          =   465
      Left            =   2160
      TabIndex        =   23
      Top             =   5280
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   30
      Max             =   100
      TickStyle       =   1
      TickFrequency   =   10
   End
   Begin ComctlLib.Slider SliderMaxVelocity 
      Height          =   465
      Left            =   7320
      TabIndex        =   18
      Top             =   3840
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   100
      SmallChange     =   10
      Min             =   50
      Max             =   1500
      SelStart        =   50
      TickStyle       =   1
      TickFrequency   =   50
      Value           =   50
   End
   Begin ComctlLib.Slider SliderEngineAcceleration 
      Height          =   465
      Left            =   7320
      TabIndex        =   20
      Top             =   4320
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   50
      Min             =   1
      Max             =   500
      SelStart        =   1
      TickStyle       =   1
      TickFrequency   =   50
      Value           =   1
   End
   Begin ComctlLib.Slider SliderBrakeDeceleration 
      Height          =   465
      Left            =   7320
      TabIndex        =   22
      Top             =   4800
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   30
      Max             =   200
      SelStart        =   1
      TickStyle       =   1
      TickFrequency   =   10
      Value           =   1
   End
   Begin ComctlLib.Slider SliderBrakeBias 
      Height          =   465
      Left            =   7320
      TabIndex        =   24
      Top             =   5280
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   3
      TickStyle       =   1
   End
   Begin ComctlLib.Slider SliderSteeringLock 
      Height          =   465
      Left            =   2160
      TabIndex        =   25
      Top             =   5760
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   50
      SmallChange     =   10
      Min             =   10
      Max             =   40
      SelStart        =   10
      TickStyle       =   1
      TickFrequency   =   10
      Value           =   10
   End
   Begin ComctlLib.Slider SliderCollisionDamageMultiplier 
      Height          =   465
      Left            =   2160
      TabIndex        =   27
      Top             =   6240
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   10
      Max             =   50
      TickStyle       =   1
      TickFrequency   =   5
   End
   Begin ComctlLib.Slider SliderMonetaryValue 
      Height          =   465
      Left            =   7320
      TabIndex        =   26
      Top             =   5760
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      LargeChange     =   10000
      Min             =   1
      Max             =   110000
      SelStart        =   1
      TickStyle       =   1
      TickFrequency   =   10000
      Value           =   1
   End
   Begin ComctlLib.Slider SliderSeatOffsetDistance 
      Height          =   465
      Left            =   7320
      TabIndex        =   28
      Top             =   6240
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   820
      _Version        =   327682
      Min             =   1
      Max             =   20
      SelStart        =   1
      TickStyle       =   1
      TickFrequency   =   5
      Value           =   1
   End
   Begin VB.Label LabelFlags7 
      Alignment       =   1  'Right Justify
      Caption         =   "Flags [7]:"
      Height          =   225
      Left            =   120
      TabIndex        =   93
      Top             =   8280
      Width           =   735
   End
   Begin VB.Label LabelFlags6 
      Alignment       =   1  'Right Justify
      Caption         =   "Flags [6]:"
      Height          =   225
      Left            =   120
      TabIndex        =   92
      Top             =   8040
      Width           =   735
   End
   Begin VB.Label LabelFlags5 
      Alignment       =   1  'Right Justify
      Caption         =   "Flags [5]:"
      Height          =   225
      Left            =   120
      TabIndex        =   91
      Top             =   7800
      Width           =   735
   End
   Begin VB.Label LabelFlags4 
      Alignment       =   1  'Right Justify
      Caption         =   "Flags [4]:"
      Height          =   225
      Left            =   120
      TabIndex        =   90
      Top             =   7560
      Width           =   735
   End
   Begin VB.Label LabelFlags3 
      Alignment       =   1  'Right Justify
      Caption         =   "Flags [3]:"
      Height          =   225
      Left            =   120
      TabIndex        =   89
      Top             =   7320
      Width           =   735
   End
   Begin VB.Label LabelFlags2 
      Alignment       =   1  'Right Justify
      Caption         =   "Flags [2]:"
      Height          =   225
      Left            =   120
      TabIndex        =   88
      Top             =   7080
      Width           =   735
   End
   Begin VB.Label LabelFlags1 
      Alignment       =   1  'Right Justify
      Caption         =   "Flags [1]:"
      Height          =   225
      Left            =   120
      TabIndex        =   87
      Top             =   6840
      Width           =   735
   End
   Begin VB.Label LabelRearLights 
      Alignment       =   1  'Right Justify
      Caption         =   "Rear Lights:"
      Height          =   225
      Left            =   5520
      TabIndex        =   86
      Top             =   1605
      Width           =   1695
   End
   Begin VB.Label LabelFrontLights 
      Alignment       =   1  'Right Justify
      Caption         =   "Front Lights:"
      Height          =   225
      Left            =   240
      TabIndex        =   85
      Top             =   1605
      Width           =   1695
   End
   Begin VB.Label LabelSeatOffsetDistance 
      Alignment       =   1  'Right Justify
      Caption         =   "Seat Offset Distance:"
      Height          =   225
      Left            =   5520
      TabIndex        =   84
      Top             =   6360
      Width           =   1695
   End
   Begin VB.Label LabelMonetaryValue 
      Alignment       =   1  'Right Justify
      Caption         =   "Monetary Value:"
      Height          =   225
      Left            =   5520
      TabIndex        =   83
      Top             =   5880
      Width           =   1695
   End
   Begin VB.Label LabelCollisionDamageMultiplier 
      Alignment       =   1  'Right Justify
      Caption         =   "Collision Damage Multiplier:"
      Height          =   225
      Left            =   120
      TabIndex        =   82
      Top             =   6360
      Width           =   1935
   End
   Begin VB.Label LabelSteeringLock 
      Alignment       =   1  'Right Justify
      Caption         =   "Steering Lock:"
      Height          =   225
      Left            =   360
      TabIndex        =   81
      Top             =   5880
      Width           =   1695
   End
   Begin VB.Label LabelABS 
      Alignment       =   1  'Right Justify
      Caption         =   "ABS:"
      Height          =   225
      Left            =   240
      TabIndex        =   80
      Top             =   1965
      Width           =   1695
   End
   Begin VB.Label LabelBrakeBias 
      Alignment       =   1  'Right Justify
      Caption         =   "Brake Bias:"
      Height          =   225
      Left            =   5520
      TabIndex        =   79
      Top             =   5400
      Width           =   1695
   End
   Begin VB.Label LabelBrakeDeceleration 
      Alignment       =   1  'Right Justify
      Caption         =   "Brake Deceleration:"
      Height          =   225
      Left            =   5520
      TabIndex        =   78
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label LabelEngineType 
      Alignment       =   1  'Right Justify
      Caption         =   "Engine Type:"
      Height          =   225
      Left            =   240
      TabIndex        =   77
      Top             =   1245
      Width           =   1695
   End
   Begin VB.Label LabelDriveType 
      Alignment       =   1  'Right Justify
      Caption         =   "Drive Type:"
      Height          =   225
      Left            =   5520
      TabIndex        =   76
      Top             =   1245
      Width           =   1695
   End
   Begin VB.Label LabelEngineAcceleration 
      Alignment       =   1  'Right Justify
      Caption         =   "Engine Acceleration:"
      Height          =   225
      Left            =   5520
      TabIndex        =   75
      Top             =   4440
      Width           =   1695
   End
   Begin VB.Label LabelMaxVelocity 
      Alignment       =   1  'Right Justify
      Caption         =   "Maximum Velocity:"
      Height          =   225
      Left            =   5520
      TabIndex        =   74
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Label LabelNumberOfGears 
      Alignment       =   1  'Right Justify
      Caption         =   "Number of Gears:"
      Height          =   225
      Left            =   5520
      TabIndex        =   73
      Top             =   880
      Width           =   1695
   End
   Begin VB.Label LabelTractionBias 
      Alignment       =   1  'Right Justify
      Caption         =   "Traction Bias:"
      Height          =   225
      Left            =   360
      TabIndex        =   72
      Top             =   5400
      Width           =   1695
   End
   Begin VB.Label LabelTractionLoss 
      Alignment       =   1  'Right Justify
      Caption         =   "Traction Loss:"
      Height          =   225
      Left            =   360
      TabIndex        =   71
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label LabelTractionMultiplier 
      Alignment       =   1  'Right Justify
      Caption         =   "Traction Multiplier:"
      Height          =   225
      Left            =   360
      TabIndex        =   70
      Top             =   4440
      Width           =   1695
   End
   Begin VB.Label LabelPercentSubmerged 
      Alignment       =   1  'Right Justify
      Caption         =   "Percent Submerged:"
      Height          =   225
      Left            =   360
      TabIndex        =   69
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Label LabelCenterOfMassZ 
      Alignment       =   1  'Right Justify
      Caption         =   "CenterOfMass.z:"
      Height          =   225
      Left            =   5520
      TabIndex        =   68
      Top             =   3480
      Width           =   1695
   End
   Begin VB.Label LabelCenterOfMassY 
      Alignment       =   1  'Right Justify
      Caption         =   "CenterOfMass.y:"
      Height          =   225
      Left            =   5520
      TabIndex        =   67
      Top             =   3000
      Width           =   1695
   End
   Begin VB.Label LabelCenterOfMassX 
      Alignment       =   1  'Right Justify
      Caption         =   "CenterOfMass.x:"
      Height          =   225
      Left            =   5520
      TabIndex        =   66
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label LabelDimensionsZ 
      Alignment       =   1  'Right Justify
      Caption         =   "Dimensions.z:"
      Height          =   225
      Left            =   360
      TabIndex        =   65
      Top             =   3480
      Width           =   1695
   End
   Begin VB.Label LabelDimensionsY 
      Alignment       =   1  'Right Justify
      Caption         =   "Dimensions.y:"
      Height          =   225
      Left            =   360
      TabIndex        =   64
      Top             =   3000
      Width           =   1695
   End
   Begin VB.Label LabelDimensionsX 
      Alignment       =   1  'Right Justify
      Caption         =   "Dimensions.x:"
      Height          =   225
      Left            =   360
      TabIndex        =   63
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label LabelMass 
      Alignment       =   1  'Right Justify
      Caption         =   "Mass:"
      Height          =   225
      Left            =   5520
      TabIndex        =   62
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label LabelSelectVehicle 
      Alignment       =   1  'Right Justify
      Caption         =   "Select Vehicle:"
      Height          =   225
      Left            =   240
      TabIndex        =   61
      Top             =   880
      Width           =   1695
   End
   Begin VB.Label LabelBackupFile 
      Alignment       =   1  'Right Justify
      Caption         =   "Backup File:"
      Height          =   225
      Left            =   5760
      TabIndex        =   60
      Top             =   160
      Width           =   975
   End
   Begin VB.Label LabelFilePath 
      Alignment       =   1  'Right Justify
      Caption         =   "File Path:"
      Height          =   225
      Left            =   120
      TabIndex        =   59
      Top             =   160
      Width           =   735
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   10560
      Y1              =   600
      Y2              =   600
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Hilary: handling.cfg editor for Grand Theft Auto: Vice City
' Copyright (c) 2008 Hugues Johnson
'
' Hilary is free software; you can redistribute it and/or modify
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

Private Vehicles() As CFGEntryType
Private lastVehicleIndex As Integer
Private saveButtonExit As Boolean
Private dirtyEntry As Boolean


Private Sub ButtonBrowse_Click()
    Dim filter As String
    Dim filePath As String
    Dim ctrl As Control
    Dim currentLine As String
    Dim fp As Integer
    Dim lineCounter As Integer
    Dim leadingChar As String
    Dim arrayCounter As Integer
    Dim index As Integer
            
    On Error GoTo ErrorHandler
        
    ' browse for the file
    filter = "handling.cfg" & Chr(0) & "handling.cfg*" & Chr(0)
    filePath = ShowFileOpenDialog(filter, "c:\Program Files\Rockstar Games\Grand Theft Auto Vice City\data")
    If (Len(filePath) > 0) Then
        Me.MousePointer = vbHourglass
        TextFilePath.Text = filePath
        TextBackupFile.Text = GenerateBackupFilePath
        ' read stuff
        ReDim Vehicles(200)
        fp = FreeFile()
        Open filePath For Input As #fp
        Do Until EOF(fp)
            lineCounter = lineCounter + 1
            Line Input #fp, currentLine
            leadingChar = Left$(currentLine, 1)
            If (leadingChar <> ";") And (leadingChar <> "%") And (leadingChar <> "!") And (leadingChar <> "$") Then
                Vehicles(arrayCounter).ZZZ_RowIndex = lineCounter
                Vehicles(arrayCounter).ZZZ_Dirty = False
                ParseEntry currentLine, Vehicles(arrayCounter)
                arrayCounter = arrayCounter + 1
            End If
        Loop
        Close #fp
        ' resize Vehicles to actual number loaded
        ReDim Preserve Vehicles(arrayCounter - 1)
        ' enable stuff
        For Each ctrl In Me.Controls
            If (Not (TypeOf ctrl Is Label)) And (Not (TypeOf ctrl Is Line)) Then
                ctrl.Enabled = True
            End If
        Next
        ' load ComboSelectVehicle
        For index = 0 To (arrayCounter - 1)
            ComboSelectVehicle.AddItem Vehicles(index).A_VehicleIdentifier
        Next
        ComboSelectVehicle.ListIndex = 0
        lastVehicleIndex = 0
        ComboSelectVehicle.SetFocus
        Me.MousePointer = vbDefault
    End If

Exit Sub

ErrorHandler:
    Me.MousePointer = vbDefault
    MsgBox Err.Description

End Sub

Private Function GenerateBackupFilePath()
    Dim dateString As String
    
    dateString = Format$(Now, "yyyyMMddHHnnss")

    GenerateBackupFilePath = TextFilePath.Text & "." & dateString

End Function

Private Sub Check1G_BOOST_Click()

    dirtyEntry = True
    
End Sub

Private Sub Check2G_BOOST_Click()

    dirtyEntry = True

End Sub

Private Sub CheckDBL_EXHAUST_Click()

    dirtyEntry = True

End Sub

Private Sub CheckFAT_REARW_Click()

    dirtyEntry = True

End Sub

Private Sub CheckGOOD_INSAND_Click()

    dirtyEntry = True

End Sub

Private Sub CheckHALOGEN_LIGHTS_Click()

    dirtyEntry = True

End Sub

Private Sub CheckHANDBRAKE_TYRE_Click()

    dirtyEntry = True

End Sub

Private Sub CheckHANGING_BOOT_Click()

    dirtyEntry = True

End Sub

Private Sub CheckHAS_NO_ROOF_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_BIG_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_BIKE_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_BOAT_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_BUS_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_HELI_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_LOW_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_PLANE_Click()

    dirtyEntry = True

End Sub

Private Sub CheckIS_VAN_Click()

    dirtyEntry = True

End Sub

Private Sub CheckNARROW_FRONTW_Click()

    dirtyEntry = True

End Sub

Private Sub CheckNEUTRALHANDLING_Click()

    dirtyEntry = True

End Sub

Private Sub CheckNO_DOORS_Click()

    dirtyEntry = True

End Sub

Private Sub CheckNO_EXHAUST_Click()

    dirtyEntry = True

End Sub

Private Sub CheckNONPLAYER_STABILISER_Click()

    dirtyEntry = True

End Sub

Private Sub CheckNOSWING_BOOT_Click()

    dirtyEntry = True

End Sub

Private Sub CheckREARWHEEL_1ST_Click()

    dirtyEntry = True

End Sub

Private Sub CheckREV_BONNET_Click()

    dirtyEntry = True

End Sub

Private Sub CheckSIT_IN_BOAT_Click()

    dirtyEntry = True

End Sub

Private Sub CheckTAILGATE_BOOT_Click()

    dirtyEntry = True

End Sub

Private Sub ComboABS_Click()

    dirtyEntry = True

End Sub

Private Sub ComboDriveType_Click()

    dirtyEntry = True

End Sub

Private Sub ComboEngineType_Click()

    dirtyEntry = True

End Sub

Private Sub ComboFrontLights_Click()

    dirtyEntry = True

End Sub

Private Sub ComboNumberOfGears_Click()

    dirtyEntry = True

End Sub

Private Sub ComboRearLights_Click()

    dirtyEntry = True

End Sub

Private Sub ComboSelectVehicle_Click()
    Dim cfg As CFGEntryType
    Dim flag As Integer
    Dim flagsRev As String

    ' update previous record
    UpdateLastItem
    
    ' get the selected item
    cfg = Vehicles(ComboSelectVehicle.ListIndex)
    lastVehicleIndex = ComboSelectVehicle.ListIndex
    
    ' B_fMass [1.0 to 50000.0] -- 25500 is the largest value actually in the game though
    SliderMass.SelStart = cfg.B_fMass
    
    ' C_DimensionsX [0.0 > x > 20.0]
    SliderDimensionsX.SelStart = cfg.C_DimensionsX * 10
    
    ' D_DimensionsY [0.0 > x > 20.0]
    SliderDimensionsY.SelStart = cfg.D_DimensionsY * 10
    
    ' E_DimensionsZ [0.0 > x > 20.0]
    SliderDimensionsZ.SelStart = cfg.E_DimensionsZ * 10
    
    ' F_CentreOfMassX [-10.0 > x > 10.0]
    SliderCenterOfMassX.SelStart = (cfg.F_CentreOfMassX + 10) * 10
    
    ' G_CentreOfMassY [-10.0 > x > 10.0]
    SliderCenterOfMassY.SelStart = (cfg.G_CentreOfMassY + 10) * 10
    
    ' H_CentreOfMassZ [-10.0 > x > 10.0]
    SliderCenterOfMassZ.SelStart = (cfg.H_CentreOfMassZ + 10) * 10
    
    ' I_nPercentSubmerged [10 to 120] -- actually goes from 5 to 120
    SliderPercentSubmerged.SelStart = cfg.I_nPercentSubmerged
    
    ' J_fTractionMultiplier [0.5 to 2.0] -- actually goes from -4.0 to 4.0 for boats
    SliderTractionMultiplier.SelStart = (cfg.J_fTractionMultiplier + 4) * 100
    
    ' K_fTractionLoss [0.0 > x > 1.0] -- actually goes up to 25 for boats and planes
    SliderTractionLoss.SelStart = cfg.K_fTractionLoss * 100
    
    ' L_fTractionBias [0.0 > x > 1.0]
    SliderTractionBias.SelStart = cfg.L_fTractionBias * 100
    
    ' M_TransmissionDatanNumberOfGears [1 to 4]
    SetComboBoxSelection ComboNumberOfGears, Trim$(str$(cfg.M_TransmissionDatanNumberOfGears))
    
    ' N_TransmissionDatafMaxVelocity [5.0 to 150.0]
    SliderMaxVelocity.SelStart = cfg.N_TransmissionDatafMaxVelocity
    
    ' O_TransmissionDatafEngineAcceleration [0.1 to 10.0] -- actually goes up to 50
    SliderEngineAcceleration.SelStart = cfg.O_TransmissionDatafEngineAcceleration * 10
    
    ' P_TransmissionDatanDriveType [F/R/4]
    SetComboBoxSelection ComboDriveType, cfg.P_TransmissionDatanDriveType
    
    ' Q_TransmissionDatanEngineType [P/D/E]
    SetComboBoxSelection ComboEngineType, cfg.Q_TransmissionDatanEngineType
    
    ' R_fBrakeDeceleration [0.1 to 10.0] -- actually goes from 0 to 20
    SliderBrakeDeceleration.SelStart = cfg.R_fBrakeDeceleration * 10
    
    ' S_fBrakeBias [0.0 > x > 1.0]
    SliderBrakeBias.SelStart = cfg.S_fBrakeBias * 10
    
    ' T_bABS [0/1]
    SetComboBoxSelection ComboABS, Trim$(str$(cfg.T_bABS))
    
    ' U_fSteeringLock [10.0 to 40.0]
    SliderSteeringLock.SelStart = cfg.U_fSteeringLock
    
    ' X_fSeatOffsetDistance -- [0.1 to 2.0] it seems
    SliderSeatOffsetDistance.SelStart = cfg.X_fSeatOffsetDistance * 10
    
    ' Y_fCollisionDamageMultiplier [0.2 to 5.0] -- actually goes from 0 to 5.0
    SliderCollisionDamageMultiplier.SelStart = cfg.Y_fCollisionDamageMultiplier * 10
    
    ' Z_nMonetaryValue [1 to 100000] -- actually goes up to 110000
    SliderMonetaryValue.SelStart = cfg.Z_nMonetaryValue
    
    ' ae_Flags
    flagsRev = StrReverse(cfg.ae_Flags)
    ' 1st digit =     1: 1G_BOOST         2: 2G_BOOST       4: REV_BONNET    8: HANGING_BOOT
    If (Len(flagsRev) > 0) Then
        flag = Val("&H" & Mid$(flagsRev, 1, 1))
        Check1G_BOOST.Value = ((flag And G1_BOOST) / G1_BOOST)
        Check2G_BOOST.Value = ((flag And G2_BOOST) / G2_BOOST)
        CheckREV_BONNET.Value = ((flag And REV_BONNET) / REV_BONNET)
        CheckHANGING_BOOT.Value = ((flag And HANGING_BOOT) / HANGING_BOOT)
    Else
        Check1G_BOOST.Value = 0
        Check2G_BOOST.Value = 0
        CheckREV_BONNET.Value = 0
        CheckHANGING_BOOT.Value = 0
    End If
    ' 2nd digit =     1: NO_DOORS         2: IS_VAN         4: IS_BUS        8: IS_LOW
    If (Len(flagsRev) > 1) Then
        flag = Val("&H" & Mid$(flagsRev, 2, 1))
        CheckNO_DOORS.Value = ((flag And NO_DOORS) / NO_DOORS)
        CheckIS_VAN.Value = ((flag And IS_VAN) / IS_VAN)
        CheckIS_BUS.Value = ((flag And IS_BUS) / IS_BUS)
        CheckIS_LOW.Value = ((flag And IS_LOW) / IS_LOW)
    Else
        CheckNO_DOORS.Value = 0
        CheckIS_VAN.Value = 0
        CheckIS_BUS.Value = 0
        CheckIS_LOW.Value = 0
    End If
    ' 3rd digit =     1: DBL_EXHAUST      2: TAILGATE_BOOT  4: NOSWING_BOOT  8: NONPLAYER_STABILISER
    If (Len(flagsRev) > 2) Then
        flag = Val("&H" & Mid$(flagsRev, 3, 1))
        CheckDBL_EXHAUST.Value = ((flag And DBL_EXHAUST) / DBL_EXHAUST)
        CheckTAILGATE_BOOT.Value = ((flag And TAILGATE_BOOT) / TAILGATE_BOOT)
        CheckNOSWING_BOOT.Value = ((flag And NOSWING_BOOT) / NOSWING_BOOT)
        CheckIS_LOW.Value = ((flag And NONPLAYER_STABILISER) / NONPLAYER_STABILISER)
    Else
        CheckDBL_EXHAUST.Value = 0
        CheckTAILGATE_BOOT.Value = 0
        CheckNOSWING_BOOT.Value = 0
        CheckNONPLAYER_STABILISER.Value = 0
    End If
    ' 4th digit =     1: NEUTRALHANDLING  2: HAS_NO_ROOF    4: IS_BIG        8: HALOGEN_LIGHTS
    If (Len(flagsRev) > 3) Then
        flag = Val("&H" & Mid$(flagsRev, 4, 1))
        CheckNEUTRALHANDLING.Value = ((flag And NEUTRALHANDLING) / NEUTRALHANDLING)
        CheckHAS_NO_ROOF.Value = ((flag And HAS_NO_ROOF) / HAS_NO_ROOF)
        CheckIS_BIG.Value = ((flag And IS_BIG) / IS_BIG)
        CheckHALOGEN_LIGHTS.Value = ((flag And HALOGEN_LIGHTS) / HALOGEN_LIGHTS)
    Else
        CheckNEUTRALHANDLING.Value = 0
        CheckHAS_NO_ROOF.Value = 0
        CheckIS_BIG.Value = 0
        CheckHALOGEN_LIGHTS.Value = 0
    End If
    ' 5th digit =     1: IS_BIKE          2: IS_HELI        4: IS_PLANE      8: IS_BOAT
    If (Len(flagsRev) > 4) Then
        flag = Val("&H" & Mid$(flagsRev, 5, 1))
        CheckIS_BIKE.Value = ((flag And IS_BIKE) / IS_BIKE)
        CheckIS_HELI.Value = ((flag And IS_HELI) / IS_HELI)
        CheckIS_PLANE.Value = ((flag And IS_PLANE) / IS_PLANE)
        CheckIS_BOAT.Value = ((flag And IS_BOAT) / IS_BOAT)
    Else
        CheckIS_BIKE.Value = 0
        CheckIS_HELI.Value = 0
        CheckIS_PLANE.Value = 0
        CheckIS_BOAT.Value = 0
    End If
    ' 6th digit =     1: NO_EXHAUST       2: REARWHEEL_1ST  4: HANDBRAKE_TYRE8: SIT_IN_BOAT
    If (Len(flagsRev) > 5) Then
        flag = Val("&H" & Mid$(flagsRev, 6, 1))
        CheckNO_EXHAUST.Value = ((flag And NO_EXHAUST) / NO_EXHAUST)
        CheckREARWHEEL_1ST.Value = ((flag And REARWHEEL_1ST) / REARWHEEL_1ST)
        CheckHANDBRAKE_TYRE.Value = ((flag And HANDBRAKE_TYRE) / HANDBRAKE_TYRE)
        CheckSIT_IN_BOAT.Value = ((flag And SIT_IN_BOAT) / SIT_IN_BOAT)
    Else
        CheckNO_EXHAUST.Value = 0
        CheckREARWHEEL_1ST.Value = 0
        CheckHANDBRAKE_TYRE.Value = 0
        CheckSIT_IN_BOAT.Value = 0
    End If
    ' 7th digit =     1: FAT_REARW        2: NARROW_FRONTW  4: GOOD_INSAND
    If (Len(flagsRev) > 6) Then
        flag = Val("&H" & Mid$(flagsRev, 7, 1))
        CheckFAT_REARW.Value = ((flag And FAT_REARW) / FAT_REARW)
        CheckNARROW_FRONTW.Value = ((flag And NARROW_FRONTW) / NARROW_FRONTW)
        CheckGOOD_INSAND.Value = ((flag And GOOD_INSAND) / GOOD_INSAND)
    Else
        CheckFAT_REARW.Value = 0
        CheckNARROW_FRONTW.Value = 0
        CheckGOOD_INSAND.Value = 0
    End If
    
    ' af_FrontLights (0 = long, 1 = small, 2 = big, 3 = tall)
    SetComboBoxSelection ComboFrontLights, Trim$(str$(cfg.af_FrontLights))
    
    ' ag_RearLights (0 = long, 1 = small, 2 = big, 3 = tall)
    SetComboBoxSelection ComboRearLights, Trim$(str$(cfg.ag_RearLights))

    dirtyEntry = False

End Sub

Private Sub SetComboBoxSelection(ByRef cb As ComboBox, sval As String)
    Dim index As Integer
    Dim foundIndex As Integer
    Dim count As Integer
    Dim currentItem As String
                    
    foundIndex = -1
    index = 0
    count = cb.ListCount
    Do While ((foundIndex = -1) And (index < count))
        currentItem = Left$(cb.List(index), 1)
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

Private Sub CommandCancel_Click()

    Unload Me

End Sub

Private Sub CommandEditSuspension_Click()
    Dim sfrm As SuspensionForm
    Dim cfg As CFGEntryType
    
    Set sfrm = New SuspensionForm
    
    ' get the selected item
    cfg = Vehicles(ComboSelectVehicle.ListIndex)
    
    ' V_fSuspensionForceLevel -- [0.1-5.0]?
    sfrm.SliderSuspensionForceLevel.SelStart = cfg.V_fSuspensionForceLevel * 10
    
    ' W_fSuspensionDampingLevel -- [0.0-5.0]?
    sfrm.SliderSuspensionDampingLevel.SelStart = cfg.W_fSuspensionDampingLevel * 10
    
    ' aa_SuspensionUpperLimit -- [0.1-15.0]?
    sfrm.SliderSuspensionUpperLimit.SelStart = cfg.aa_SuspensionUpperLimit * 10
    
    ' ab_SuspensionLowerLimit -- [-1.0-1.0]?
    sfrm.SliderSuspensionLowerLimit.SelStart = (cfg.ab_SuspensionLowerLimit + 1) * 10
    
    ' ac_SuspensionBiasBetweenFrontRear -- [0.0-3.0]?
    sfrm.SliderFrontRearSuspensionBias.SelStart = cfg.ac_SuspensionBiasBetweenFrontRear * 10
    
    ' ad_SuspensionAntiDiveMultiplier -- [0.0-1.0]?
    sfrm.SliderSuspensionAntiDiveMultiplier.SelStart = cfg.ad_SuspensionAntiDiveMultiplier * 10
        
    sfrm.Show vbModal, Me
    
    '  pull back the updated values
    If (sfrm.cancelClicked = False) Then
        ' V_fSuspensionForceLevel -- [0.1-5.0]?
        cfg.V_fSuspensionForceLevel = sfrm.SliderSuspensionForceLevel.SelStart / 10
        
        ' W_fSuspensionDampingLevel -- [0.0-5.0]?
        cfg.W_fSuspensionDampingLevel = sfrm.SliderSuspensionDampingLevel.SelStart / 10
        
        ' aa_SuspensionUpperLimit -- [0.1-15.0]?
        cfg.aa_SuspensionUpperLimit = sfrm.SliderSuspensionUpperLimit.SelStart / 10
        
        ' ab_SuspensionLowerLimit -- [-1.0-1.0]?
        cfg.ab_SuspensionLowerLimit = (sfrm.SliderSuspensionLowerLimit.SelStart / 10) - 1
        
        ' ac_SuspensionBiasBetweenFrontRear -- [0.0-3.0]?
        cfg.ac_SuspensionBiasBetweenFrontRear = sfrm.SliderFrontRearSuspensionBias.SelStart / 10
        
        ' ad_SuspensionAntiDiveMultiplier -- [0.0-1.0]?
        cfg.ad_SuspensionAntiDiveMultiplier = sfrm.SliderSuspensionAntiDiveMultiplier.SelStart / 10
    
        Vehicles(ComboSelectVehicle.ListIndex) = cfg
    
        dirtyEntry = True

    End If
    
    Set sfrm = Nothing

End Sub

Private Sub UpdateLastItem()
    Dim cfg As CFGEntryType
    Dim flag As Integer
    Dim flags As String
        
    If (lastVehicleIndex < 0) Then
        Exit Sub
    End If
    
    If (dirtyEntry = False) Then
        Exit Sub
    End If
        
    ' get the selected item
    cfg = Vehicles(lastVehicleIndex)
    cfg.ZZZ_Dirty = True
    
    ' B_fMass [1.0 to 50000.0] -- 25500 is the largest value actually in the game though
    cfg.B_fMass = SliderMass.SelStart
    
    ' C_DimensionsX [0.0 > x > 20.0]
    cfg.C_DimensionsX = SliderDimensionsX.SelStart / 10
      
    ' D_DimensionsY [0.0 > x > 20.0]
    cfg.D_DimensionsY = SliderDimensionsY.SelStart / 10
    
    ' E_DimensionsZ [0.0 > x > 20.0]
    cfg.E_DimensionsZ = SliderDimensionsZ.SelStart / 10
    
    ' F_CentreOfMassX [-10.0 > x > 10.0]
    cfg.F_CentreOfMassX = (SliderCenterOfMassX.SelStart / 10) - 10
        
    ' G_CentreOfMassY [-10.0 > x > 10.0]
    cfg.G_CentreOfMassY = (SliderCenterOfMassY.SelStart / 10) - 10
    
    ' H_CentreOfMassZ [-10.0 > x > 10.0]
    cfg.H_CentreOfMassZ = (SliderCenterOfMassZ.SelStart / 10) - 10
    
    ' I_nPercentSubmerged [10 to 120] -- actually goes from 5 to 120
    cfg.I_nPercentSubmerged = SliderPercentSubmerged.SelStart
    
    ' J_fTractionMultiplier [0.5 to 2.0] -- actually goes from -4.0 to 4.0 for boats
    cfg.J_fTractionMultiplier = (SliderTractionMultiplier.SelStart / 100) - 4
    
    ' K_fTractionLoss [0.0 > x > 1.0] -- actually goes up to 25 for boats and planes
    cfg.K_fTractionLoss = SliderTractionLoss.SelStart / 100
    
    ' L_fTractionBias [0.0 > x > 1.0]
    cfg.L_fTractionBias = SliderTractionBias.SelStart / 100
    
    ' M_TransmissionDatanNumberOfGears [1 to 4]
    cfg.M_TransmissionDatanNumberOfGears = Left$(ComboNumberOfGears.Text, 1)
    
    ' N_TransmissionDatafMaxVelocity [5.0 to 150.0]
    cfg.N_TransmissionDatafMaxVelocity = SliderMaxVelocity.SelStart
    
    ' O_TransmissionDatafEngineAcceleration [0.1 to 10.0] -- actually goes up to 50
    cfg.O_TransmissionDatafEngineAcceleration = SliderEngineAcceleration.SelStart / 10
    
    ' P_TransmissionDatanDriveType [F/R/4]
    cfg.P_TransmissionDatanDriveType = Left$(ComboDriveType.Text, 1)
    
    ' Q_TransmissionDatanEngineType [P/D/E]
    cfg.Q_TransmissionDatanEngineType = Left$(ComboEngineType.Text, 1)
    
    ' R_fBrakeDeceleration [0.1 to 10.0] -- actually goes from 0 to 20
    cfg.R_fBrakeDeceleration = SliderBrakeDeceleration.SelStart / 10
    
    ' S_fBrakeBias [0.0 > x > 1.0]
    cfg.S_fBrakeBias = SliderBrakeBias.SelStart / 10
    
    ' T_bABS [0/1]
    cfg.T_bABS = Int(Val(ComboABS.Text))
    
    ' U_fSteeringLock [10.0 to 40.0]
    cfg.U_fSteeringLock = SliderSteeringLock.SelStart
    
    ' X_fSeatOffsetDistance -- [0.1 to 2.0] it seems
    cfg.X_fSeatOffsetDistance = SliderSeatOffsetDistance.SelStart / 10
    
    ' Y_fCollisionDamageMultiplier [0.2 to 5.0] -- actually goes from 0 to 5.0
    cfg.Y_fCollisionDamageMultiplier = SliderCollisionDamageMultiplier.SelStart / 10
    
    ' Z_nMonetaryValue [1 to 100000] -- actually goes up to 110000
    cfg.Z_nMonetaryValue = SliderMonetaryValue.SelStart
    
    ' ae_Flags
    flags = ""
    ' 7th digit =     1: FAT_REARW        2: NARROW_FRONTW  4: GOOD_INSAND
    flag = 0
    flag = flag Or (CheckFAT_REARW.Value * FAT_REARW)
    flag = flag Or (CheckNARROW_FRONTW.Value * NARROW_FRONTW)
    flag = flag Or (CheckGOOD_INSAND.Value * GOOD_INSAND)
    If (flag <> 0) Then
        flags = Hex$(flag)
    End If


    ' 6th digit =     1: NO_EXHAUST       2: REARWHEEL_1ST  4: HANDBRAKE_TYRE8: SIT_IN_BOAT
    flag = 0
    flag = flag Or (CheckNO_EXHAUST.Value * NO_EXHAUST)
    flag = flag Or (CheckREARWHEEL_1ST.Value * REARWHEEL_1ST)
    flag = flag Or (CheckHANDBRAKE_TYRE.Value * HANDBRAKE_TYRE)
    flag = flag Or (CheckSIT_IN_BOAT.Value * SIT_IN_BOAT)
    If Not ((flag = 0) And (Len(flags) < 1)) Then
        flags = flags & Hex$(flag)
    End If

    ' 5th digit =     1: IS_BIKE          2: IS_HELI        4: IS_PLANE      8: IS_BOAT
    flag = 0
    flag = flag Or (CheckIS_BIKE.Value * IS_BIKE)
    flag = flag Or (CheckIS_HELI.Value * IS_HELI)
    flag = flag Or (CheckIS_PLANE.Value * IS_PLANE)
    flag = flag Or (CheckIS_BOAT.Value * IS_BOAT)
    If Not ((flag = 0) And (Len(flags) < 1)) Then
        flags = flags & Hex$(flag)
    End If

    ' 4th digit =     1: NEUTRALHANDLING  2: HAS_NO_ROOF    4: IS_BIG        8: HALOGEN_LIGHTS
    flag = 0
    flag = flag Or (CheckNEUTRALHANDLING.Value * NEUTRALHANDLING)
    flag = flag Or (CheckHAS_NO_ROOF.Value * HAS_NO_ROOF)
    flag = flag Or (CheckIS_BIG.Value * IS_BIG)
    flag = flag Or (CheckHALOGEN_LIGHTS.Value * HALOGEN_LIGHTS)
    If Not ((flag = 0) And (Len(flags) < 1)) Then
        flags = flags & Hex$(flag)
    End If

    ' 3rd digit =     1: DBL_EXHAUST      2: TAILGATE_BOOT  4: NOSWING_BOOT  8: NONPLAYER_STABILISER
    flag = 0
    flag = flag Or (CheckDBL_EXHAUST.Value * DBL_EXHAUST)
    flag = flag Or (CheckTAILGATE_BOOT.Value * TAILGATE_BOOT)
    flag = flag Or (CheckNOSWING_BOOT.Value * NOSWING_BOOT)
    flag = flag Or (CheckNONPLAYER_STABILISER.Value * NONPLAYER_STABILISER)
    If Not ((flag = 0) And (Len(flags) < 1)) Then
        flags = flags & Hex$(flag)
    End If

    ' 2nd digit =     1: NO_DOORS         2: IS_VAN         4: IS_BUS        8: IS_LOW
    flag = 0
    flag = flag Or (CheckNO_DOORS.Value * NO_DOORS)
    flag = flag Or (CheckIS_VAN.Value * IS_VAN)
    flag = flag Or (CheckIS_BUS.Value * IS_BUS)
    flag = flag Or (CheckIS_LOW.Value * IS_LOW)
    If Not ((flag = 0) And (Len(flags) < 1)) Then
        flags = flags & Hex$(flag)
    End If

    ' 1st digit =     1: 1G_BOOST         2: 2G_BOOST       4: REV_BONNET    8: HANGING_BOOT
    flag = 0
    flag = flag Or (Check1G_BOOST.Value * G1_BOOST)
    flag = flag Or (Check2G_BOOST.Value * G2_BOOST)
    flag = flag Or (CheckREV_BONNET.Value * REV_BONNET)
    flag = flag Or (CheckHANGING_BOOT.Value * HANGING_BOOT)
    If Not ((flag = 0) And (Len(flags) < 1)) Then
        flags = flags & Hex$(flag)
    End If

    If (Len(flags) < 1) Then
        flags = "0"
    End If
    cfg.ae_Flags = flags

    ' af_FrontLights (0 = long, 1 = small, 2 = big, 3 = tall)
    cfg.af_FrontLights = Int(Val(Left$(ComboFrontLights.Text, 1)))

    ' ag_RearLights (0 = long, 1 = small, 2 = big, 3 = tall)
    cfg.ag_RearLights = Int(Val(Left$(ComboRearLights.Text, 1)))

    Vehicles(lastVehicleIndex) = cfg

End Sub

Private Sub CommandSave_Click()
    Dim currentLine As String
    Dim fpIn As Integer
    Dim fpOut As Integer
    Dim lineCounter As Integer
    Dim vehicleIndex As Integer
    Dim maxVehicleIndex As Integer
    Dim tempFilePath As String
    
    On Error GoTo ErrorHandler

    Me.MousePointer = vbHourglass
    
    ' update the last item
    UpdateLastItem
    
    ' create the backup file
    FileCopy TextFilePath.Text, TextBackupFile.Text
    
    ' save the new file
    fpIn = FreeFile(0)
    fpOut = FreeFile(1)
    tempFilePath = TextFilePath.Text & ".tmp"
    
    Open TextFilePath.Text For Input As #fpIn
    Open tempFilePath For Output As #fpOut
    
    lineCounter = 0
    vehicleIndex = 0
    maxVehicleIndex = UBound(Vehicles)

    Do Until EOF(fpIn)
        lineCounter = lineCounter + 1
        Line Input #fpIn, currentLine
        If (vehicleIndex <= maxVehicleIndex) Then
            If (Vehicles(vehicleIndex).ZZZ_RowIndex = lineCounter) Then
                If (Vehicles(vehicleIndex).ZZZ_Dirty = True) Then
                    Print #fpOut, CfgEntryToString(Vehicles(vehicleIndex))
                Else
                    Print #fpOut, currentLine
                End If
                vehicleIndex = vehicleIndex + 1
            Else
                Print #fpOut, currentLine
            End If
        Else
            Print #fpOut, currentLine
        End If
    Loop
    Close #fpIn
    Close #fpOut
    
    ' swap out the handling.cfg file
    SetAttr TextFilePath.Text, GetAttr(TextFilePath.Text) And (Not vbReadOnly)
    Kill TextFilePath.Text
    FileCopy tempFilePath, TextFilePath.Text
    Kill tempFilePath
    
    ' exit
    Me.MousePointer = vbDefault
    saveButtonExit = True
    Unload Me
    
    Exit Sub
 
ErrorHandler:
    Me.MousePointer = vbDefault
    MsgBox Err.Description
    
End Sub
Private Sub Form_Load()

    saveButtonExit = False
    lastVehicleIndex = -1
    dirtyEntry = False
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim result As VbMsgBoxResult

    If (saveButtonExit = False) Then
        result = MsgBox("Changes will not be saved. Are you sure you want to close?", vbYesNo, "Hilary")
        If (result = vbNo) Then
            Cancel = True
        End If
    End If
    
End Sub

Private Function CfgEntryToString(cfg As CFGEntryType)
    Dim cfgStr As String
    Dim tempStr As String
    
    ' A_VehicleIdentifier
    cfgStr = Left$(cfg.A_VehicleIdentifier, 14)
    
    ' B_fMass [1.0 to 50000.0]
    tempStr = PadZeros(Format$(cfg.B_fMass, "#####.#"))
    If (Len(tempStr) < 7) Then
        tempStr = String$(7 - Len(tempStr), " ") & tempStr
    End If
    cfgStr = cfgStr & " " & tempStr

    ' C_DimensionsX [0.0 > x > 20.0]
    cfgStr = MessWithString(cfgStr, 23)
    tempStr = PadZeros(Format$(cfg.C_DimensionsX, "##.#"))
    cfgStr = cfgStr & tempStr

    ' D_DimensionsY [0.0 > x > 20.0]
    cfgStr = MessWithString(cfgStr, 27)
    tempStr = PadZeros(Format$(cfg.D_DimensionsY, "##.#"))
    cfgStr = cfgStr & tempStr

    ' E_DimensionsZ [0.0 > x > 20.0]
    cfgStr = MessWithString(cfgStr, 31)
    tempStr = PadZeros(Format$(cfg.E_DimensionsZ, "##.#"))
    cfgStr = cfgStr & tempStr

    ' F_CentreOfMassX [-10.0 > x > 10.0]
    cfgStr = MessWithString(cfgStr, 35)
    tempStr = PadZeros(Format$(cfg.F_CentreOfMassX, "##.##"))
    cfgStr = cfgStr & tempStr

    ' G_CentreOfMassY [-10.0 > x > 10.0]
    tempStr = PadZeros(Format$(cfg.G_CentreOfMassY, "##.##"))
    cfgStr = cfgStr & " " & tempStr

    ' H_CentreOfMassZ [-10.0 > x > 10.0]
    If (cfg.H_CentreOfMassZ < 0) Then
'        If (Len(cfgStr) < 43) Then
'            cfgStr = cfgStr & String$(43 - Len(cfgStr), " ")
'        End If
    Else
        If (Len(cfgStr) < 43) Then
            cfgStr = cfgStr & String$(43 - Len(cfgStr), " ")
        End If
    End If
    tempStr = PadZeros(Format$(cfg.H_CentreOfMassZ, "##.##"))
    cfgStr = cfgStr & " " & tempStr

    ' I_nPercentSubmerged [10 to 120] -- actually goes from 5 to 120
    cfgStr = MessWithString(cfgStr, 49)
    tempStr = Format$(cfg.I_nPercentSubmerged, "###")
    cfgStr = cfgStr & tempStr
    
    ' J_fTractionMultiplier [0.5 to 2.0] -- actually goes from -4.0 to 4.0 for boats
    cfgStr = MessWithString(cfgStr, 53)
    tempStr = PadZeros(Format$(cfg.J_fTractionMultiplier, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' K_fTractionLoss [0.0 > x > 1.0] -- actually goes up to 25 for boats and planes
    cfgStr = MessWithString(cfgStr, 58)
    tempStr = PadZeros(Format$(cfg.K_fTractionLoss, "##.##"))
    cfgStr = cfgStr & tempStr
    
    ' L_fTractionBias [0.0 > x > 1.0]
    cfgStr = MessWithString(cfgStr, 63)
    tempStr = PadZeros(Format$(cfg.L_fTractionBias, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' M_TransmissionDatanNumberOfGears [1 to 4]
    cfgStr = MessWithString(cfgStr, 68)
    tempStr = Format$(cfg.M_TransmissionDatanNumberOfGears, "#")
    cfgStr = cfgStr & tempStr

    ' N_TransmissionDatafMaxVelocity [5.0 to 150.0]
    cfgStr = MessWithString(cfgStr, 70)
    tempStr = PadZeros(Format$(cfg.N_TransmissionDatafMaxVelocity, "###.##"))
    cfgStr = cfgStr & tempStr
    
    ' O_TransmissionDatafEngineAcceleration [0.1 to 10.0] -- actually goes up to 50
    cfgStr = MessWithString(cfgStr, 76)
    tempStr = PadZeros(Format$(cfg.O_TransmissionDatafEngineAcceleration, "##.##"))
    cfgStr = cfgStr & tempStr
    
    ' P_TransmissionDatanDriveType [F/R/4]
    cfgStr = MessWithString(cfgStr, 81)
    cfgStr = cfgStr & cfg.P_TransmissionDatanDriveType
    
    ' Q_TransmissionDatanEngineType [P/D/E]
    cfgStr = MessWithString(cfgStr, 83)
    cfgStr = cfgStr & cfg.Q_TransmissionDatanEngineType
    
    ' R_fBrakeDeceleration [0.1 to 10.0] -- actually goes from 0 to 20
    cfgStr = MessWithString(cfgStr, 85)
    tempStr = PadZeros(Format$(cfg.R_fBrakeDeceleration, "##.##"))
    cfgStr = cfgStr & tempStr
    
    ' S_fBrakeBias [0.0 > x > 1.0]
    cfgStr = MessWithString(cfgStr, 91)
    tempStr = PadZeros(Format$(cfg.S_fBrakeBias, "#.##"))
    ' seems to only be the case for this field
    If (Len(tempStr) < 4) Then
        tempStr = tempStr & String$(4 - Len(tempStr), "0")
    End If
    cfgStr = cfgStr & tempStr
    
    ' T_bABS [0/1]
    cfgStr = MessWithString(cfgStr, 96)
    tempStr = Format$(cfg.T_bABS, "#")
    If (Len(tempStr) < 1) Then
        tempStr = "0"
    End If
    cfgStr = cfgStr & tempStr
    
    ' U_fSteeringLock [10.0 to 40.0]
    cfgStr = MessWithString(cfgStr, 98)
    tempStr = PadZeros(Format$(cfg.U_fSteeringLock, "##.##"))
    cfgStr = cfgStr & tempStr
    
    ' V_fSuspensionForceLevel -- [0.1-5.0]?
    cfgStr = MessWithString(cfgStr, 104)
    tempStr = PadZeros(Format$(cfg.V_fSuspensionForceLevel, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' W_fSuspensionDampingLevel -- [0.0-5.0]?
    cfgStr = MessWithString(cfgStr, 109)
    tempStr = PadZeros(Format$(cfg.W_fSuspensionDampingLevel, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' X_fSeatOffsetDistance -- [0.1 to 2.0] it seems
    cfgStr = MessWithString(cfgStr, 114)
    tempStr = PadZeros(Format$(cfg.X_fSeatOffsetDistance, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' Y_fCollisionDamageMultiplier [0.2 to 5.0] -- actually goes from 0 to 5.0
    cfgStr = MessWithString(cfgStr, 119)
    tempStr = PadZeros(Format$(cfg.Y_fCollisionDamageMultiplier, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' Z_nMonetaryValue [1 to 100000] -- actually goes up to 110000
    cfgStr = MessWithString(cfgStr, 124)
    tempStr = Format$(cfg.Z_nMonetaryValue, "######")
    cfgStr = cfgStr & tempStr

    ' aa_SuspensionUpperLimit -- [0.1-15.0]?
    cfgStr = MessWithString(cfgStr, 130)
    tempStr = PadZeros(Format$(cfg.aa_SuspensionUpperLimit, "##.##"))
    cfgStr = cfgStr & tempStr
    
    ' ab_SuspensionLowerLimit -- [-1.0-1.0]?
    cfgStr = MessWithString(cfgStr, 135)
    tempStr = PadZeros(Format$(cfg.ab_SuspensionLowerLimit, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' ac_SuspensionBiasBetweenFrontRear -- [0.0-3.0]?
    cfgStr = MessWithString(cfgStr, 141)
    tempStr = PadZeros(Format$(cfg.ac_SuspensionBiasBetweenFrontRear, "#.##"))
    cfgStr = cfgStr & tempStr
    
    ' ad_SuspensionAntiDiveMultiplier -- [0.0-1.0]?
    cfgStr = MessWithString(cfgStr, 146)
    tempStr = PadZeros(Format$(cfg.ad_SuspensionAntiDiveMultiplier, "#.##"))
    cfgStr = cfgStr & tempStr

    ' ae_Flags
    cfgStr = MessWithString(cfgStr, 160)
    cfgStr = cfgStr & cfg.ae_Flags

    ' af_FrontLights (0 = long, 1 = small, 2 = big, 3 = tall)
    tempStr = Format$(cfg.af_FrontLights, "#")
    If (Len(tempStr) < 1) Then
        tempStr = "0"
    End If
    cfgStr = cfgStr & " " & tempStr

    ' ag_RearLights (0 = long, 1 = small, 2 = big, 3 = tall)
    tempStr = Format$(cfg.ag_RearLights, "#")
    If (Len(tempStr) < 1) Then
        tempStr = "0"
    End If
    cfgStr = cfgStr & " " & tempStr
    
    CfgEntryToString = cfgStr

End Function

Public Function PadZeros(str As String)

    If (Right$(str, 1) = ".") Then
        str = str & "0"
    End If
    If (Left$(str, 1) = ".") Then
        str = "0" & str
    End If
    If (Len(str) > 1) Then
        If (Left$(str, 2) = "-.") Then
            str = "-0." & Right$(str, Len(str) - 2)
        End If
    End If

    PadZeros = str

End Function

Public Function MessWithString(str As String, length As String)

    If (Len(str) < length) Then
        str = str & String$(length - Len(str), " ")
    End If
    If (Right$(str, 1) <> " ") Then
        str = str & " "
    End If

    MessWithString = str

End Function

Private Sub SliderBrakeBias_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderBrakeDeceleration_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderCenterOfMassX_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderCenterOfMassY_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderCenterOfMassZ_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderCollisionDamageMultiplier_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderDimensionsX_Change()

    dirtyEntry = True

End Sub

Private Sub SliderDimensionsY_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderDimensionsZ_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderEngineAcceleration_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderMass_Change()

    dirtyEntry = True

End Sub



Private Sub SliderMaxVelocity_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderMonetaryValue_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderPercentSubmerged_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderSeatOffsetDistance_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderSteeringLock_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderTractionBias_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderTractionLoss_Change()

    dirtyEntry = True
    
End Sub

Private Sub SliderTractionMultiplier_Change()

    dirtyEntry = True
    
End Sub
