package pdfPrintTemplate;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfStamper;
import com.itextpdf.text.pdf.PdfReader;
public class Hdr {

	private String rutaini = "";//"C:/Users/RKL/Documents/Untitled1.pdf"; 
	private String rutafin = "";//"C:/Users/RKL/Documents/HDR.pdf"; 
	PdfReader pdfPlantilla = null;
	PdfStamper stamper = null;
	
	public Hdr(List<Map> data){
		
		System.out.println("end");
		for ( int i = 0; i < data.size(); i++){
			System.out.println(data.get(i)+"->>"+data.get(i).containsKey("fecha"));
	
		}
		
		System.out.println("end");
		
	}
	public Hdr(String rutaini, String rutafin)throws IOException,DocumentException{
		this.rutaini= rutaini;
		this.rutafin= rutafin;
	}
	
	public void openFile() throws FileNotFoundException, IOException, DocumentException{
		pdfPlantilla = new PdfReader( new FileInputStream(rutaini));
		stamper = new PdfStamper( pdfPlantilla, new FileOutputStream(rutafin));

		//habilitando Stamper
	}
	
	public void closeFile() throws DocumentException, IOException{
		stamper.close();
		pdfPlantilla.close();
	
	}
	
	public boolean setField(String key, String value) throws IOException, DocumentException{

		if (stamper.getAcroFields().setField(key,value) ){
			return true;
		}
		
		return false;
	}
	
	/*public static void main(String args[])throws IOException{
		try
		{
		Hdr d  = new Hdr("C:/Users/RKL/Documents/Untitled1.pdf","C:/Users/RKL/Documents/HDR.pdf");
			d.openFile();
			d.setField("Fecha", "Hoy");
			d.setField("Info0","Pmain java en grails");
			d.closeFile();
		}catch(Exception e){
			e.printStackTrace();
		}
	
	}*/
	
}
