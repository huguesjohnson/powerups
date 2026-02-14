/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.falcone;

import java.awt.Color;

import javax.swing.InputVerifier;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/*
 * Originally written in Visual Basic 6, converted to Java by Google Gemini.
 */

public class HPInputVerifier extends InputVerifier{
	@Override
	public boolean verify(JComponent input){
		String text=((JTextField)input).getText();
		try{
			int value=Integer.parseInt(text);
			if((value>=1)&&(value<=255)){
				input.setBackground(Color.WHITE);
				return(true);
			}
        }catch(NumberFormatException nfe){
        	//nothing to do - will go to validation failed next
        }
		//validation failed
		input.setBackground(Color.ORANGE);
        return(false);
    }

	@Override
	public boolean shouldYieldFocus(JComponent source,JComponent target){
		boolean valid=this.verify(source);
		if(!valid){
			//original VB6 logic: show a MsgBox on failure
			JOptionPane.showMessageDialog(null,"Please enter a number between 1 and 255","Invalid Input",JOptionPane.ERROR_MESSAGE);
        }
        return(valid);
    }
}