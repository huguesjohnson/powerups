/* https://github.com/huguesjohnson/powerups/blob/main/LICENSE */

package com.huguesjohnson.luise;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.SystemColor;
import java.awt.Taskbar;
import java.awt.Taskbar.Feature;
import java.awt.Toolkit;
import java.io.RandomAccessFile;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;

/*
 * Originally written in Visual Basic 6,converted to Java by Google Gemini.
 */

public class LuiseMain extends JFrame{
	private static final long serialVersionUID=666L;
	private JTextField txtFilePath=new JTextField("<click browse to select a file>",35);
    private List<JCheckBox> checkBoxes=new ArrayList<>();
    private List<String> eventTags=new ArrayList<>();

    public LuiseMain(){
    	this.setupUI();
	}

    private void setupUI(){
    	this.setTitle("Luise - Phantasy Star III Event Editor");
    	this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    	this.setLayout(new BorderLayout(10,10));
    	this.attemptToSetIcon();
    	//file selection panel
    	JPanel topPanel=new JPanel(new FlowLayout(FlowLayout.LEFT));
    	JButton btnBrowse=new JButton("Browse..");
    	txtFilePath.setEditable(false);
    	txtFilePath.setBackground(SystemColor.control);
    	topPanel.add(new JLabel("Save State File:"));
    	topPanel.add(txtFilePath);
    	topPanel.add(btnBrowse);
        //checkbox panel - 4 columns
    	JPanel gridPanel=new JPanel(new GridLayout(0,4,5,5));
    	this.initializeEvents(gridPanel);
    	JScrollPane scrollPane=new JScrollPane(gridPanel);
    	scrollPane.setBorder(BorderFactory.createTitledBorder("Game Events"));
    	//button panel
    	JPanel botPanel=new JPanel(new FlowLayout(FlowLayout.RIGHT));
    	JButton btnSave=new JButton("Save Changes and Quit");
        JButton btnQuit=new JButton("Quit Without Saving");
        botPanel.add(btnSave);
        botPanel.add(btnQuit);
        //event handling for buttons
        btnBrowse.addActionListener(e->handleBrowse());
        btnSave.addActionListener(e->{ 
        	saveChanges(); 
        	System.exit(0); 
        });
        btnQuit.addActionListener(e->System.exit(0));
        //add the panels
        add(topPanel,BorderLayout.NORTH);
        add(scrollPane,BorderLayout.CENTER);
        add(botPanel,BorderLayout.SOUTH);
        setSize(1250,700);
        setLocationRelativeTo(null);
    }

    //TODO - put this somewhere reusable by all the swing apps I have
    private void attemptToSetIcon(){
    	try{
    		URL iconURL=this.getClass().getResource("/com/huguesjohnson/luise/icon.png");
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
                        Image icon=defaultToolkit.getImage(getClass().getResource("/com/huguesjohnson/luise/icon.png"));
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
    
    
    private void addEvent(JPanel panel,String caption,String tag){
    	JCheckBox cb=new JCheckBox(caption);
    	panel.add(cb);
    	checkBoxes.add(cb);
    	eventTags.add(tag);
    }

    private void initializeEvents(JPanel p){
    	addEvent(p,"Sapphire can be used","E11B");
    	addEvent(p,"Laya's pendant active","E144");
    	addEvent(p,"Aqua parts active","E146");
    	addEvent(p,"Aero parts active","E15A");
    	addEvent(p,"After Miun dies,before chest opened","E16F");
    	addEvent(p,"After talking to Siren on Sage Isle","E171");
    	addEvent(p,"Twin's Ruby active","E174");
    	addEvent(p,"Mystery Star active","E175");
    	addEvent(p,"Set at beginning of Rhys' quest","E378");
    	addEvent(p,"Before Rhys enters dungeon","E37A");
    	addEvent(p,"Set after dragon disappears","E37B");
    	addEvent(p,"Rhys put in the dungeon","E37C");
    	addEvent(p,"After talking to Lena in dungeon (1)","E37D");
    	addEvent(p,"After talking to Lena in dungeon (2)","E37E");
    	addEvent(p,"Shopkeepers in Landen tech shop","E37F");
    	addEvent(p,"'Layan woman who never blinks'","E380");
    	addEvent(p,"Mieu joins party","E381");
    	addEvent(p,"Can use Yaata boat","E382");
    	addEvent(p,"After talking to Lyle in cave","E384");
    	addEvent(p,"'The one you seek abides...'","E385");
    	addEvent(p,"Wren joins party","E386");
    	addEvent(p,"Lyle joins party in Weather Station","E387");
    	addEvent(p,"Weather satellite repaired","E388");
    	addEvent(p,"Lena joins party","E38A");
    	addEvent(p,"Moons moved","E38B");
    	addEvent(p,"King of Cille defeated","E38C");
    	addEvent(p,"Selected Maia to marry","E38D");
    	addEvent(p,"Selected Lena to marry","E38E");
    	addEvent(p,"Set at beginning of 2nd generation","E390");
    	addEvent(p,"E391 = ????","E391");
    	addEvent(p,"E392 = ????","E392");
    	addEvent(p,"E393 = ????","E393");
    	addEvent(p,"E394 = ????","E394");
    	addEvent(p,"E395 = ????","E395");
    	addEvent(p,"E396 = ????","E396");
    	addEvent(p,"E397 = ????","E397");
    	addEvent(p,"Set at beginning of Ayn's quest","E398");
    	addEvent(p,"Set after taking control of Ayn (1)","E399");
    	addEvent(p,"Set after taking control of Ayn (2)","E39A");
    	addEvent(p,"Shusoran attacked","E39B");
    	addEvent(p,"Cille attacked","E39C");
    	addEvent(p,"Lensol gate opened","E39D+E39E+E39F");
    	addEvent(p,"Thea in party","E3A0");
    	addEvent(p,"Sari in party","E3A1");
    	addEvent(p,"Lyle dead","E3A2");
    	addEvent(p,"Azura can be entered","E3A8+E3A9");
    	addEvent(p,"Siren defeated","E3AC");
    	addEvent(p,"Set when Nial's quest begins","E3B8");
    	addEvent(p,"Set after taking control of Nial (1)","E3B9");
    	addEvent(p,"Set after taking control of Nial (2)","E3BA");
    	addEvent(p,"Laya in party","E3C7");
    	addEvent(p,"Dahlia can be entered","E3C8+E3C9");
    	addEvent(p,"Kara in party","E400");
    	addEvent(p,"Dark Force free","E45B");
    	addEvent(p,"Miun dead","E45C");
    	addEvent(p,"Siren dead","E45D");
    	addEvent(p,"Mieu learned Grantz","E45E");
    	addEvent(p,"Nei Weapons","E45F");
    	addEvent(p,"Rulakir dead","E460");
    	addEvent(p,"All legendary weapons collected","E461");
    }

    private void handleBrowse(){
    	JFileChooser chooser=new JFileChooser();
    	if(chooser.showOpenDialog(this)==JFileChooser.APPROVE_OPTION){
    		txtFilePath.setText(chooser.getSelectedFile().getAbsolutePath());
    		readStuff();
    	}
    }

	//Java uses 0-based indexing for file offsets vs 1-based in original VB6 code
    private void readStuff(){
    	try(RandomAccessFile raf=new RandomAccessFile(txtFilePath.getText(),"r")){
    		for(int i=0;i<checkBoxes.size();i++){
    			//parse the first address in case of combined tags (e.g.,E39D+E39E)
    			String firstTag=eventTags.get(i).split("\\+")[0];
    			long address=Long.parseLong(firstTag,16);
    			raf.seek(address);
    			byte b=raf.readByte();
    			//in PSIII save states,non-zero usually means the event is triggered
                checkBoxes.get(i).setSelected(b!=0);
            }
        }catch (Exception x){
        	JOptionPane.showMessageDialog(this,"Error reading file: "+x.getMessage());
    	}
    }

    private void saveChanges(){
    	//this is a novel way that Gemini solved this problem
    	//TODO maybe replace with a "isFileOpen" boolean that's set when a file is open or disable this button until a file is opened
    	if(txtFilePath.getText().contains("<click")){return;}
        try(RandomAccessFile raf=new RandomAccessFile(txtFilePath.getText(),"rw")){
        	for(int i=0;i< checkBoxes.size();i++){
        		byte val=(byte)(checkBoxes.get(i).isSelected()?255:0);
        		String[] addresses=eventTags.get(i).split("\\+");
        		for(String addrHex:addresses){
        			long address=Long.parseLong(addrHex,16);
        			raf.seek(address);
        			raf.write(val);
                }
            }
            JOptionPane.showMessageDialog(this,"Changes saved successfully.");
        }catch(Exception x){
            JOptionPane.showMessageDialog(this,"Error saving file: "+x.getMessage());
        }
    }

    public static void main(String[] args){
    	try{
    		UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
    	}catch(Exception x){/* default to metal */}
    	SwingUtilities.invokeLater(()->new LuiseMain().setVisible(true));
    }
}