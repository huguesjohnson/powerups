/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.hilary;

import java.awt.Frame;
import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JSlider;

/*
 * Originally written in Visual Basic 6,converted to Java by Google Gemini.
 * Although this needed a decent amount of work after that.
 */
public class SuspensionDialog extends JDialog{
	private static final long serialVersionUID=666L;
	private boolean cancelled=true;
	//Sliders for suspension settings - public so they can be read by the main form
	public JSlider forceSlider;
	public JSlider dampingSlider;
	public JSlider upperSlider;
	public JSlider lowerSlider;
	public JSlider biasSlider;
	public JSlider antiDiveSlider;

	public SuspensionDialog(Frame owner,CFGEntry entry){
		super(owner,"Suspension",true);
		setLayout(new GridLayout(8,2));
		//force level
		add(new JLabel("Suspension Force Level:"));
		forceSlider = new JSlider(1,50,(int)(entry.suspensionForce*10));
		forceSlider.setMajorTickSpacing(10);
		forceSlider.setMinorTickSpacing(5);
		add(forceSlider);
		//damping level
		add(new JLabel("Suspension Damping Level:"));
		dampingSlider=new JSlider(1,50,(int)(entry.suspensionDamping*10));
		dampingSlider.setMajorTickSpacing(10);
		dampingSlider.setMinorTickSpacing(5);
		add(dampingSlider);
		//upper limit
		add(new JLabel("Suspension Upper Limit:"));
		upperSlider=new JSlider(1,150,(int)(entry.suspensionUpper*10));
		upperSlider.setMajorTickSpacing(50);
		upperSlider.setMinorTickSpacing(10);
		add(upperSlider);
		//lower limit
		add(new JLabel("Suspension Lower Limit:"));
		lowerSlider=new JSlider(1,10,(int)(entry.suspensionLower*10));
		lowerSlider.setMajorTickSpacing(2);
		lowerSlider.setMinorTickSpacing(1);
		add(lowerSlider);  
		//bias
		add(new JLabel("Front/Rear Suspension Bias:"));
		biasSlider=new JSlider(1,10,(int)(entry.suspensionBias*10));
		biasSlider.setMajorTickSpacing(2);
		biasSlider.setMinorTickSpacing(1);
		add(biasSlider);        
		//anti-drive
		add(new JLabel("Suspension Anti-Dive Multiplier:"));
		antiDiveSlider=new JSlider(1,10,(int)(entry.antiDive*10));
		antiDiveSlider.setMajorTickSpacing(2);
		antiDiveSlider.setMinorTickSpacing(1);
		add(antiDiveSlider);        
		//save button
		JButton saveBtn=new JButton("Save All Changes");
		saveBtn.addActionListener(e->{cancelled=false;setVisible(false);});
		add(saveBtn);
        //cancel button
		JButton cancelBtn=new JButton("Cancel");
		cancelBtn.addActionListener(e->{cancelled=true;setVisible(false);});
		add(cancelBtn);
		pack();
	}

	public boolean isCancelled(){return(cancelled);}
}