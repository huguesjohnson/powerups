/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.falcone;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.Taskbar;
import java.awt.Toolkit;
import java.awt.Taskbar.Feature;
import java.io.File;
import java.io.RandomAccessFile;
import java.net.URL;
import java.util.Vector;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;

/*
 * Originally written in Visual Basic 6, converted to Java by Google Gemini.
 */

public class FalconeMain extends JFrame{
	private static final long serialVersionUID=666L;
	private JTextField txtFilePath;
	private JButton btnSave;
	private JTextField[] hpFields=new JTextField[8]; //4 for current, 4 for max
    @SuppressWarnings("unchecked")
	private JComboBox<String>[] itemBoxes=new JComboBox[24];
    
    /*
     * address offsets
     * these should be externalized if other save formats are to be supported
     */
    private final int ITEM_START=46542;
    private final int HP_OFFSETS[]={46695,46696,46753,46754,46811,46812,46869,46870};

    public FalconeMain(){
    	this.initUI();
    }
    
    //TODO - put this somewhere reusable by all the swing apps I have
    private void attemptToSetIcon(){
    	try{
    		URL iconURL=this.getClass().getResource("/com/huguesjohnson/falcone/icon.png");
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
                        //of course this is different than setting the icon, of course it is
                        Image icon=defaultToolkit.getImage(getClass().getResource("/com/huguesjohnson/falcone/icon.png"));
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

    private void initUI(){
    	this.setTitle("Falcone"); 
    	this.setSize(700,850);
    	this.setDefaultCloseOperation(EXIT_ON_CLOSE);
    	this.setLayout(new BorderLayout(10,10));
    	this.attemptToSetIcon();
        //file selection panel
    	JPanel topPanel=new JPanel(new FlowLayout(FlowLayout.LEFT));
    	txtFilePath=new JTextField(30);
    	txtFilePath.setEditable(false);
    	txtFilePath.setText("<click browse to select a file>");
    	JButton btnBrowse=new JButton("Browse..");
    	btnBrowse.addActionListener(e->handleBrowse());
    	topPanel.add(new JLabel("Save State File:"));
    	topPanel.add(txtFilePath);
        topPanel.add(btnBrowse);
        //parent for HP and items panels
        JPanel centerPanel=new JPanel();
        centerPanel.setLayout(new BoxLayout(centerPanel,BoxLayout.Y_AXIS));
        //HP panel
        JPanel hpPanel=new JPanel(new GridLayout(4,2,5,5));
        hpPanel.setBorder(BorderFactory.createTitledBorder("Character Stats"));
        HPInputVerifier hpVerifier=new HPInputVerifier();
        for(int i=0;i<8;i++){
        	hpFields[i]=new JTextField(5);
        	hpFields[i].setInputVerifier(hpVerifier);
        	String labelText=((i%2==0)?"Char "+((i/2)+1)+" HP:":"Max HP:");
        	hpPanel.add(new JLabel(labelText));
        	hpPanel.add(hpFields[i]);
    	}
        //items panel
        JPanel itemPanel=new JPanel(new GridLayout(12,2,10,2));
        itemPanel.setBorder(BorderFactory.createTitledBorder("Inventory Items"));
        Vector<String> items=getItemList();
        for(int i=0;i<24;i++){
        	itemBoxes[i]=new JComboBox<String>(items);
        	itemPanel.add(itemBoxes[i]);
        }
        //add the HP and items panels
        centerPanel.add(hpPanel);
        centerPanel.add(itemPanel);
        //save panel
        btnSave=new JButton("Save");
        btnSave.setEnabled(false); 
        btnSave.addActionListener(e->handleSave());
        add(topPanel,BorderLayout.NORTH);
        add(new JScrollPane(centerPanel),BorderLayout.CENTER);
        add(btnSave,BorderLayout.SOUTH);
    }

    private Vector<String> getItemList(){
    	Vector<String> list=new Vector<>();
    	list.add("[00] = Empty");
    	list.add("[01] = Short Sword");
    	list.add("[02] = Short Sword +1");
    	list.add("[03] = Short Sword +2");
    	list.add("[04] = Short Sword +3");
    	list.add("[05] = Axe");
    	list.add("[06] = Axe +1");
    	list.add("[07] = Axe +2");
    	list.add("[08] = Dagger");
    	list.add("[09] = Dagger +1");
    	list.add("[0A] = Dagger +2");
    	list.add("[0B] = Staff");
    	list.add("[0C] = Staff of Healing");
    	list.add("[0D] = Staff of Striking");
    	list.add("[0E] = Mace");
    	list.add("[0F] = Mace +1");
    	list.add("[10] = Mace +2");
    	list.add("[11] = Mace +3");
    	list.add("[12] = Sword");
    	list.add("[13] = Sword +1");
    	list.add("[14] = Sword +2");
    	list.add("[15] = Sword +3");
    	list.add("[16] = Spear");
    	list.add("[17] = Spear +1");
    	list.add("[18] = Spear +2");
    	list.add("[19] = Spear +3");
    	list.add("[1A] = Sword +1, vs Drain +3");
    	list.add("[1B] = Sword +1, vs Spells+2");
    	list.add("[1C] = Sword +1, vs Undead+2");
    	list.add("[1D] = Sword +1, vs Dragons+3");
    	list.add("[1E] = Sling");
    	list.add("[1F] = Sling +1");
    	list.add("[20] = Dart");
    	list.add("[21] = Dart +1");
    	list.add("[22] = Dart +2");
    	list.add("[23] = Bow");
    	list.add("[24] = Bow +1");
    	list.add("[45] = Shield");
    	list.add("[46] = Shield +1");
    	list.add("[47] = Shield +2");
    	list.add("[48] = Shield +3");
    	list.add("[49] = Leather Armor");
    	list.add("[4A] = Leather Armor +1");
    	list.add("[4B] = Leather Armor +2");
    	list.add("[4C] = Leather Armor +3");
    	list.add("[4D] = Chain Mail Armor");
    	list.add("[4E] = Chain Mail Armor +1");
    	list.add("[4F] = Chain Mail Armor +2");
    	list.add("[50] = Chain Mail Armor +3");
    	list.add("[51] = Plate Mail Armor");
    	list.add("[52] = Plate Mail Armor +1");
    	list.add("[53] = Plate Mail Armor +2");
    	list.add("[54] = Plate Mail Armor +3");
    	list.add("[58] = Displacer Cloak");
    	list.add("[59] = Girdle of Giant Strength");
    	list.add("[5A] = Gauntlets of Ogre");
    	list.add("[5B] = Boots of Speed");
    	list.add("[5E] = Potion of Healing");
    	list.add("[5F] = Potion of Extra Healing");
    	list.add("[60] = Potion of Fire Resistance");
    	list.add("[61] = Potion of Invulnerability");
    	list.add("[62] = Wand of Cold");
    	list.add("[63] = Wand of Fireballs");
    	list.add("[64] = Wand of Lightning");
    	list.add("[65] = Rod of Resurrection");
    	list.add("[66] = Ring of Fire Resistance");
    	list.add("[67] = Ring of Protection +1");
    	list.add("[68] = Ring of Regenerate");
    	list.add("[69] = Scroll of Magic Missile");
    	list.add("[6A] = Scroll of Prot from Evil");
    	list.add("[6B] = Scroll of Shield");
    	list.add("[6C] = Scroll of Sleep");
    	list.add("[6D] = Scroll of Charm");
    	list.add("[6E] = Scroll of Invisibility");
    	list.add("[6F] = Scroll of Web");
    	list.add("[70] = Scroll of Dispel Magic");
    	list.add("[71] = Scroll of Fireball");
    	list.add("[72] = Scroll of Lightning");
    	list.add("[73] = Scroll of Protection from Evil 10ft");
    	list.add("[74] = Scroll of Protection from Missiles");
    	list.add("[75] = Scroll of Hold");
        list.add("[76] = Scroll of Confusion");
        list.add("[77] = Scroll of Ice Storm");
        list.add("[78] = Scroll of Charm Monsters");
        list.add("[79] = Scroll of Dimension Door");
        list.add("[7A] = Scroll of Curse");
        return(list);
    }

    private void handleBrowse(){
    	JFileChooser chooser=new JFileChooser();
    	if(chooser.showOpenDialog(this)==JFileChooser.APPROVE_OPTION){
    		File f=chooser.getSelectedFile();
    		txtFilePath.setText(f.getAbsolutePath());
    		readData(f);
    		btnSave.setEnabled(true);
    	}
    }

    private void readData(File file){
    	try(RandomAccessFile raf=new RandomAccessFile(file,"r")){
    		//read items
    		for(int i=0;i<24;i++){
    			raf.seek(ITEM_START+i);
    			int val=raf.readUnsignedByte();
    			setComboByHex(itemBoxes[i],val);
            }
    		//read HP
    		for(int i=0;i<8;i++){
    			raf.seek(HP_OFFSETS[i]);
    			hpFields[i].setText(String.valueOf(raf.readUnsignedByte()));
    		}
    	}catch(Exception x){
    		JOptionPane.showMessageDialog(this,"Error: "+x.getMessage());
		}
	}

    private void handleSave(){
    	try(RandomAccessFile raf=new RandomAccessFile(txtFilePath.getText(),"rw")){
    		//write items
    		for(int i=0;i<24;i++){
    			raf.seek(ITEM_START+i);
    			String selected=(String)itemBoxes[i].getSelectedItem();
    			int val=Integer.parseInt(selected.substring(1,3),16);
    			raf.writeByte(val);
    		}
    		//write HP
    		for(int i=0;i<8;i++){
    			raf.seek(HP_OFFSETS[i]);
    			int val=Integer.parseInt(hpFields[i].getText());
    			raf.writeByte(val);
    		}
    		JOptionPane.showMessageDialog(this,"Save Successful!");
    	}catch(Exception x){
    		JOptionPane.showMessageDialog(this,"Error: "+ x.getMessage());
        }
    }

    private void setComboByHex(JComboBox<String> cb,int val){
    	String hex=String.format("[%02X]",val);
    	for(int i=0;i<cb.getItemCount();i++){
    		if(cb.getItemAt(i).startsWith(hex)){
    			cb.setSelectedIndex(i);
    			return;
    		}
		}
    	cb.setSelectedIndex(0);
    }

    public static void main(String[] args){
    	SwingUtilities.invokeLater(()->new FalconeMain().setVisible(true));
	}
}