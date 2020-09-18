package pack;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.swing.JOptionPane;

public class main {

		public static void main(String[] args) {
		
			Agenda agenda = new Agenda();
			
			boolean sairEntrar = true;
			
			while(sairEntrar) {
			agenda.desenharGridAgenda();
			agenda.selecionarOpcao();
			sairEntrar = agenda.fecharAgenda();
		}	
	}
}
