Attribute VB_Name = "CFGEntry"
' CFGEntry.bas: Type definition and utilities for handling.cfg entries
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

Public Type CFGEntryType
    A_VehicleIdentifier As String
    B_fMass As Double
    C_DimensionsX As Double
    D_DimensionsY As Double
    E_DimensionsZ As Double
    F_CentreOfMassX As Double
    G_CentreOfMassY As Double
    H_CentreOfMassZ As Double
    I_nPercentSubmerged As Integer
    J_fTractionMultiplier As Double
    K_fTractionLoss As Double
    L_fTractionBias As Double
    M_TransmissionDatanNumberOfGears As Integer
    N_TransmissionDatafMaxVelocity As Double
    O_TransmissionDatafEngineAcceleration As Double
    P_TransmissionDatanDriveType As String
    Q_TransmissionDatanEngineType As String
    R_fBrakeDeceleration As Double
    S_fBrakeBias As Double
    T_bABS As Integer
    U_fSteeringLock As Double
    V_fSuspensionForceLevel As Double
    W_fSuspensionDampingLevel As Double
    X_fSeatOffsetDistance As Double
    Y_fCollisionDamageMultiplier As Double
    Z_nMonetaryValue As Long
    aa_SuspensionUpperLimit As Double
    ab_SuspensionLowerLimit As Double
    ac_SuspensionBiasBetweenFrontRear As Double
    ad_SuspensionAntiDiveMultiplier As Double
    ae_Flags As String
    af_FrontLights As Integer
    ag_RearLights As Integer
    ZZZ_RowIndex As Integer
    ZZZ_Dirty As Boolean
End Type

' flags - 1st digit
Global Const G1_BOOST = &H1
Global Const G2_BOOST = &H2
Global Const REV_BONNET = &H4
Global Const HANGING_BOOT = &H8

' flags - 2nd digit
Global Const NO_DOORS = &H1
Global Const IS_VAN = &H2
Global Const IS_BUS = &H4
Global Const IS_LOW = &H8

' flags - 3rd digit
Global Const DBL_EXHAUST = &H1
Global Const TAILGATE_BOOT = &H2
Global Const NOSWING_BOOT = &H4
Global Const NONPLAYER_STABILISER = &H8

' flags - 4th digit
Global Const NEUTRALHANDLING = &H1
Global Const HAS_NO_ROOF = &H2
Global Const IS_BIG = &H4
Global Const HALOGEN_LIGHTS = &H8

' flags - 5th digit
Global Const IS_BIKE = &H1
Global Const IS_HELI = &H2
Global Const IS_PLANE = &H4
Global Const IS_BOAT = &H8

' flags - 6th digit
Global Const NO_EXHAUST = &H1
Global Const REARWHEEL_1ST = &H2
Global Const HANDBRAKE_TYRE = &H4
Global Const SIT_IN_BOAT = &H8

' flags - 7th digit
Global Const FAT_REARW = &H1
Global Const NARROW_FRONTW = &H2
Global Const GOOD_INSAND = &H4

Public Sub ParseEntry(entryLine As String, ByRef cfg As CFGEntryType)
    Dim index As Integer
    Dim currentChar As String
    Dim fields() As String
    
    ' VehicleIdentifier is supposed to be 14 characters long but some have tabs which screws things up
    index = 1
    currentChar = Mid$(entryLine, index, 1)
    Do While ((currentChar <> " ") And (currentChar <> vbTab))
        cfg.A_VehicleIdentifier = cfg.A_VehicleIdentifier & currentChar
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    Do While (Not IsNumeric(currentChar))
        cfg.A_VehicleIdentifier = cfg.A_VehicleIdentifier & currentChar
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    
    ' B_fMass
    cfg.B_fMass = parseDouble(entryLine, index)
    
    ' C_DimensionsX
    cfg.C_DimensionsX = parseDouble(entryLine, index)

    ' D_DimensionsY
    cfg.D_DimensionsY = parseDouble(entryLine, index)

    ' E_DimensionsZ
    cfg.E_DimensionsZ = parseDouble(entryLine, index)

    ' F_CentreOfMassX
    cfg.F_CentreOfMassX = parseDouble(entryLine, index)

    ' G_CentreOfMassY
    cfg.G_CentreOfMassY = parseDouble(entryLine, index)

    ' H_CentreOfMassZ
    cfg.H_CentreOfMassZ = parseDouble(entryLine, index)

    ' I_nPercentSubmerged
    cfg.I_nPercentSubmerged = Int(parseDouble(entryLine, index))

    ' J_fTractionMultiplier
    cfg.J_fTractionMultiplier = parseDouble(entryLine, index)
    
    ' K_fTractionLoss
    cfg.K_fTractionLoss = parseDouble(entryLine, index)
    
    ' L_fTractionBias
    cfg.L_fTractionBias = parseDouble(entryLine, index)
    
    ' M_TransmissionDatanNumberOfGears
    cfg.M_TransmissionDatanNumberOfGears = Int(parseDouble(entryLine, index))
    
    ' N_TransmissionDatafMaxVelocity
    cfg.N_TransmissionDatafMaxVelocity = parseDouble(entryLine, index)
    
    ' O_TransmissionDatafEngineAcceleration
    cfg.O_TransmissionDatafEngineAcceleration = parseDouble(entryLine, index)
    
    ' P_TransmissionDatanDriveType
    currentChar = Mid$(entryLine, index, 1)
    Do While (currentChar = " ")
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    cfg.P_TransmissionDatanDriveType = currentChar
    index = index + 1
    
    ' Q_TransmissionDatanEngineType
    currentChar = Mid$(entryLine, index, 1)
    Do While (currentChar = " ")
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    cfg.Q_TransmissionDatanEngineType = currentChar
    index = index + 1
    
    ' R_fBrakeDeceleration
    cfg.R_fBrakeDeceleration = parseDouble(entryLine, index)
    
    ' S_fBrakeBias
    cfg.S_fBrakeBias = parseDouble(entryLine, index)
    
    ' T_bABS
    cfg.T_bABS = Int(parseDouble(entryLine, index))
    
    ' U_fSteeringLock
    cfg.U_fSteeringLock = parseDouble(entryLine, index)
    
    ' V_fSuspensionForceLevel
    cfg.V_fSuspensionForceLevel = parseDouble(entryLine, index)
    
    ' W_fSuspensionDampingLevel
    cfg.W_fSuspensionDampingLevel = parseDouble(entryLine, index)
    
    ' X_fSeatOffsetDistance
    cfg.X_fSeatOffsetDistance = parseDouble(entryLine, index)
    
    ' Y_fCollisionDamageMultiplier
    cfg.Y_fCollisionDamageMultiplier = parseDouble(entryLine, index)
    
    ' Z_nMonetaryValue
    cfg.Z_nMonetaryValue = CLng(parseDouble(entryLine, index))
    
    ' aa_SuspensionUpperLimit
    cfg.aa_SuspensionUpperLimit = parseDouble(entryLine, index)
    
    ' ab_SuspensionLowerLimit
    cfg.ab_SuspensionLowerLimit = parseDouble(entryLine, index)
    
    ' ac_SuspensionBiasBetweenFrontRear
    cfg.ac_SuspensionBiasBetweenFrontRear = parseDouble(entryLine, index)
    
    ' ad_SuspensionAntiDiveMultiplier
    cfg.ad_SuspensionAntiDiveMultiplier = parseDouble(entryLine, index)
    
    ' ae_Flags
    currentChar = Mid$(entryLine, index, 1)
    Do While (currentChar = " ") Or (currentChar = vbTab)
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    Do While (currentChar <> " ") And (currentChar <> vbTab)
        cfg.ae_Flags = cfg.ae_Flags & currentChar
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    index = index + 1
    
    ' af_FrontLights
    cfg.af_FrontLights = Int(parseDouble(entryLine, index))

    ' ag_RearLights
    cfg.ag_RearLights = Int(parseDouble(entryLine, index))
    
End Sub

Private Function parseDouble(entryLine As String, ByRef index As Integer)
    ' this function would not be necessary if everything was either the same length or separated by a single delimiter
    Dim currentChar As String
    Dim doubleString As String
    
    ' find the starting position
    currentChar = Mid$(entryLine, index, 1)
    Do While (Not IsNumeric(currentChar)) And (currentChar <> "-")
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    
    ' parse the number
    Do While (IsNumeric(currentChar)) Or (currentChar = "-") Or (currentChar = ".")
        doubleString = doubleString & currentChar
        index = index + 1
        currentChar = Mid$(entryLine, index, 1)
    Loop
    
    parseDouble = Val(doubleString)
End Function
