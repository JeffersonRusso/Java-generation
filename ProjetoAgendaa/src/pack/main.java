package pack;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.swing.JOptionPane;

public class main {

	
	public static void main(String[] args) {
	
		boolean sair = true;
		Agenda agenda = new Agenda();
		while(true) {
		agenda.desenharGridAgenda();
		agenda.selecionarOpcao();
	}	
}
	
	
	
	
	/* public static void main(String[] args) {
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd / MM / yyyy");
		String stringDate = sdf.format(new Date());
	   
		int day = 0;
		int a = 0;
		String lista =  "";
		String[] mgs;
		int[] marcarDia;
		marcarDia = new int[31];
		
		
		
	while(true ) {
		
		
		mgs = new String[31];
		
		String date = stringDate + "\n ------------------------------------\n";
		for(a = 1; a < 31; a ++ ) {
			if(a == day) 
			date = date +"("+a+")" + " ";
			else
			date = date + a + " ";
			if( a < 10)
				date = date + "  ";
			if(a % 7 == 0 && a != 0)
				date = date + "\n";
		}
		date = date + "\n------------------------------------\n1 - ADD\n2- EXIT\n3 - LIST";
		int x = Integer.parseInt(JOptionPane.showInputDialog (null , date));
			if(x == 1) {
				day = Integer.parseInt(JOptionPane.showInputDialog (null , "Informe o dia"));
				
				mgs[day] = JOptionPane.showInputDialog (null , "informe a mensagem : ");
				System.out.println(mgs[day]);
		
			}
			
					for (int i = 0; i < 31; i++) {
						if (mgs[i] != null) {
							lista = lista + day + " :" + mgs[i] + "\n";
							System.out.println("aaa");
						}
						else {
							
						}
					}
					if(x == 3) 
						JOptionPane.showMessageDialog(null, lista);
		}
	} */

}
