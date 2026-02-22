/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.hilary;

import javax.swing.*;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.io.*;
import java.net.URL;
import java.util.*;

/*
 * Originally written in Visual Basic 6,converted to Java by Google Gemini.
 */

public class HilaryMain extends JFrame{
    private static final long serialVersionUID = 666L;
    private JPanel filePanel;             // Section 1: File Path and Browse 
    private JPanel selectorPanel;         // Section 2: 7 ComboBoxes and Labels [cite: 48-59, 62-63]
    private JPanel sliderPanel;           // Section 3: 19 Sliders and Labels [cite: 60, 69-113]
    private JPanel checkboxPanel;         // Section 4: 27 Checkboxes [cite: 9-47]
    private JPanel actionButtonPanel;     // Section 5: Bottom Buttons [cite: 4-8]
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
    
    // Data handling
    private List<CFGEntry> vehicles = new ArrayList<>();

    public HilaryMain() {
        setTitle("Hilary - handling.cfg Editor ");
        setMinimumSize(new Dimension(1100, 1000));
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // Handle unsaved changes [cite: 232]
        initComponents();
    }

    private void initComponents() {
    	// We use GridBagLayout to stack components vertically
        setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        
        // General constraints for all panels
        gbc.fill = GridBagConstraints.BOTH; // Allow panels to expand horizontally and vertically
        gbc.insets = new Insets(2, 5, 2, 5); // Small padding between sections
        gbc.gridx = 0; // All panels stay in the first column
        
        // 1. File Panel (Top)
        filePanel = new JPanel();
        setupFilePanel();      
        add(filePanel, gbc);

        // 2. Selector Panel (7 ComboBoxes)
        selectorPanel = new JPanel();
        setupSelectorPanel();
        add(selectorPanel, gbc);

        // 3. Slider Panel (19 Sliders)
        sliderPanel = new JPanel();
        setupSliderPanel();
        add(sliderPanel, gbc);

        // 4. Checkbox Panel (27 Checkboxes)
        checkboxPanel = new JPanel();
        setupCheckboxPanel();
        add(checkboxPanel, gbc);

        // 5. Action Button Panel (Bottom)
        actionButtonPanel = new JPanel();
        setupActionButtonPanel();
        add(actionButtonPanel, gbc);
    }

    private void setupFilePanel() {
        filePanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(5, 5, 5, 5);
        gbc.fill = GridBagConstraints.HORIZONTAL;

        // 1. "File Path:" Label [cite: 163-164]
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 0;
        filePanel.add(new JLabel("File Path:"), gbc);

        // 2. File Path Read-Only Text Field [cite: 65-66]
        textFilePath = new JTextField("<click browse button to select a file>");
        textFilePath.setEditable(false);
        textFilePath.setBackground(new Color(224, 224, 224)); // Recreates &H00E0E0E0&
        gbc.gridx = 1;
        gbc.weightx = 1.0; // This field expands
        filePanel.add(textFilePath, gbc);

        // 3. "Browse..." Button [cite: 67-68]
        btnBrowse = new JButton("Browse..");
        gbc.gridx = 2;
        gbc.weightx = 0;
        filePanel.add(btnBrowse, gbc);

        // 4. "Backup File:" Label [cite: 161-162]
        gbc.gridx = 3;
        gbc.weightx = 0;
        filePanel.add(new JLabel("Backup File:"), gbc);

        // 5. Backup File Read-Only Text Field 
        textBackupFile = new JTextField("                                     ");
        textBackupFile.setEditable(false);
        textBackupFile.setBackground(new Color(224, 224, 224));
        gbc.gridx = 4;
        gbc.weightx = 1.0; // This field also expands
        filePanel.add(textBackupFile, gbc);
    }
 
    private void setupSelectorPanel() {
        // Using a GridBagLayout for precise alignment of labels and combos
        selectorPanel.setLayout(new GridBagLayout());
        selectorPanel.setBorder(BorderFactory.createTitledBorder("Vehicle & Transmission"));
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(4, 8, 4, 8);
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.anchor = GridBagConstraints.EAST;

        // Row 0: Select Vehicle (The primary selector) [cite: 62-63, 160-161]
        gbc.gridx = 0; gbc.gridy = 0; gbc.weightx = 0;
        selectorPanel.add(new JLabel("Select Vehicle:"), gbc);
        comboSelectVehicle = new JComboBox<>();
        comboSelectVehicle.setBackground(new Color(224, 224, 224)); // Matches VB6 BackColor [cite: 62-63]
        gbc.gridx = 1; gbc.weightx = 1.0;
        selectorPanel.add(comboSelectVehicle, gbc);

        // Row 1: Engine and Drive Type [cite: 54-57, 137-139]
        addComboRow(1, "Engine Type:", comboEngineType = new JComboBox<>(new String[]{"P (Petrol)", "D (Diesel)", "E (Electric)"}),
                       "Drive Type:", comboDriveType = new JComboBox<>(new String[]{"F (Front-wheel)", "R (Rear-wheel)", "4 (Four-wheel)"}));

        // Row 2: Gears and ABS [cite: 52-53, 58-59, 133, 143]
        addComboRow(2, "Number of Gears:", comboNumberOfGears = new JComboBox<>(new String[]{"1", "2", "3", "4"}),
                       "ABS:", comboABS = new JComboBox<>(new String[]{"0 (False)", "1 (True)"}));

        // Row 3: Front and Rear Lights [cite: 48-51, 124-126]
        addComboRow(3, "Front Lights:", comboFrontLights = new JComboBox<>(new String[]{"0 (Long)", "1 (Small)", "2 (Big)", "3 (Tall)"}),
                       "Rear Lights:", comboRearLights = new JComboBox<>(new String[]{"0 (Long)", "1 (Small)", "2 (Big)", "3 (Tall)"}));
        
        // Set all to disabled initially, matching original Form_Load state 
        disableAllSelectors();
    }    
    
    /**
     * Helper to add two label-combo pairs in a single horizontal row
     */
    private void addComboRow(int row, String label1, JComboBox cb1, String label2, JComboBox cb2) {
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(4, 8, 4, 8);
        gbc.fill = GridBagConstraints.HORIZONTAL;
        
        gbc.gridy = row; gbc.gridx = 0; gbc.weightx = 0;
        selectorPanel.add(new JLabel(label1), gbc);
        gbc.gridx = 1; gbc.weightx = 0.5;
        selectorPanel.add(cb1, gbc);
        
        gbc.gridx = 2; gbc.weightx = 0;
        selectorPanel.add(new JLabel(label2), gbc);
        gbc.gridx = 3; gbc.weightx = 0.5;
        selectorPanel.add(cb2, gbc);
    }    
    
    private void disableAllSelectors() {
        comboSelectVehicle.setEnabled(false);
        comboEngineType.setEnabled(false);
        comboDriveType.setEnabled(false);
        comboNumberOfGears.setEnabled(false);
        comboABS.setEnabled(false);
        comboFrontLights.setEnabled(false);
        comboRearLights.setEnabled(false);
    }    
    
    private void setupSliderPanel() {
    	JPanel innerPanel = new JPanel(new GridBagLayout());
        innerPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        
        // Wrap in a scroll pane just in case, but prioritize visibility [cite: 59]
        JScrollPane scrollPane = new JScrollPane(innerPanel);
        sliderPanel.setLayout(new BorderLayout());
        sliderPanel.add(scrollPane, BorderLayout.CENTER);
        sliderPanel.setBorder(BorderFactory.createTitledBorder("Vehicle Physical & Performance Properties"));

        int row = 0;

        // Row 0: Mass & Dimensions X [cite: 60-70]
        addSliderPair(innerPanel, row++, "Mass:", sliderMass = new JSlider(1, 25500, 1), 1000,
                                       "Dimensions.x:", sliderDimensionsX = new JSlider(0, 200, 0), 10);
        
        // Row 1: Dimensions Y & Z [cite: 71-75]
        addSliderPair(innerPanel, row++, "Dimensions.y:", sliderDimensionsY = new JSlider(0, 200, 0), 10,
                                       "Dimensions.z:", sliderDimensionsZ = new JSlider(0, 200, 0), 10);
        
        // Row 2: COM X & Y [cite: 76-80]
        addSliderPair(innerPanel, row++, "CenterOfMass.x:", sliderCenterOfMassX = new JSlider(0, 200, 0), 10,
                                       "CenterOfMass.y:", sliderCenterOfMassY = new JSlider(0, 200, 0), 10);
        
        // Row 3: COM Z & Percent Submerged [cite: 81-85]
        addSliderPair(innerPanel, row++, "CenterOfMass.z:", sliderCenterOfMassZ = new JSlider(0, 200, 0), 10,
                                       "Percent Submerged:", sliderPercentSubmerged = new JSlider(5, 120, 5), 10);
        
        // Row 4: Traction Mult & Loss [cite: 86-89]
        addSliderPair(innerPanel, row++, "Traction Multiplier:", sliderTractionMultiplier = new JSlider(0, 800, 0), 50,
                                       "Traction Loss:", sliderTractionLoss = new JSlider(0, 2500, 0), 500);
        
        // Row 5: Traction Bias & Max Velocity [cite: 90-95]
        addSliderPair(innerPanel, row++, "Traction Bias:", sliderTractionBias = new JSlider(0, 100, 0), 10,
                                       "Maximum Velocity:", sliderMaxVelocity = new JSlider(50, 1500, 50), 50);
        
        // Row 6: Engine Accel & Brake Decel [cite: 96-100]
        addSliderPair(innerPanel, row++, "Engine Acceleration:", sliderEngineAcceleration = new JSlider(1, 500, 1), 50,
                                       "Brake Deceleration:", sliderBrakeDeceleration = new JSlider(0, 200, 1), 10);
        
        // Row 7: Brake Bias & Steering Lock [cite: 101-105]
        addSliderPair(innerPanel, row++, "Brake Bias:", sliderBrakeBias = new JSlider(0, 100, 0), 10,
                                       "Steering Lock:", sliderSteeringLock = new JSlider(10, 40, 10), 10);
        
        // Row 8: Monetary Value & Collision Damage [cite: 106-110]
        addSliderPair(innerPanel, row++, "Monetary Value:", sliderMonetaryValue = new JSlider(1, 110000, 1), 10000,
                                       "Collision Damage Mult:", sliderCollisionDamageMultiplier = new JSlider(0, 50, 0), 5);
        
        // Row 9: Seat Offset [cite: 111-113]
        addSliderPair(innerPanel, row++, "Seat Offset Distance:", sliderSeatOffsetDistance = new JSlider(1, 20, 1), 5,
                                       "", new JLabel(""), 0); // Empty cell to maintain grid alignment    }    
    }
    
    /**
     * Creates a row with: Label, Slider, Label, Slider 
     */
    private void addSliderPair(JPanel p, int row, String lbl1, JComponent comp1, int tick1, 
                                                String lbl2, JComponent comp2, int tick2) {
        GridBagConstraints c = new GridBagConstraints();
        c.insets = new Insets(2, 5, 2, 5);
        c.fill = GridBagConstraints.HORIZONTAL;
        c.gridy = row;

        // Column 1: Label 1 [cite: 124-162]
        c.gridx = 0; c.weightx = 0.0;
        p.add(new JLabel(lbl1), c);
        
        // Column 2: Slider 1 [cite: 60-113]
        c.gridx = 1; c.weightx = 0.5;
        if (comp1 instanceof JSlider) {
            ((JSlider)comp1).setMajorTickSpacing(tick1);
            ((JSlider)comp1).setPaintTicks(true);
        }
        p.add(comp1, c);
        
        // Column 3: Label 2 [cite: 124-162]
        c.gridx = 2; c.weightx = 0.0;
        p.add(new JLabel(lbl2), c);
        
        // Column 4: Slider 2 [cite: 60-113]
        c.gridx = 3; c.weightx = 0.5;
        if (comp2 instanceof JSlider) {
            ((JSlider)comp2).setMajorTickSpacing(tick2);
            ((JSlider)comp2).setPaintTicks(true);
        }
        p.add(comp2, c);
    }    
    
    private void setupCheckboxPanel() {
        // 7 rows for the 7 hex digits in the flags string
        checkboxPanel.setLayout(new GridLayout(7, 1));
        checkboxPanel.setBorder(BorderFactory.createTitledBorder("Vehicle Flags (Hex Digits 1-7)"));

        // Row 1: Digit 1 [cite: 185-186, 122-123]
        checkboxPanel.add(createFlagRow("Flags [1]:", 
            check1GBoost = new JCheckBox("1G_BOOST"), 
            check2GBoost = new JCheckBox("2G_BOOST"), 
            checkRevBonnet = new JCheckBox("REV_BONNET"), 
            checkHangingBoot = new JCheckBox("HANGING_BOOT")));

        // Row 2: Digit 2 [cite: 187-188, 121]
        checkboxPanel.add(createFlagRow("Flags [2]:", 
            checkNoDoors = new JCheckBox("NO_DOORS"), 
            checkIsVan = new JCheckBox("IS_VAN"), 
            checkIsBus = new JCheckBox("IS_BUS"), 
            checkIsLow = new JCheckBox("IS_LOW")));

        // Row 3: Digit 3 [cite: 189-190, 119-120]
        checkboxPanel.add(createFlagRow("Flags [3]:", 
            checkDblExhaust = new JCheckBox("DBL_EXHAUST"), 
            checkTailgateBoot = new JCheckBox("TAILGATE_BOOT"), 
            checkNoSwingBoot = new JCheckBox("NOSWING_BOOT"), 
            checkNonPlayerStabiliser = new JCheckBox("NONPLAYER_STABILISER")));

        // Row 4: Digit 4 [cite: 190-191, 118]
        checkboxPanel.add(createFlagRow("Flags [4]:", 
            checkNeutralHandling = new JCheckBox("NEUTRALHANDLING"), 
            checkHasNoRoof = new JCheckBox("HAS_NO_ROOF"), 
            checkIsBig = new JCheckBox("IS_BIG"), 
            checkHalogenLights = new JCheckBox("HALOGEN_LIGHTS")));

        // Row 5: Digit 5 [cite: 191-193, 117]
        checkboxPanel.add(createFlagRow("Flags [5]:", 
            checkIsBike = new JCheckBox("IS_BIKE"), 
            checkIsHeli = new JCheckBox("IS_HELI"), 
            checkIsPlane = new JCheckBox("IS_PLANE"), 
            checkIsBoat = new JCheckBox("IS_BOAT")));

        // Row 6: Digit 6 [cite: 193-194, 115-116]
        checkboxPanel.add(createFlagRow("Flags [6]:", 
            checkNoExhaust = new JCheckBox("NO_EXHAUST"), 
            checkRearWheel1st = new JCheckBox("REARWHEEL_1ST"), 
            checkHandbrakeTyre = new JCheckBox("HANDBRAKE_TYRE"), 
            checkSitInBoat = new JCheckBox("SIT_IN_BOAT")));

        // Row 7: Digit 7 (3 checkboxes) [cite: 194-195, 114]
        checkboxPanel.add(createFlagRow("Flags [7]:", 
            checkFatRearW = new JCheckBox("FAT_REARW"), 
            checkNarrowFrontW = new JCheckBox("NARROW_FRONTW"), 
            checkGoodInSand = new JCheckBox("GOOD_INSAND"),
            null)); // Empty slot
    }    
    
    /**
     * Creates a horizontal row containing one label and up to four checkboxes.
     */
    private JPanel createFlagRow(String labelText, JCheckBox... boxes) {
        JPanel p = new JPanel(new FlowLayout(FlowLayout.LEFT, 15, 0));
        JLabel lbl = new JLabel(labelText);
        lbl.setPreferredSize(new Dimension(80, 25));
        lbl.setHorizontalAlignment(SwingConstants.RIGHT);
        p.add(lbl);

        for (JCheckBox cb : boxes) {
            if (cb != null) {
                cb.setEnabled(false); // Initially disabled matching VB6 [cite: 9-41]
                p.add(cb);
            }
        }
        return p;
    }    
    
    private void setupActionButtonPanel() {
        // Right-aligned flow layout to mimic the bottom-right grouping in VB6 [cite: 4, 6]
        actionButtonPanel.setLayout(new FlowLayout(FlowLayout.RIGHT, 15, 10));
        actionButtonPanel.setBorder(BorderFactory.createMatteBorder(1, 0, 0, 0, Color.GRAY));

        // 1. "Edit Suspension" Button [cite: 7-8]
        // TabIndex = 56 in original [cite: 7]
        btnEditSuspension = new JButton("Edit Suspension");
        btnEditSuspension.setEnabled(false); // Disabled until file load [cite: 7]
        actionButtonPanel.add(btnEditSuspension);

        // 2. "Cancel All Changes and Close" Button [cite: 5-6]
        // TabIndex = 57 in original [cite: 6]
        btnCancel = new JButton("Cancel All Changes and Close");
        btnCancel.setEnabled(true); // Always enabled to allow closing [cite: 6]
        actionButtonPanel.add(btnCancel);

        // 3. "Save All Changes and Close" Button [cite: 4-5]
        // TabIndex = 58 in original [cite: 4]
        btnSave = new JButton("Save All Changes and Close");
        btnSave.setEnabled(false); // Disabled until changes are made [cite: 4]
        actionButtonPanel.add(btnSave);
    }    
    
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new HilaryMain().setVisible(true));
    }
}