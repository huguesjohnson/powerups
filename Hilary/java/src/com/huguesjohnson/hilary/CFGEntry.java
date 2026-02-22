/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.hilary;

/*
 * Originally written in Visual Basic 6,converted to Java by Google Gemini.
 */

public class CFGEntry{//effectively a struct
    public String vehicleIdentifier;
    public double mass;
    public double dimX, dimY, dimZ;
    public double centerOfMassX, centerOfMassY, centerOfMassZ;
    public int percentSubmerged;
    public double tractionMultiplier, tractionLoss, tractionBias;
    public int numberOfGears;
    public double maxVelocity, engineAcceleration;
    public String driveType, engineType;
    public double brakeDeceleration, brakeBias;
    public int abs;
    public double steeringLock;
    public double suspensionForce, suspensionDamping, suspensionUpper, suspensionLower, suspensionBias, antiDive;
    public double seatOffset, collisionDamage;
    public int monetaryValue;
    public String flags;
    public int frontLights, rearLights;
    
    // Internal tracking
    public int rowIndex; 
    public boolean isDirty = false;
}