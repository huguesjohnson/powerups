/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.hilary;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.Insets;
import java.awt.Taskbar;
import java.awt.Toolkit;
import java.awt.Taskbar.Feature;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSlider;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.SwingUtilities;

/*
 * Originally written in Visual Basic 6,converted to Java by Google Gemini.
 * Although this needed a decent amount of work after that.
 */
public class HilaryMain extends JFrame{
	private static final long serialVersionUID=666L;
	private JPanel filePanel;//Section 1: File Path and Browse 
	private JPanel selectorPanel;//Section 2: 7 ComboBoxes and Labels [cite: 48-59,62-63]
	private JPanel sliderPanel;//Section 3: 19 Sliders and Labels [cite: 60,69-113]
	private JPanel checkboxPanel;//Section 4: 27 Checkboxes [cite: 9-47]
	private JPanel actionButtonPanel;//Section 5: Bottom Buttons [cite: 4-8]
	private JTextField textFilePath;
	private JButton btnBrowse;
	private JTextField textBackupFile;
	private JComboBox<String> comboSelectVehicle;
	private JComboBox<String> comboEngineType;
	private JComboBox<String> comboDriveType;
	private JComboBox<String> comboNumberOfGears;
	private JComboBox<String> comboABS;
	private JComboBox<String> comboFrontLights;
	private JComboBox<String> comboRearLights;
	private JSlider sliderMass;
	private JSlider sliderDimensionsX;
	private JSlider sliderDimensionsY;
	private JSlider sliderDimensionsZ;
	private JSlider sliderCenterOfMassX;
	private JSlider sliderCenterOfMassY;
	private JSlider sliderCenterOfMassZ;
	private JSlider sliderPercentSubmerged;
	private JSlider sliderTractionMultiplier;
	private JSlider sliderTractionLoss;
	private JSlider sliderTractionBias;
	private JSlider sliderMaxVelocity;
	private JSlider sliderEngineAcceleration;
	private JSlider sliderBrakeDeceleration;
	private JSlider sliderBrakeBias;
	private JSlider sliderSteeringLock;
	private JSlider sliderMonetaryValue;
	private JSlider sliderCollisionDamageMultiplier;
	private JSlider sliderSeatOffsetDistance;
	private JCheckBox check1GBoost;
	private JCheckBox check2GBoost;
	private JCheckBox checkRevBonnet;
	private JCheckBox checkHangingBoot;
	private JCheckBox checkNoDoors;
	private JCheckBox checkIsVan;
	private JCheckBox checkIsBus;
	private JCheckBox checkIsLow;
	private JCheckBox checkDblExhaust;
	private JCheckBox checkTailgateBoot;
	private JCheckBox checkNoSwingBoot;
	private JCheckBox checkNonPlayerStabiliser;
	private JCheckBox checkNeutralHandling;
	private JCheckBox checkHasNoRoof;
	private JCheckBox checkIsBig;
	private JCheckBox checkHalogenLights;   
	private JCheckBox checkIsBike;
	private JCheckBox checkIsHeli;
	private JCheckBox checkIsPlane;
	private JCheckBox checkIsBoat;
	private JCheckBox checkNoExhaust;
	private JCheckBox checkRearWheel1st;
	private JCheckBox checkHandbrakeTyre;
	private JCheckBox checkSitInBoat;
	private JCheckBox checkFatRearW;
	private JCheckBox checkNarrowFrontW;
	private JCheckBox checkGoodInSand;
	private JButton btnEditSuspension;
	private JButton btnCancel;
	private JButton btnSave;
	//Data handling
	private List<CFGEntry> vehicles=new ArrayList<>();
	private int lastVehicleIndex=-1;

	public HilaryMain(){
		setTitle("Hilary - handling.cfg Editor ");
		setMinimumSize(new Dimension(1100,1000));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		initComponents();
	}

	private void initComponents(){
    	this.attemptToSetIcon();
		//use GridBagLayout to stack components vertically
		setLayout(new GridBagLayout());
		//general constraints for all panels
		GridBagConstraints gbc=new GridBagConstraints();
		gbc.fill=GridBagConstraints.BOTH;//allow panels to expand horizontally and vertically
		gbc.insets=new Insets(2,5,2,5);//padding between sections
		gbc.gridx=0;//all panels stay in the first column
		//file panel
		filePanel=new JPanel();
		setupFilePanel();	 
		add(filePanel,gbc);
		//panel with all the comboboxes
		selectorPanel=new JPanel();
		setupSelectorPanel();
		add(selectorPanel,gbc);
		//panel with all the sliders
		sliderPanel=new JPanel();
		setupSliderPanel();
		add(sliderPanel,gbc);
		//panel with all the checkboxes
		checkboxPanel=new JPanel();
		setupCheckboxPanel();
		add(checkboxPanel,gbc);
		//panel with the three buttons
		actionButtonPanel=new JPanel();
		setupActionButtonPanel();
		add(actionButtonPanel,gbc);
	}

	private void setupFilePanel(){
		filePanel.setLayout(new GridBagLayout());
		GridBagConstraints gbc=new GridBagConstraints();
		gbc.insets=new Insets(5,5,5,5);
		gbc.fill=GridBagConstraints.HORIZONTAL;
		//"File Path:" label
		gbc.gridx=0;
		gbc.gridy=0;
		gbc.weightx=0;
		filePanel.add(new JLabel("File Path:"),gbc);
		//File Path Read-Only Text Field
		textFilePath=new JTextField("<click browse button to select a file>");
		textFilePath.setEditable(false);
		textFilePath.setBackground(new Color(224,224,224));
		gbc.gridx=1;
		gbc.weightx=1.0;//This field expands
		filePanel.add(textFilePath,gbc);
		//"Browse..." Button
		btnBrowse=new JButton("Browse..");
		btnBrowse.addActionListener(e->{
			JFileChooser chooser=new JFileChooser();
			//default path often used in the original 
			chooser.setCurrentDirectory(new File("C:\\Program Files\\Rockstar Games\\Grand Theft Auto Vice City\\data"));
			if(chooser.showOpenDialog(this)==JFileChooser.APPROVE_OPTION){
				File selectedFile=chooser.getSelectedFile();
				loadHandlingFile(selectedFile);
			}
		});	
		gbc.gridx=2;
		gbc.weightx=0;
		filePanel.add(btnBrowse,gbc);
		//"Backup File:" Label
		gbc.gridx=3;
		gbc.weightx=0;
		filePanel.add(new JLabel("Backup File:"),gbc);
		//Backup File Read-Only Text Field 
		textBackupFile=new JTextField("									 ");
		textBackupFile.setEditable(false);
		textBackupFile.setBackground(new Color(224,224,224));
		gbc.gridx=4;
		gbc.weightx=1.0;//this field also expands
		filePanel.add(textBackupFile,gbc);
	}
 
	private void setupSelectorPanel(){
		//using GridBagLayout for precise alignment of labels and combos
		selectorPanel.setLayout(new GridBagLayout());
		selectorPanel.setBorder(BorderFactory.createTitledBorder("Vehicle&Transmission"));
		GridBagConstraints gbc=new GridBagConstraints();
		gbc.insets=new Insets(4,8,4,8);
		gbc.fill=GridBagConstraints.HORIZONTAL;
		gbc.anchor=GridBagConstraints.EAST;
		//Row 0: Select Vehicle(The primary selector) 
		gbc.gridx=0;
		gbc.gridy=0;
		gbc.weightx=0;
		selectorPanel.add(new JLabel("Select Vehicle:"),gbc);
		comboSelectVehicle=new JComboBox<>();
		comboSelectVehicle.addActionListener(e->{
			//Save changes to the item we are navigating AWAY from 
			if(lastVehicleIndex!=-1){
		        updateLastItem(lastVehicleIndex);
			}
			//2. Get the newly selected vehicle index
			int selectedIndex=comboSelectVehicle.getSelectedIndex();
			if((selectedIndex>=0)&&(selectedIndex<vehicles.size())){
				CFGEntry selectedCfg=vehicles.get(selectedIndex);
				//3. Update internal tracking
				lastVehicleIndex=selectedIndex;
				//4. Update UI Components
				updateSliders(selectedCfg);
				updateComboBoxes(selectedCfg);
				updateCheckBoxes(selectedCfg);
		    }
		});		
		comboSelectVehicle.setBackground(new Color(224,224,224));
		gbc.gridx=1;
		gbc.weightx=1.0;
		selectorPanel.add(comboSelectVehicle,gbc);
		//Row 1: Engine and Drive Type
		addComboRow(1,
				"Engine Type:",comboEngineType=new JComboBox<>(new String[]{"P(Petrol)","D(Diesel)","E(Electric)"}),
				"Drive Type:",comboDriveType=new JComboBox<>(new String[]{ "F(Front-wheel)","R(Rear-wheel)","4(Four-wheel)"}));
		//Row 2: Gears and ABS
		addComboRow(2,
				"Number of Gears:",comboNumberOfGears=new JComboBox<>(new String[]{"1","2","3","4"}),
				"ABS:",comboABS=new JComboBox<>(new String[]{"0(False)","1(True)"}));
		// Row 3: Front and Rear Lights
		addComboRow(3,
				"Front Lights:",comboFrontLights=new JComboBox<>(new String[]{"0(Long)","1(Small)","2(Big)","3(Tall)"}),
				"Rear Lights:",comboRearLights=new JComboBox<>(new String[]{"0(Long)","1(Small)","2(Big)","3(Tall)"}));
		// Set all to disabled initially,matching original Form_Load state 
		disableAllSelectors();
	}
	
	private void updateComboBoxes(CFGEntry cfg){
		//Drive/Engine Type
		setSelectedByLeadingChar(comboDriveType,cfg.driveType);
		setSelectedByLeadingChar(comboEngineType,cfg.engineType);		
		//Number of gears
		setSelectedByLeadingChar(comboNumberOfGears,String.valueOf(cfg.numberOfGears));		
		//ABS: 0 or 1 
		setSelectedByLeadingChar(comboABS,String.valueOf(cfg.abs));
	    //Lights
		setSelectedByLeadingChar(comboFrontLights,String.valueOf(cfg.frontLights));
		setSelectedByLeadingChar(comboRearLights,String.valueOf(cfg.rearLights));
	}
	
	private void updateSliders(CFGEntry cfg){
		//Mass [1.0 to 50000.0]
		sliderMass.setValue((int)cfg.mass);
		//Dimensions [0.0 > x > 20.0]
		sliderDimensionsX.setValue((int)(cfg.dimX*10));
		sliderDimensionsY.setValue((int)(cfg.dimY*10));
		sliderDimensionsZ.setValue((int)(cfg.dimZ*10));
		//Center of Mass: [-10.0 > x > 10.0] 
		//VB6 used: (value + 10) * 10
		sliderCenterOfMassX.setValue((int)((cfg.centerOfMassX+10)*10));
		sliderCenterOfMassY.setValue((int)((cfg.centerOfMassY+10)*10));
		sliderCenterOfMassZ.setValue((int)((cfg.centerOfMassZ+10)*10));
		//Percent Submerged: [10 to 120]
		sliderPercentSubmerged.setValue(cfg.percentSubmerged);	
		//Traction Multiplier: [-4.0 to 4.0] scaled by 100
		sliderTractionMultiplier.setValue((int)((cfg.tractionMultiplier+4)*100));
		//Traction Loss: [0.0 to 25.0] scaled by 100 
		sliderTractionLoss.setValue((int)(cfg.tractionLoss*100));
		//Traction Bias: [0.0 to 1.0] scaled by 100
		sliderTractionBias.setValue((int)(cfg.tractionBias*100));
		//Max Velocity
		sliderMaxVelocity.setValue((int)cfg.maxVelocity);
		//Engine Acceleration: [0.1 to 50.0] scaled by 10
		sliderEngineAcceleration.setValue((int)(cfg.engineAcceleration*10));	    
		//Brake Deceleration: [0.1 to 20.0]
		sliderBrakeDeceleration.setValue((int)(cfg.brakeDeceleration*10));
		//Brake Bias: [0.0 to 1.0] scaled by 10
		sliderBrakeBias.setValue((int)(cfg.brakeBias*10));
		//Steering Lock: [10.0 to 40.0]
		sliderSteeringLock.setValue((int)cfg.steeringLock);
		//Seat Offset Distance: [0.1 to 2.0] scaled by 10
		sliderSeatOffsetDistance.setValue((int)(cfg.seatOffset*10));
		//Collision Damage Multiplier: [0.0 to 5.0] scaled by 10
		sliderCollisionDamageMultiplier.setValue((int)(cfg.collisionDamage*10));
		//Monetary Value: [1 to 110000]
		sliderMonetaryValue.setValue(cfg.monetaryValue);
	}

	private void updateCheckBoxes(CFGEntry cfg){
		//Reverse the flags string to match the VB6 parsing logic 
		String flags=cfg.flags;
		String flagsRev=new StringBuilder(flags).reverse().toString();
		int len=flagsRev.length();
		//Digit 1: 1G_BOOST (1), 2G_BOOST (2), REV_BONNET (4), HANGING_BOOT (8)
		if(len>0){
			int flag=Integer.parseInt(flagsRev.substring(0,1),16);
			check1GBoost.setSelected((flag&HandlingConstants.G1_BOOST)!=0);
			check2GBoost.setSelected((flag&HandlingConstants.G2_BOOST)!=0);
			checkRevBonnet.setSelected((flag&HandlingConstants.REV_BONNET)!=0);
			checkHangingBoot.setSelected((flag&HandlingConstants.HANGING_BOOT)!=0);
	    }else{
			check1GBoost.setSelected(false);
			check2GBoost.setSelected(false);
			checkRevBonnet.setSelected(false);
			checkHangingBoot.setSelected(false);
	    }
		//Digit 2: NO_DOORS (1), IS_VAN (2), IS_BUS (4), IS_LOW (8)
		if(len>1){
			int flag=Integer.parseInt(flagsRev.substring(1,2),16);
			checkNoDoors.setSelected((flag&HandlingConstants.NO_DOORS)!=0);
			checkIsVan.setSelected((flag&HandlingConstants.IS_VAN)!=0);
			checkIsBus.setSelected((flag&HandlingConstants.IS_BUS)!=0);
			checkIsLow.setSelected((flag&HandlingConstants.IS_LOW)!=0);
	    }else{
			checkNoDoors.setSelected(false);
			checkIsVan.setSelected(false);
			checkIsBus.setSelected(false);
			checkIsLow.setSelected(false);
	    }
	    //Digit 3: DBL_EXHAUST (1), TAILGATE_BOOT (2), NOSWING_BOOT (4), NONPLAYER_STABILISER (8)
		if(len>2){
			int flag=Integer.parseInt(flagsRev.substring(2,3),16);
			checkDblExhaust.setSelected((flag&HandlingConstants.DBL_EXHAUST)!=0);
			checkTailgateBoot.setSelected((flag&HandlingConstants.TAILGATE_BOOT)!=0);
			checkNoSwingBoot.setSelected((flag&HandlingConstants.NOSWING_BOOT)!=0);
			checkNonPlayerStabiliser.setSelected((flag&HandlingConstants.NONPLAYER_STABILISER)!=0);
		}else{
			checkDblExhaust.setSelected(false);
			checkTailgateBoot.setSelected(false);
			checkNoSwingBoot.setSelected(false);
			checkNonPlayerStabiliser.setSelected(false);
		}
	    // Digit 4: NEUTRALHANDLING (1), HAS_NO_ROOF (2), IS_BIG (4), HALOGEN_LIGHTS (8)
		if(len>3){
			int flag=Integer.parseInt(flagsRev.substring(3,4),16);
			checkNeutralHandling.setSelected((flag&HandlingConstants.NEUTRALHANDLING)!=0);
			checkHasNoRoof.setSelected((flag&HandlingConstants.HAS_NO_ROOF)!=0);
			checkIsBig.setSelected((flag&HandlingConstants.IS_BIG)!=0);
			checkHalogenLights.setSelected((flag&HandlingConstants.HALOGEN_LIGHTS)!=0);
		}else{
			checkNeutralHandling.setSelected(false);
			checkHasNoRoof.setSelected(false);
			checkIsBig.setSelected(false);
			checkHalogenLights.setSelected(false);
		}
	    //Digit 5: IS_BIKE (1), IS_HELI (2), IS_PLANE (4), IS_BOAT (8)
		if(len>4){
			int flag=Integer.parseInt(flagsRev.substring(4,5),16);
			checkIsBike.setSelected((flag&HandlingConstants.IS_BIKE)!=0);
			checkIsHeli.setSelected((flag&HandlingConstants.IS_HELI)!=0);
			checkIsPlane.setSelected((flag&HandlingConstants.IS_PLANE)!=0);
			checkIsBoat.setSelected((flag&HandlingConstants.IS_BOAT)!=0);
	    }else{
			checkIsBike.setSelected(false);
			checkIsHeli.setSelected(false);
			checkIsPlane.setSelected(false);
			checkIsBoat.setSelected(false);
	    }
	    //Digit 6: NO_EXHAUST (1), REARWHEEL_1ST (2), HANDBRAKE_TYRE (4), SIT_IN_BOAT (8)
		if(len>5){
			int flag=Integer.parseInt(flagsRev.substring(5,6),16);
			checkNoExhaust.setSelected((flag&HandlingConstants.NO_EXHAUST)!=0);
			checkRearWheel1st.setSelected((flag&HandlingConstants.REARWHEEL_1ST)!=0);
			checkHandbrakeTyre.setSelected((flag&HandlingConstants.HANDBRAKE_TYRE)!=0);
			checkSitInBoat.setSelected((flag&HandlingConstants.SIT_IN_BOAT)!=0);
		}else{
			checkNoExhaust.setSelected(false);
			checkRearWheel1st.setSelected(false);
			checkHandbrakeTyre.setSelected(false);
			checkSitInBoat.setSelected(false);
		}
	    // Digit 7: FAT_REARW (1), NARROW_FRONTW (2), GOOD_INSAND (4)
	    if(len>6){
	    	int flag=Integer.parseInt(flagsRev.substring(6,7),16);
	    	checkFatRearW.setSelected((flag&HandlingConstants.FAT_REARW)!=0);
	    	checkNarrowFrontW.setSelected((flag&HandlingConstants.NARROW_FRONTW)!=0);
	    	checkGoodInSand.setSelected((flag&HandlingConstants.GOOD_INSAND)!=0);
	    }else{
	    	checkFatRearW.setSelected(false);
	    	checkNarrowFrontW.setSelected(false);
	    	checkGoodInSand.setSelected(false);
	    }
	}
	
	private void updateLastItem(int index){
		if((index<0)||(index>=vehicles.size())){return;}
		CFGEntry cfg=vehicles.get(index);
		readSliders(cfg);
		readComboBoxes(cfg);
		readCheckboxes(cfg);
	    
//TODO - not sure how I want to handle the dirty indicator this time around
	    //cfg.ZZZ_Dirty = true; // Mark as changed for the file-saver [cite: 212, 228]
	}
	
	private void readSliders(CFGEntry cfg){
		cfg.mass=sliderMass.getValue();
		cfg.dimX=sliderDimensionsX.getValue()/10.0;
		cfg.dimY=sliderDimensionsY.getValue()/10.0;
		cfg.dimZ=sliderDimensionsZ.getValue()/10.0;
		cfg.centerOfMassX=(sliderCenterOfMassX.getValue()/10.0)-10.0;
		cfg.centerOfMassY=(sliderCenterOfMassY.getValue()/10.0)-10.0;
		cfg.centerOfMassZ=(sliderCenterOfMassZ.getValue()/10.0)-10.0;
		cfg.percentSubmerged=sliderPercentSubmerged.getValue();
		cfg.tractionMultiplier=(sliderTractionMultiplier.getValue()/100.0)-4.0;
		cfg.tractionLoss=sliderTractionLoss.getValue()/100.0;
		cfg.tractionBias=sliderTractionBias.getValue()/100.0;
		cfg.maxVelocity=sliderMaxVelocity.getValue();
		cfg.engineAcceleration=sliderEngineAcceleration.getValue()/10.0;
		cfg.brakeDeceleration=sliderBrakeDeceleration.getValue()/10.0;
		cfg.brakeBias=sliderBrakeBias.getValue()/10.0;
		cfg.steeringLock=sliderSteeringLock.getValue();
		cfg.seatOffset=sliderSeatOffsetDistance.getValue()/10.0;
		cfg.collisionDamage=sliderCollisionDamageMultiplier.getValue()/10.0;
		cfg.monetaryValue=sliderMonetaryValue.getValue();
	}
	
	private void readComboBoxes(CFGEntry cfg){
		cfg.numberOfGears=Integer.parseInt(getLeadingChar(comboNumberOfGears));
		cfg.driveType=getLeadingChar(comboDriveType);
		cfg.engineType=getLeadingChar(comboEngineType);
		cfg.abs=Integer.parseInt(getLeadingChar(comboABS));
		cfg.frontLights=Integer.parseInt(getLeadingChar(comboFrontLights));
		cfg.rearLights=Integer.parseInt(getLeadingChar(comboRearLights));
	}

	private String getLeadingChar(JComboBox<String> cb){
		String selected=(String)cb.getSelectedItem();
		return(selected!=null)?selected.substring(0, 1):"0";
	}
	
	private void readCheckboxes(CFGEntry cfg){
		StringBuilder flags=new StringBuilder();
	    //Digit 7
		int d7=0;
		if(checkFatRearW.isSelected()){d7|=HandlingConstants.FAT_REARW;}
		if(checkNarrowFrontW.isSelected()){d7|= HandlingConstants.NARROW_FRONTW;}
		if(checkGoodInSand.isSelected()){d7|=HandlingConstants.GOOD_INSAND;}
	    flags.append(Integer.toHexString(d7));
	    //Digit 6
	    int d6=0;
	    if(checkNoExhaust.isSelected()){d6|=HandlingConstants.NO_EXHAUST;}
	    if(checkRearWheel1st.isSelected()){d6|=HandlingConstants.REARWHEEL_1ST;}
	    if(checkHandbrakeTyre.isSelected()){d6|= HandlingConstants.HANDBRAKE_TYRE;}
	    if(checkSitInBoat.isSelected()){d6|=HandlingConstants.SIT_IN_BOAT;}
	    flags.append(Integer.toHexString(d6));
	    //Digit 5
	    int d5=0;
	    if(checkIsBike.isSelected()){d5|=HandlingConstants.IS_BIKE;}
	    if(checkIsHeli.isSelected()){d5|=HandlingConstants.IS_HELI;}
	    if(checkIsPlane.isSelected()){d5|= HandlingConstants.IS_PLANE;}
	    if(checkIsBoat.isSelected()){d5|=HandlingConstants.IS_BOAT;}
	    flags.append(Integer.toHexString(d5));
	    //Digit 4
	    int d4=0;
	    if(checkNeutralHandling.isSelected()){d4|=HandlingConstants.NEUTRALHANDLING;}
	    if(checkHasNoRoof.isSelected()){d4|=HandlingConstants.HAS_NO_ROOF;}
	    if(checkIsBig.isSelected()){d4|= HandlingConstants.IS_BIG;}
	    if(checkHalogenLights.isSelected()){d4|=HandlingConstants.HALOGEN_LIGHTS;}
	    flags.append(Integer.toHexString(d4));
	    //Digit 3
	    int d3=0;
	    if(checkDblExhaust.isSelected()){d3|=HandlingConstants.DBL_EXHAUST;}
	    if(checkTailgateBoot.isSelected()){d3|=HandlingConstants.TAILGATE_BOOT;}
	    if(checkNoSwingBoot.isSelected()){d3|= HandlingConstants.NOSWING_BOOT;}
	    if(checkNonPlayerStabiliser.isSelected()){d3|=HandlingConstants.NONPLAYER_STABILISER;}
	    flags.append(Integer.toHexString(d3));
	    //Digit 2
	    int d2=0;
	    if(checkNoDoors.isSelected()){d2|=HandlingConstants.NO_DOORS;}
	    if(checkIsVan.isSelected()){d2|=HandlingConstants.IS_VAN;}
	    if(checkIsBus.isSelected()){d2|= HandlingConstants.IS_BUS;}
	    if(checkIsLow.isSelected()){d2|=HandlingConstants.IS_LOW;}
	    flags.append(Integer.toHexString(d2));
	    //Digit 1
	    int d1=0;
	    if(check1GBoost.isSelected()){d1|=HandlingConstants.G1_BOOST;}
	    if(check2GBoost.isSelected()){d1|=HandlingConstants.G2_BOOST;}
	    if(checkRevBonnet.isSelected()){d1|=HandlingConstants.REV_BONNET;}
	    if(checkHangingBoot.isSelected()){d1|=HandlingConstants.HANGING_BOOT;}
	    flags.append(Integer.toHexString(d1));
	    //Build the string from Digit 7 down to Digit 1 
	    cfg.flags=flags.toString().toUpperCase();
	}
	
	//Helper to add two label-combo pairs in a single horizontal row
	@SuppressWarnings("rawtypes")
	private void addComboRow(int row,String label1,JComboBox cb1,String label2,JComboBox cb2){
		GridBagConstraints gbc=new GridBagConstraints();
		gbc.insets=new Insets(4,8,4,8);
		gbc.fill=GridBagConstraints.HORIZONTAL;
		gbc.gridy=row;
		gbc.gridx=0;
		gbc.weightx=0;
		selectorPanel.add(new JLabel(label1),gbc);
		gbc.gridx=1;gbc.weightx=0.5;
		selectorPanel.add(cb1,gbc);
		gbc.gridx=2;gbc.weightx=0;
		selectorPanel.add(new JLabel(label2),gbc);
		gbc.gridx=3;gbc.weightx=0.5;
		selectorPanel.add(cb2,gbc);
	}	
	
	private void disableAllSelectors(){
		comboSelectVehicle.setEnabled(false);
		comboEngineType.setEnabled(false);
		comboDriveType.setEnabled(false);
		comboNumberOfGears.setEnabled(false);
		comboABS.setEnabled(false);
		comboFrontLights.setEnabled(false);
		comboRearLights.setEnabled(false);
	}	
	
	private void setupSliderPanel(){
		JPanel innerPanel=new JPanel(new GridBagLayout());
		innerPanel.setBorder(BorderFactory.createEmptyBorder(10,10,10,10));
		//wrap in a scroll pane just in case,but prioritize visibility 
		JScrollPane scrollPane=new JScrollPane(innerPanel);
		sliderPanel.setLayout(new BorderLayout());
		sliderPanel.add(scrollPane,BorderLayout.CENTER);
		sliderPanel.setBorder(BorderFactory.createTitledBorder("Vehicle Physical&Performance Properties"));
		int row=0;
		//Row 0: Mass&Dimensions X 
		addSliderPair(innerPanel,row++,
					"Mass:",sliderMass=new JSlider(1,25500,1),1000,
					"Dimensions.x:",sliderDimensionsX=new JSlider(0,200,0),10);
		
		//Row 1: Dimensions Y&Z
		addSliderPair(innerPanel,row++,
					"Dimensions.y:",sliderDimensionsY=new JSlider(0,200,0),10,
					"Dimensions.z:",sliderDimensionsZ=new JSlider(0,200,0),10);
		//Row 2: CenterOfMass X&Y
		addSliderPair(innerPanel,row++,
					"CenterOfMass.x:",sliderCenterOfMassX=new JSlider(0,200,0),10,
					"CenterOfMass.y:",sliderCenterOfMassY=new JSlider(0,200,0),10);
		//Row 3: CenterOfMass Z&Percent Submerged
		addSliderPair(innerPanel,row++,
					"CenterOfMass.z:",sliderCenterOfMassZ=new JSlider(0,200,0),10,
					"Percent Submerged:",sliderPercentSubmerged=new JSlider(5,120,5),10);
		// Row 4: Multiplier Mult&Loss
		addSliderPair(innerPanel,row++,
					"Traction Multiplier:",sliderTractionMultiplier=new JSlider(0,800,0),50,
					"Traction Loss:",sliderTractionLoss=new JSlider(0,2500,0),500);
		//Row 5: Traction Bias&Max Velocity
		addSliderPair(innerPanel,row++,
					"Traction Bias:",sliderTractionBias=new JSlider(0,100,0),10,
					"Maximum Velocity:",sliderMaxVelocity=new JSlider(50,1500,50),50);
		//Row 6: Engine Acceleration&Brake Deceleration
		addSliderPair(innerPanel,row++,
					"Engine Acceleration:",sliderEngineAcceleration=new JSlider(1,500,1),50,
					"Brake Deceleration:",sliderBrakeDeceleration=new JSlider(0,200,1),10);
		// Row 7: Brake Bias&Steering Lock
		addSliderPair(innerPanel,row++,
					"Brake Bias:",sliderBrakeBias=new JSlider(0,100,0),10,
					"Steering Lock:",sliderSteeringLock=new JSlider(10,40,10),10);
		//Row 8: Monetary Value&Collision Damage
		addSliderPair(innerPanel,row++,
					"Monetary Value:",sliderMonetaryValue=new JSlider(1,110000,1),10000,
					"Collision Damage Mult:",sliderCollisionDamageMultiplier=new JSlider(0,50,0),5);
		//Row 9: Seat Offset
		addSliderPair(innerPanel,row++,
					"Seat Offset Distance:",sliderSeatOffsetDistance=new JSlider(1,20,1),5,
					"",new JLabel(""),0);// Empty cell to maintain grid alignment	}	
	}
	
	//creates a row with: Label,Slider,Label,Slider 
	private void addSliderPair(JPanel p,int row,String lbl1,JComponent comp1,int tick1,String lbl2,JComponent comp2,int tick2){
		GridBagConstraints c=new GridBagConstraints();
		c.insets=new Insets(2,5,2,5);
		c.fill=GridBagConstraints.HORIZONTAL;
		c.gridy=row;
		//Column 1: Label 1
		c.gridx=0;
		c.weightx=0.0;
		p.add(new JLabel(lbl1),c);
		//Column 2: Slider 1
		c.gridx=1;
		c.weightx=0.5;
		if(comp1 instanceof JSlider){
			((JSlider)comp1).setMajorTickSpacing(tick1);
			((JSlider)comp1).setPaintTicks(true);
		}
		p.add(comp1,c);
		//Column 3: Label 2
		c.gridx=2;
		c.weightx=0.0;
		p.add(new JLabel(lbl2),c);
		//Column 4: Slider 2
		c.gridx=3;
		c.weightx=0.5;
		if(comp2 instanceof JSlider){
			((JSlider)comp2).setMajorTickSpacing(tick2);
			((JSlider)comp2).setPaintTicks(true);
		}
		p.add(comp2,c);
	}	
	
	private void setupCheckboxPanel(){
		// 7 rows for the 7 hex digits in the flags string
		checkboxPanel.setLayout(new GridLayout(7,1));
		checkboxPanel.setBorder(BorderFactory.createTitledBorder("Vehicle Flags(Hex Digits 1-7)"));
		//Row 1: Digit 1
		checkboxPanel.add(createFlagRow("Flags [1]:",
			check1GBoost=new JCheckBox("1G_BOOST"),
			check2GBoost=new JCheckBox("2G_BOOST"),
			checkRevBonnet=new JCheckBox("REV_BONNET"),
			checkHangingBoot=new JCheckBox("HANGING_BOOT")));
		//Row 2: Digit 2
		checkboxPanel.add(createFlagRow("Flags [2]:",
			checkNoDoors=new JCheckBox("NO_DOORS"),
			checkIsVan=new JCheckBox("IS_VAN"),
			checkIsBus=new JCheckBox("IS_BUS"),
			checkIsLow=new JCheckBox("IS_LOW")));
		//Row 3: Digit 3
		checkboxPanel.add(createFlagRow("Flags [3]:",
			checkDblExhaust=new JCheckBox("DBL_EXHAUST"),
			checkTailgateBoot=new JCheckBox("TAILGATE_BOOT"),
			checkNoSwingBoot=new JCheckBox("NOSWING_BOOT"),
			checkNonPlayerStabiliser=new JCheckBox("NONPLAYER_STABILISER")));
		//Row 4: Digit 4
		checkboxPanel.add(createFlagRow("Flags [4]:",
			checkNeutralHandling=new JCheckBox("NEUTRALHANDLING"),
			checkHasNoRoof=new JCheckBox("HAS_NO_ROOF"),
			checkIsBig=new JCheckBox("IS_BIG"),
			checkHalogenLights=new JCheckBox("HALOGEN_LIGHTS")));
		//Row 5: Digit 5
		checkboxPanel.add(createFlagRow("Flags [5]:",
			checkIsBike=new JCheckBox("IS_BIKE"),
			checkIsHeli=new JCheckBox("IS_HELI"),
			checkIsPlane=new JCheckBox("IS_PLANE"),
			checkIsBoat=new JCheckBox("IS_BOAT")));
		//Row 6
		checkboxPanel.add(createFlagRow("Flags [6]:",
			checkNoExhaust=new JCheckBox("NO_EXHAUST"),
			checkRearWheel1st=new JCheckBox("REARWHEEL_1ST"),
			checkHandbrakeTyre=new JCheckBox("HANDBRAKE_TYRE"),
			checkSitInBoat=new JCheckBox("SIT_IN_BOAT")));
		//Row 7
		checkboxPanel.add(createFlagRow("Flags [7]:",
			checkFatRearW=new JCheckBox("FAT_REARW"),
			checkNarrowFrontW=new JCheckBox("NARROW_FRONTW"),
			checkGoodInSand=new JCheckBox("GOOD_INSAND"),
			null));// Empty slot
	}	
	
	//Creates a horizontal row containing one label and up to four checkboxes
	private JPanel createFlagRow(String labelText,JCheckBox... boxes){
		JPanel p=new JPanel(new FlowLayout(FlowLayout.LEFT,15,0));
		JLabel lbl=new JLabel(labelText);
		lbl.setPreferredSize(new Dimension(80,25));
		lbl.setHorizontalAlignment(SwingConstants.RIGHT);
		p.add(lbl);
		for(JCheckBox cb:boxes){
			if(cb!=null){
				cb.setEnabled(false);//Initially disabled
				p.add(cb);
			}
		}
		return(p);
	}	
	
	private void setupActionButtonPanel(){
		//Right-aligned flow layout to mimic the bottom-right grouping in VB6
		actionButtonPanel.setLayout(new FlowLayout(FlowLayout.RIGHT,15,10));
		actionButtonPanel.setBorder(BorderFactory.createMatteBorder(1,0,0,0,Color.GRAY));
		//"Edit Suspension" Button
		btnEditSuspension=new JButton("Edit Suspension");
		//setup action listener
		btnEditSuspension.addActionListener(e->{
			int selectedIndex=comboSelectVehicle.getSelectedIndex();
			if(selectedIndex<0){return;}
			if(selectedIndex>=vehicles.size()){return;}
			//1.Get the current vehicle data 
			CFGEntry cfg=vehicles.get(selectedIndex);
		    //2.Initialize the Dialog - Passing 'this' makes it a child of MainForm 
			SuspensionDialog susDialog=new SuspensionDialog(this,cfg);
			//3.Display the dialog 
			susDialog.setVisible(true); 
			//4. After the dialog is closed, check if the user clicked "Save"
			if(!susDialog.isCancelled()){
				//Pull back the updated values from the dialog's sliders 
				cfg.suspensionForce=susDialog.forceSlider.getValue()/10.0;
				cfg.suspensionDamping=susDialog.dampingSlider.getValue()/10.0;
				cfg.suspensionUpper=susDialog.upperSlider.getValue()/10.0;
				cfg.suspensionLower=susDialog.lowerSlider.getValue()/10.0;
				cfg.suspensionBias=susDialog.biasSlider.getValue()/10.0;
				cfg.antiDive=susDialog.antiDiveSlider.getValue()/10.0;
				cfg.isDirty=true;
			}
		});
		btnEditSuspension.setEnabled(false); //disabled until file load
		actionButtonPanel.add(btnEditSuspension);
		//"Cancel All Changes and Close" Button
		btnCancel=new JButton("Cancel All Changes and Close");
		btnCancel.setEnabled(true); //always enabled to allow closing
		actionButtonPanel.add(btnCancel);
		//"Save All Changes and Close"
		btnSave=new JButton("Save All Changes and Close");
		btnSave.setEnabled(false); //disabled until changes are made [cite: 4]
		actionButtonPanel.add(btnSave);
	}	
	
	private void loadHandlingFile(File file){
		this.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		try(BufferedReader reader=new BufferedReader(new FileReader(file))){
			String filePath=file.getAbsolutePath();
			textFilePath.setText(filePath);
			textBackupFile.setText(generateBackupPath(filePath));
			vehicles.clear();
			comboSelectVehicle.removeAllItems();
			String line;
			int lineCounter=0;
			while((line=reader.readLine())!=null){
				lineCounter++; //1-based index matching VB6 logic
				if(line.isEmpty()) continue;
				char leadingChar=line.trim().charAt(0);
				//skip comments and special GTA config markers 
				if((leadingChar!=';')&&(leadingChar!='%')&&(leadingChar!='!')&&(leadingChar!='$')){
					CFGEntry entry=new CFGEntry(line,lineCounter);
					vehicles.add(entry);
					comboSelectVehicle.addItem(entry.vehicleIdentifier);
				}
			}
			//enable components now that data is loaded
			enableUIComponents(true);
			if(comboSelectVehicle.getItemCount()>0){
				comboSelectVehicle.setSelectedIndex(0);
			}
		}catch(IOException ex){
			JOptionPane.showMessageDialog(this,"Error loading file: " + ex.getMessage());
		}finally{
			this.setCursor(Cursor.getDefaultCursor());
		}
	}

	//recreates GenerateBackupFilePath logic 
	private String generateBackupPath(String originalPath){
		DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		String dateString=dtf.format(LocalDateTime.now());
		return(originalPath+"."+dateString); 
	}
	
	private void setSelectedByLeadingChar(JComboBox<String> cb,String val){
		if((val==null)||(val.isEmpty())){return;}
		for(int i=0;i<cb.getItemCount();i++){
			if(cb.getItemAt(i).startsWith(val)){
				cb.setSelectedIndex(i);
				return;
			}
		}
	}

	private void enableUIComponents(boolean enabled){
		comboSelectVehicle.setEnabled(enabled);
		btnEditSuspension.setEnabled(enabled);
		//TODO: enable anything else here
	}	
	
    //TODO - put this somewhere reusable by all the swing apps I have
    private void attemptToSetIcon(){
    	try{
    		URL iconURL=this.getClass().getResource("/com/huguesjohnson/hilary/icon.png");
    		if(iconURL!=null){
    			this.setIconImage(new ImageIcon(iconURL).getImage());
			}else{
				iconURL=this.getClass().getResource("icon.png");
	    		if(iconURL!=null){
	    			this.setIconImage(new ImageIcon(iconURL).getImage());
	    		}else{
	    			/* give up out of despair */
	    		}
			}
    		if(iconURL!=null){//if that failed then this next one will fail too
            	if(Taskbar.isTaskbarSupported()){
            		Taskbar taskbar=Taskbar.getTaskbar();
            		if(taskbar.isSupported(Feature.ICON_IMAGE)){
                        Toolkit defaultToolkit=Toolkit.getDefaultToolkit();
                        //of course this is different than setting the icon,of course it is
                        Image icon=defaultToolkit.getImage(getClass().getResource("/com/huguesjohnson/hilary/icon.png"));
                        if(icon!=null){
                            taskbar.setIconImage(icon);
                        }else{
                            icon=defaultToolkit.getImage(getClass().getResource("icon.png"));
                            if(icon!=null){
                                taskbar.setIconImage(icon);
            	    		}else{
            	    			/* give up out of despair */
            	    		}                       	
                        }
        			}
            	}        	
    		}
		}catch(Exception x){ 
			/* this is something that should be extremely simple to do and never fail
			 * yet it is something that always fails in either local development or distribution 
			 * setting an icon is a super basic thing that should "just work" */ 
		}    	
    }	
	
	public static void main(String[] args){
		SwingUtilities.invokeLater(() -> new HilaryMain().setVisible(true));
	}
}