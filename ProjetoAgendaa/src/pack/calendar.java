package pack;

import java.text.SimpleDateFormat;
import java.util.Date;

public class calendar {
		
	public String getDMA()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("dd / MM / yyyy");
		String stringData = sdf.format(new Date());
		return stringData;
	}
	public String getD()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("d");
		String stringData = sdf.format(new Date());
		return stringData;
	}
	public String getM()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
		String stringData = sdf.format(new Date());
		return stringData;
	}
	public String getA()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		String stringData = sdf.format(new Date());
		return stringData;
	}
	
}
