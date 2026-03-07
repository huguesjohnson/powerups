/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.hilary;

import java.text.DecimalFormat;
import java.util.concurrent.atomic.AtomicInteger;

/*
 * Originally written in Visual Basic 6,converted to Java by Google Gemini.
 * Although this needed a decent amount of work after that.
 */

public class CFGEntry{
	public String vehicleIdentifier;
	public double mass;
	public double dimX;
	public double dimY;
	public double dimZ;
	public double centerOfMassX;
	public double centerOfMassY;
	public double centerOfMassZ;
	public int percentSubmerged;
	public double tractionMultiplier;
	public double tractionLoss;
	public double tractionBias;
	public int numberOfGears;
	public double maxVelocity;
	public double engineAcceleration;
	public String driveType;
	public String engineType;
	public double brakeDeceleration;
	public double brakeBias;
	public int abs;
	public double steeringLock;
	public double suspensionForce;
	public double suspensionDamping;
	public double suspensionUpper;
	public double suspensionLower;
	public double suspensionBias;
	public double antiDive;
	public double seatOffset;
	public double collisionDamage;
	public int monetaryValue;
	public String flags;
	public int frontLights;
	public int rearLights;
	//internal tracking
	public int rowIndex; 
	public boolean isDirty=false;

	/**
	 * Recreates Public Sub ParseEntry(entryLine As String, ByRef cfg As CFGEntryType 
	 * as a Java Constructor.
	 */
	public CFGEntry(String entryLine,int rowIndex){
		this.rowIndex=rowIndex;
		AtomicInteger index=new AtomicInteger(0);
        //(A) vehicle identifier
		this.vehicleIdentifier=parseString(entryLine,index);
		//(B) fMass
		this.mass=parseDouble(entryLine,index);
		//(C) Dimensions.x
		this.dimX=parseDouble(entryLine,index);
		//(D) Dimensions.y
		this.dimY=parseDouble(entryLine,index);
        //(E) Dimensions.z
		this.dimZ=parseDouble(entryLine,index);
		//(F) CentreOfMass.x
		this.centerOfMassX=parseDouble(entryLine,index);
		//(G) CentreOfMass.y
		this.centerOfMassY=parseDouble(entryLine,index);
		//(H) CentreOfMass.z
		this.centerOfMassZ=parseDouble(entryLine,index);
		//(I) nPercentSubmerged
		this.percentSubmerged=(int)parseDouble(entryLine,index);
		//(J) fTractionMultiplier
		this.tractionMultiplier=parseDouble(entryLine,index);
		//(K) fTractionLoss
		this.tractionLoss=parseDouble(entryLine,index);
		//(L) fTractionBias
		this.tractionBias=parseDouble(entryLine,index);
		//(M) TransmissionData.nNumberOfGears
		this.numberOfGears=(int)parseDouble(entryLine,index);
        //(N) TransmissionData.fMaxVelocity
		this.maxVelocity=parseDouble(entryLine,index);
		//(O) TransmissionData.fEngineAcceleration
		this.engineAcceleration=parseDouble(entryLine,index);
		//(P) TransmissionData.nDriveType
		this.driveType=parseString(entryLine,index);
		//(Q) TransmissionData.nEngineType
		this.engineType=parseString(entryLine,index);
		//(R) fBrakeDeceleration
		this.brakeDeceleration=parseDouble(entryLine,index);
		//(S) fBrakeBias
		this.brakeBias=parseDouble(entryLine,index);
		//(T) bABS
		this.abs=(int)parseDouble(entryLine,index);
		//(U) fSteeringLock
		this.steeringLock=parseDouble(entryLine,index);
		//(V) fSuspensionForceLevel
		this.suspensionForce=parseDouble(entryLine,index);
		//(W) fSuspensionDampingLevel
		this.suspensionDamping=parseDouble(entryLine,index);
        //(X) fSeatOffsetDistance
		this.seatOffset=parseDouble(entryLine,index);
		//(Y) fCollisionDamageMultiplier
        this.collisionDamage=parseDouble(entryLine,index);
        //(Z) nMonetaryValue
        this.monetaryValue=(int)parseDouble(entryLine,index);
		//(aa) suspension upper limit
		this.suspensionUpper=parseDouble(entryLine,index);
		//(ab) suspension lower limit
		this.suspensionLower=parseDouble(entryLine,index);
		//(ac) suspension bias between front and rear
		this.suspensionBias=parseDouble(entryLine,index);
        //(ad) suspension anti-dive multiplier
		this.antiDive=parseDouble(entryLine,index);
		//(ae) flags
		this.flags=parseString(entryLine,index);
		//(af) front lights
		this.frontLights=(int)parseDouble(entryLine,index);
		//(ag) rear lights
		this.rearLights=(int)parseDouble(entryLine,index);
    }    
    
    /**
     * Scans the line for the next non-whitespace string.
     * Made this public & static for unit testing.
     */
    public static String parseString(String entryLine, AtomicInteger startIndex){
    	int currentIndex=startIndex.get();
    	int length=entryLine.length();
    	StringBuilder sb=new StringBuilder();
    	//skip leading whitespace 
    	while((currentIndex<length)&&(Character.isWhitespace(entryLine.charAt(currentIndex)))){
    		currentIndex++;
		}
    	//read until the next whitespace 
    	while((currentIndex<length)&&(!Character.isWhitespace(entryLine.charAt(currentIndex)))){
    		sb.append(entryLine.charAt(currentIndex));
    		currentIndex++;
		}
    	startIndex.set(currentIndex);
    	return(sb.toString());
    }    
    
    /**
     * Recreates CfgEntryToString from MainForm.frm 
     * Converts the object back into a string line for handling.cfg
     * There are many things that could be done better here.
     */
    public String toString(){
    	String cfgStr="";
    	String tempStr="";
    	int expectedLength=14;
    	//(A) vehicle identifier
    	cfgStr=padRight(this.vehicleIdentifier,expectedLength);
    	//(B) fMass
        tempStr=padZeros(formatDouble(this.mass,"#####.#"));
        if(tempStr.length()<7){
        	tempStr=String.format("%7s",tempStr);
        }
        expectedLength+=7;
        cfgStr=cfgStr+" "+tempStr;
        expectedLength++;//expectedLength should be 22 now
        //(C) Dimensions.x
        cfgStr=messWithString(cfgStr,expectedLength++);//expectedLength should be 22 now
        tempStr=padZeros(formatDouble(this.dimX,"##.#"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(D) Dimensions.y
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.dimY,"##.#"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(E) Dimensions.z
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.dimZ,"##.#"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(F) CentreOfMass.x
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.centerOfMassX,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(G) CentreOfMass.y
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.centerOfMassY,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(H) CentreOfMass.z
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.centerOfMassZ,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(I) nPercentSubmerged
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=Integer.toString(this.percentSubmerged);
        if(tempStr.length()==1){
        	tempStr+="  ";
        }else if(tempStr.length()==2){
        	tempStr+=" ";
        }
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(J) fTractionMultiplier
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.tractionMultiplier,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(K) fTractionLoss
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.tractionLoss,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(L) fTractionBias
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.tractionBias,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(M) TransmissionData.nNumberOfGears
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=String.valueOf(this.numberOfGears);
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(N) TransmissionData.fMaxVelocity
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.maxVelocity,"###.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(O) TransmissionData.fEngineAcceleration
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.engineAcceleration,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(P) TransmissionData.nDriveType
        cfgStr=messWithString(cfgStr,expectedLength);
        cfgStr+=this.driveType;
        expectedLength+=2;
        //(Q) TransmissionData.nEngineType
        cfgStr=messWithString(cfgStr,expectedLength);
        cfgStr+=this.engineType;
        expectedLength+=2;
        //(R) fBrakeDeceleration
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.brakeDeceleration,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=("##.##".length()+1);//that's just how this one works
        //(S) fBrakeBias
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.brakeBias,"#.##"));
        //while (tempStr.length() < 4) { tempStr += "0"; }
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(T) bABS
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=String.valueOf(this.abs);
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(U) fSteeringLock
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.steeringLock,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=("##.##".length()+1);
        //(V) fSuspensionForceLevel
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.suspensionForce,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=("#.##".length()+1);
        //(W) fSuspensionDampingLevel
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.suspensionDamping,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(X) fSeatOffsetDistance
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.seatOffset,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=("#.##".length()+1);
        //(Y) fCollisionDamageMultiplier
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.collisionDamage,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(Z) nMonetaryValue
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=String.format("%-6d",this.monetaryValue);
        cfgStr+=tempStr;
        expectedLength+=6;
        //(aa) suspension upper limit
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.suspensionUpper,"##.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(ab) suspension lower limit
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.suspensionLower,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(ac) suspension bias between front and rear
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.suspensionBias,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(ad) suspension anti-dive multiplier
        cfgStr=messWithString(cfgStr,expectedLength);
        tempStr=padZeros(formatDouble(this.antiDive,"#.##"));
        cfgStr+=tempStr;
        expectedLength+=(tempStr.length()+1);
        //(ae) flags
//        cfgStr=messWithString(cfgStr,expectedLength);
        cfgStr+="\t\t";
        cfgStr+=this.flags;
        cfgStr+="\t\t\t";
        expectedLength+=(this.flags.length()+4);
        //(af) front lights+(ag) rear lights
        cfgStr+=this.frontLights+"  "+this.rearLights;
        return(cfgStr);
    }    
    
    /**
     * Recreates the VB6 parseDouble logic.
     * Scans entryLine starting at startIndex to find and parse the next number.
     * Updates startIndex to the position after the found number.
     * Made this public & static for unit testing.
     */
    public static double parseDouble(String entryLine,AtomicInteger startIndex){
    	StringBuilder sb=new StringBuilder();
    	int length=entryLine.length();
    	int currentIndex=startIndex.get();
    	//1. Find the starting position 
    	//Skip characters that aren't numeric or a negative sign
    	while(currentIndex<length){
    		char currentChar=entryLine.charAt(currentIndex);
    		if((Character.isDigit(currentChar))||(currentChar=='-')){
    			break;
    		}
    		currentIndex++;
    	}
    	//2. Parse the number 
    	//Collect digits, signs, and decimal points
    	while(currentIndex<length){
    		char currentChar=entryLine.charAt(currentIndex);
    		if((Character.isDigit(currentChar))||(currentChar=='-')||(currentChar=='.')){
    			sb.append(currentChar);
    			currentIndex++;
            }else{
            	break;
           	}
    	}
    	//Update the index for the next call (mimics original ByRef index) 
    	startIndex.set(currentIndex);
    	//Convert the collected string to a double (mimics Val)
    	try{
    		return(Double.parseDouble(sb.toString()));
		}catch(NumberFormatException e){
			return(0.0d);
		}
    }
    
    /**
     * Port of method from original VB6 implementation.
     * There's a better way to do this - this is just a straight port of the code.
     * Made this public & static for unit testing.
     */    
    public static String padZeros(String s){ 
    	if(s.endsWith(".")){s+="0";}
    	if(s.startsWith(".")){s="0"+s;}
    	if(s.startsWith("-.")){s="-0."+s.substring(2);}
    	return(s);
    }

    /**
     * Port of method from original VB6 implementation.
     * There's a better way to do this - this is just a straight port of the code.
     * Made this public & static for unit testing.
     */    
    public static String messWithString(String s,int length){
    	StringBuilder sb=new StringBuilder(s);
    	while(sb.length()<length){sb.append(" ");}
    	if(sb.charAt(sb.length()-1)!=' '){sb.append(" ");}
    	return(sb.toString());
    }

    /**
     * Port of method from original VB6 implementation.
     * There's a better way to do this - this is just a straight port of the code.
     * Made this public & static for unit testing.
     */    
    public static String padRight(String s,int n){
    	return(String.format("%-"+n+"s",s));
    }

    /**
     * Port of method from original VB6 implementation.
     * There's a better way to do this - this is just a straight port of the code.
     * Made this public & static for unit testing.
     */    
    public static String formatDouble(double d,String pattern){
    	//Custom formatting to match VB6 Format$ behavior
    	DecimalFormat df=new DecimalFormat(pattern);
    	if(pattern.contains(".")){
    		df.setDecimalSeparatorAlwaysShown(true);
    	}
    	String f=df.format(d);
    	//handle cases where the number is like 0.4 and the pattern is #.## so it should be 0.40
    	if(pattern.endsWith(".##")){
    		int indexOf=f.indexOf(".");
    		if(indexOf==(f.length()-2)){
    			f+="0";
    		}
    	}
    	return(f);
    } 
    
}