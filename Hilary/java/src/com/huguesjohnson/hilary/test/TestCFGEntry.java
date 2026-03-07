/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.hilary.test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.concurrent.atomic.AtomicInteger;

import org.junit.jupiter.api.Test;

import com.huguesjohnson.hilary.CFGEntry;

class TestCFGEntry{
	final static String CFG_CAR="OMNI            7800.0 4.0 2.0 6.1 0.0 0.0 -0.35 20  0.45 0.40 0.62 4 110.0 14.0 R D 3.0   0.70 0 20.0  6.2  0.01 0.3  0.40 70000 0.15 -0.25 0.45 0.0		12			0  3";
	final static String CFG_PLANE="LIMERICK        4000.0 1.5 6.0 3.5 0.0 0.0 -0.2  55  0.75 0.3  0.9  1 310.0 12.0 4 P 4.0   0.25 0 40.0  3.0  0.25 0.20 0.65 54000 0.20 -0.25 0.6  0.0		9047000		0  1";
	final static String CFG_CYCLE="DEVIL            900.0 1.3 2.1 2.5 0.0 0.25 0.0  104 1.5  0.66 0.32 4 280.0 35.0 R P 12.0  0.45 0 25.0  0.55 0.30 0.4  0.14 70000 0.09 -0.11 0.55 0.0		30203		1  1";
	final static String CFG_BOAT="BALTIC        	3400.0 1.0 13.0 7.0 0.0 0.0 0.0  15  3.50 11.0 0.65 5 210.0 1.2  R P 0.01  0.03 0 12.0  1.0  1.0  0.3  0.66 37000 0.08  0.1  0.0  0.0		880004		0  1";
	
	@Test
	void testCFGEntry(){
		CFGEntry entry=new CFGEntry(CFG_CAR,0);
		assertEquals("OMNI",entry.vehicleIdentifier);
		assertEquals(7800.0d,entry.mass);
		assertEquals(4.0d,entry.dimX);
		assertEquals(2.0d,entry.dimY);
		assertEquals(6.1d,entry.dimZ);
		assertEquals(0.0d,entry.centerOfMassX);
		assertEquals(0.0d,entry.centerOfMassY);
		assertEquals(-0.35d,entry.centerOfMassZ);
		assertEquals(20d,entry.percentSubmerged);
		assertEquals(0.45d,entry.tractionMultiplier);
		assertEquals(0.40d,entry.tractionLoss);
		assertEquals(0.62d,entry.tractionBias);
		assertEquals(4,entry.numberOfGears);
		assertEquals(110.0d,entry.maxVelocity);
		assertEquals(14.0d,entry.engineAcceleration);
		assertEquals("R",entry.driveType);
		assertEquals("D",entry.engineType);
		assertEquals(3.0d,entry.brakeDeceleration);
		assertEquals(0.70d,entry.brakeBias);
		assertEquals(0,entry.abs);
		assertEquals(20.0d,entry.steeringLock);
		assertEquals(6.2d,entry.suspensionForce);
		assertEquals(0.01d,entry.suspensionDamping);
		assertEquals(0.3d,entry.seatOffset);
		assertEquals(0.4d,entry.collisionDamage);
		assertEquals(70000,entry.monetaryValue);
		assertEquals(0.15d,entry.suspensionUpper);
		assertEquals(-0.25d,entry.suspensionLower);
		assertEquals(0.45d,entry.suspensionBias);
		assertEquals(0.0d,entry.antiDive);
		assertEquals("12",entry.flags);
		assertEquals(0,entry.frontLights);
		assertEquals(3,entry.rearLights);
		entry=new CFGEntry(CFG_PLANE,0);
		assertEquals("LIMERICK",entry.vehicleIdentifier);
		assertEquals(4000.0d,entry.mass);
		assertEquals(1.5d,entry.dimX);
		assertEquals(6.0d,entry.dimY);
		assertEquals(3.5d,entry.dimZ);
		assertEquals(0.0d,entry.centerOfMassX);
		assertEquals(0.0d,entry.centerOfMassY);
		assertEquals(-0.2d,entry.centerOfMassZ);
		assertEquals(55d,entry.percentSubmerged);
		assertEquals(0.75d,entry.tractionMultiplier);
		assertEquals(0.30d,entry.tractionLoss);
		assertEquals(0.9d,entry.tractionBias);
		assertEquals(1,entry.numberOfGears);
		assertEquals(310.0d,entry.maxVelocity);
		assertEquals(12.0d,entry.engineAcceleration);
		assertEquals("4",entry.driveType);
		assertEquals("P",entry.engineType);
		assertEquals(4.0d,entry.brakeDeceleration);
		assertEquals(0.25d,entry.brakeBias);
		assertEquals(0,entry.abs);
		assertEquals(40.0d,entry.steeringLock);
		assertEquals(3.0d,entry.suspensionForce);
		assertEquals(0.25d,entry.suspensionDamping);
		assertEquals(0.20d,entry.seatOffset);
		assertEquals(0.65d,entry.collisionDamage);
		assertEquals(54000,entry.monetaryValue);
		assertEquals(0.20d,entry.suspensionUpper);
		assertEquals(-0.25d,entry.suspensionLower);
		assertEquals(0.6d,entry.suspensionBias);
		assertEquals(0.0d,entry.antiDive);
		assertEquals("9047000",entry.flags);
		assertEquals(0,entry.frontLights);
		assertEquals(1,entry.rearLights);
		entry=new CFGEntry(CFG_CYCLE,0);
		assertEquals("DEVIL",entry.vehicleIdentifier);
		assertEquals(900.0d,entry.mass);
		assertEquals(1.3d,entry.dimX);
		assertEquals(2.1d,entry.dimY);
		assertEquals(2.5d,entry.dimZ);
		assertEquals(0.0d,entry.centerOfMassX);
		assertEquals(0.25d,entry.centerOfMassY);
		assertEquals(0.0d,entry.centerOfMassZ);
		assertEquals(104d,entry.percentSubmerged);
		assertEquals(1.5d,entry.tractionMultiplier);
		assertEquals(0.66d,entry.tractionLoss);
		assertEquals(0.32d,entry.tractionBias);
		assertEquals(4,entry.numberOfGears);
		assertEquals(280.0d,entry.maxVelocity);
		assertEquals(35.0d,entry.engineAcceleration);
		assertEquals("R",entry.driveType);
		assertEquals("P",entry.engineType);
		assertEquals(12.0d,entry.brakeDeceleration);
		assertEquals(0.45d,entry.brakeBias);
		assertEquals(0,entry.abs);
		assertEquals(25.0d,entry.steeringLock);
		assertEquals(0.55d,entry.suspensionForce);
		assertEquals(0.30d,entry.suspensionDamping);
		assertEquals(0.40d,entry.seatOffset);
		assertEquals(0.14d,entry.collisionDamage);
		assertEquals(70000,entry.monetaryValue);
		assertEquals(0.09d,entry.suspensionUpper);
		assertEquals(-0.11d,entry.suspensionLower);
		assertEquals(0.55d,entry.suspensionBias);
		assertEquals(0.0d,entry.antiDive);
		assertEquals("30203",entry.flags);
		assertEquals(1,entry.frontLights);
		assertEquals(1,entry.rearLights);		
		entry=new CFGEntry(CFG_BOAT,0);
		assertEquals("BALTIC",entry.vehicleIdentifier);
		assertEquals(3400.0d,entry.mass);
		assertEquals(1.0d,entry.dimX);
		assertEquals(13.0d,entry.dimY);
		assertEquals(7.0d,entry.dimZ);
		assertEquals(0.0d,entry.centerOfMassX);
		assertEquals(0.0d,entry.centerOfMassY);
		assertEquals(0.0d,entry.centerOfMassZ);
		assertEquals(15d,entry.percentSubmerged);
		assertEquals(3.50d,entry.tractionMultiplier);
		assertEquals(11.0d,entry.tractionLoss);
		assertEquals(0.65d,entry.tractionBias);
		assertEquals(5,entry.numberOfGears);
		assertEquals(210.0d,entry.maxVelocity);
		assertEquals(1.2d,entry.engineAcceleration);
		assertEquals("R",entry.driveType);
		assertEquals("P",entry.engineType);
		assertEquals(0.01d,entry.brakeDeceleration);
		assertEquals(0.03d,entry.brakeBias);
		assertEquals(0,entry.abs);
		assertEquals(12.0d,entry.steeringLock);
		assertEquals(1.0d,entry.suspensionForce);
		assertEquals(1.00d,entry.suspensionDamping);
		assertEquals(0.3d,entry.seatOffset);
		assertEquals(0.66d,entry.collisionDamage);
		assertEquals(37000,entry.monetaryValue);
		assertEquals(0.08d,entry.suspensionUpper);
		assertEquals(0.1d,entry.suspensionLower);
		assertEquals(0.0d,entry.suspensionBias);
		assertEquals(0.0d,entry.antiDive);
		assertEquals("880004",entry.flags);
		assertEquals(0,entry.frontLights);
		assertEquals(1,entry.rearLights);		
	}
	
	@Test
	void testParseString(){
		assertEquals("OMNI",CFGEntry.parseString(CFG_CAR,(new AtomicInteger(0))));
		assertEquals("R",CFGEntry.parseString(CFG_CAR,(new AtomicInteger(80))));
		assertEquals("D",CFGEntry.parseString(CFG_CAR,(new AtomicInteger(82))));
		assertEquals("LIMERICK",CFGEntry.parseString(CFG_PLANE,(new AtomicInteger(0))));
		assertEquals("4",CFGEntry.parseString(CFG_PLANE,(new AtomicInteger(80))));
		assertEquals("P",CFGEntry.parseString(CFG_PLANE,(new AtomicInteger(82))));
		assertEquals("DEVIL",CFGEntry.parseString(CFG_CYCLE,(new AtomicInteger(0))));
		assertEquals("R",CFGEntry.parseString(CFG_CYCLE,(new AtomicInteger(80))));
		assertEquals("P",CFGEntry.parseString(CFG_CYCLE,(new AtomicInteger(82))));
		assertEquals("BALTIC",CFGEntry.parseString(CFG_BOAT,(new AtomicInteger(0))));
		assertEquals("R",CFGEntry.parseString(CFG_BOAT,(new AtomicInteger(80))));
		assertEquals("P",CFGEntry.parseString(CFG_BOAT,(new AtomicInteger(82))));
	}
	
	@Test
	void testParseDouble(){
		AtomicInteger index=new AtomicInteger(0);
		assertEquals(7800.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(4.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(2.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(6.1d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(-0.35d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(20.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.45d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.40d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.62d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(4.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(110.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(14.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(3.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.70d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(20.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(6.2d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.01d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.3d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.40d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(70000.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.15d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(-0.25d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.45d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(12.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CAR,index));
		assertEquals(3.0d,CFGEntry.parseDouble(CFG_CAR,index));
		index=new AtomicInteger(0);
		assertEquals(4000.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(1.5d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(6.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(3.5d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(-0.2d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(55.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.75d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.3d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.9d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(310.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(12.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(4.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(4.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.25d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(40.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(3.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.25d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.20d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.65d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(54000.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.20d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(-0.25d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.6d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(9047000.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_PLANE,index));
		index=new AtomicInteger(0);
		assertEquals(900.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(1.3d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(2.1d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(2.5d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.25d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(104d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(1.5d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.66d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.32d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(4.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(280.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(35.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(12.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.45d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(25.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.55d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.30d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.4d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.14d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(70000.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.09d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(-0.11d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.55d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(30203.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_CYCLE,index));
		index=new AtomicInteger(0);
		assertEquals(3400.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(13.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(7.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(15.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(3.50d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(11.00d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.65d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(5.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(210.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(1.2d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.01d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.03d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(12.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.3d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.66d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(37000.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.08d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.1d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(880004.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(0.0d,CFGEntry.parseDouble(CFG_BOAT,index));
		assertEquals(1.0d,CFGEntry.parseDouble(CFG_BOAT,index));
	}
	
	@Test
	void testToString(){
		String[] cfgs={CFG_CAR,CFG_CYCLE,CFG_PLANE,CFG_BOAT};
		for(String s:cfgs){
			CFGEntry entry0=new CFGEntry(s,0);
			CFGEntry entry1=new CFGEntry(entry0.toString(),0);
			assertEquals(entry0.vehicleIdentifier,entry1.vehicleIdentifier);
			assertEquals(entry0.mass,entry1.mass);
			assertEquals(entry0.dimX,entry1.dimX);
			assertEquals(entry0.dimY,entry1.dimY);
			assertEquals(entry0.dimZ,entry1.dimZ);
			assertEquals(entry0.centerOfMassX,entry1.centerOfMassX);
			assertEquals(entry0.centerOfMassY,entry1.centerOfMassY);
			assertEquals(entry0.centerOfMassZ,entry1.centerOfMassZ);
			assertEquals(entry0.percentSubmerged,entry1.percentSubmerged);
			assertEquals(entry0.tractionMultiplier,entry1.tractionMultiplier);
			assertEquals(entry0.tractionLoss,entry1.tractionLoss);
			assertEquals(entry0.tractionBias,entry1.tractionBias);
			assertEquals(entry0.numberOfGears,entry1.numberOfGears);
			assertEquals(entry0.maxVelocity,entry1.maxVelocity);
			assertEquals(entry0.engineAcceleration,entry1.engineAcceleration);
			assertEquals(entry0.driveType,entry1.driveType);
			assertEquals(entry0.engineType,entry1.engineType);
			assertEquals(entry0.brakeDeceleration,entry1.brakeDeceleration);
			assertEquals(entry0.brakeBias,entry1.brakeBias);
			assertEquals(entry0.abs,entry1.abs);
			assertEquals(entry0.steeringLock,entry1.steeringLock);
			assertEquals(entry0.suspensionForce,entry1.suspensionForce);
			assertEquals(entry0.suspensionDamping,entry1.suspensionDamping);
			assertEquals(entry0.suspensionUpper,entry1.suspensionUpper);
			assertEquals(entry0.suspensionLower,entry1.suspensionLower);
			assertEquals(entry0.suspensionBias,entry1.suspensionBias);
			assertEquals(entry0.antiDive,entry1.antiDive);
			assertEquals(entry0.seatOffset,entry1.seatOffset);
			assertEquals(entry0.collisionDamage,entry1.collisionDamage);
			assertEquals(entry0.monetaryValue,entry1.monetaryValue);
			assertEquals(entry0.flags,entry1.flags);
			assertEquals(entry0.frontLights,entry1.frontLights);
			assertEquals(entry0.rearLights,entry1.rearLights);
		}
	}
	
	@Test
	void testPadZeros(){
		assertEquals("7800.0",(CFGEntry.padZeros("7800.")));
		assertEquals("0.0",(CFGEntry.padZeros("0.")));
		assertEquals("0.0",(CFGEntry.padZeros(".0")));
		assertEquals("1.0",(CFGEntry.padZeros("1.")));
		assertEquals("0.1",(CFGEntry.padZeros(".1")));
		assertEquals("-1.0",(CFGEntry.padZeros("-1.")));
	}

	@Test
	void testMessWithString(){
		assertEquals("OMNI            7800.0 ",(CFGEntry.messWithString("OMNI            7800.0",23)));
		assertEquals("OMNI            7800.0 ",(CFGEntry.messWithString("OMNI            7800.0 ",23)));
	}

	@Test
	void testPadRight(){
		assertEquals("OMNI          ",(CFGEntry.padRight("OMNI",14)));
	}	
	
	@Test
	void testFormatDouble(){
		assertEquals("7800.",(CFGEntry.formatDouble(7800.0d,"#####.#")));
		assertEquals("7800.",(CFGEntry.formatDouble(7800.0d,"#####.##")));
		assertEquals("7800.",(CFGEntry.formatDouble(7800,"#####.#")));
		assertEquals("-0.35",(CFGEntry.formatDouble(-0.35d,"#####.##")));
		assertEquals("0.",(CFGEntry.formatDouble(0,"#####.#")));
		assertEquals("0.40",(CFGEntry.formatDouble(0.4,"#.##")));
	}
	
}