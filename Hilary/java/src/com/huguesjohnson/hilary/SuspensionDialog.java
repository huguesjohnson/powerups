/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.hilary;

import javax.swing.*;
import java.awt.*;

/*
 * Originally written in Visual Basic 6,converted to Java by Google Gemini.
 */


public class SuspensionDialog extends JDialog {
    private static final long serialVersionUID=666L;
	private boolean cancelled = true;
    // Sliders for suspension settings
    private JSlider forceSlider, dampingSlider, upperSlider, lowerSlider, biasSlider, antiDiveSlider;

    public SuspensionDialog(Frame owner, CFGEntry entry) {
        super(owner, "Suspension", true);
        setLayout(new GridLayout(8, 2));

        // Example: Force Level (VB6 used 0.1-5.0 scaled by 10) [cite: 200]
        add(new JLabel("Suspension Force Level:"));
        forceSlider = new JSlider(1, 50, (int)(entry.suspensionForce * 10));
        forceSlider.setMajorTickSpacing(10);
        forceSlider.setMinorTickSpacing(5);
        add(forceSlider);

        add(new JLabel("Suspension Damping Level:"));
        dampingSlider = new JSlider(1, 50, (int)(entry.suspensionDamping * 10));
        dampingSlider.setMajorTickSpacing(10);
        dampingSlider.setMinorTickSpacing(5);
        add(dampingSlider);

        add(new JLabel("Suspension Upper Limit:"));
        upperSlider = new JSlider(1, 150, (int)(entry.suspensionUpper * 10));
        upperSlider.setMajorTickSpacing(50);
        upperSlider.setMinorTickSpacing(10);
        add(upperSlider);

        add(new JLabel("Suspension Lower Limit:"));
        lowerSlider = new JSlider(1, 10, (int)(entry.suspensionLower * 10));
        lowerSlider.setMajorTickSpacing(2);
        lowerSlider.setMinorTickSpacing(1);
        add(lowerSlider);  
        
        add(new JLabel("Front/Rear Suspension Bias:"));
        biasSlider = new JSlider(1, 10, (int)(entry.suspensionBias * 10));
        biasSlider.setMajorTickSpacing(2);
        biasSlider.setMinorTickSpacing(1);
        add(biasSlider);        
        
        add(new JLabel("Suspension Anti-Dive Multiplier:"));
        antiDiveSlider = new JSlider(1, 10, (int)(entry.antiDive * 10));
        antiDiveSlider.setMajorTickSpacing(2);
        antiDiveSlider.setMinorTickSpacing(1);
        add(antiDiveSlider);        

        JButton saveBtn = new JButton("Save All Changes");
        saveBtn.addActionListener(e -> { cancelled = false; setVisible(false); });
        
        JButton cancelBtn = new JButton("Cancel");
        cancelBtn.addActionListener(e -> { cancelled = true; setVisible(false); });

        add(cancelBtn);
        add(saveBtn);
        pack();
    }

    public boolean isCancelled() { return cancelled; }
    
    public void updateEntry(CFGEntry entry) {
        if (!cancelled) {
            entry.suspensionForce = forceSlider.getValue() / 10.0;
            // Update other fields accordingly...
            entry.isDirty = true;
        }
    }
}