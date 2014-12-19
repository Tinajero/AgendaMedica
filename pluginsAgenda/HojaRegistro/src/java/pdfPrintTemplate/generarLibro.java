package pdfPrintTemplate;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.AcroFields;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfSmartCopy;
import com.itextpdf.text.pdf.PdfStamper;

public class generarLibro {

	private String addressTemplate;
	private String addressPdf;
	private List <Map> data;
	private int contador;
	private int max;
	
	
	
	
	public generarLibro(){
		this.contador = 0;
	}

	public void createPdf()
			 throws IOException, DocumentException {
			
				// System.out.println( System.getProperty("user.dir") );
				 Document document = new Document();
				 PdfSmartCopy copy = new PdfSmartCopy(
				//direcciion de salida del pdf
				 document, new FileOutputStream( getAddressPdf()));
				 document.open();
				 
				 addDataSheets(copy);
				 
				 document.close();
				 
			}
		
	
	
	public void addDataSheets(PdfSmartCopy copy)
			 throws IOException, DocumentException {
	
			 PdfReader reader;
			 PdfStamper stamper;
			 ByteArrayOutputStream baos;

			 //begin  while
			 while ( this.contador < this.max){

				 //direccion de la plantillaa a copiar
				 reader = new PdfReader( getAddressTemplate());
				 baos = new ByteArrayOutputStream();
				 stamper = new PdfStamper(reader, baos);
				//Rellenar la plantilla
				 fill(stamper.getAcroFields());
				 stamper.setFormFlattening(true);
				 stamper.close();
				 
				 reader = new PdfReader(baos.toByteArray());
				 copy.addPage(copy.getImportedPage(reader, 1));

			 //end while
			 }
			 

			}
	


	private void fill(AcroFields form) 
			throws IOException, DocumentException{
		
		String auxDoctor = "";
		String nombreDoctor = (String) data.get(contador).get("doctor");
		Date fecha = (Date) data.get(contador).get("fecha");
		//Set doctors name from data received
		form.setField("Doctor","Dr(a). " + nombreDoctor);
		form.setField("Fecha",fecha.toString());
		String textoField;
		//set hour of date and pacients name
		for (int i= 0  ; this.contador < this.max; i++ ){
				
			auxDoctor = (String) data.get(contador).get("doctor");
			if ( !auxDoctor.equals(nombreDoctor)){
				break;
			}
			textoField = 	(String) data.get(contador).get("hora") +
							":"+
							(String) data.get(contador).get("minuto") +
							" "+
							(String) data.get(contador).get("paciente");//poner nombre paciente
					
			form.setField("Info"+ i , textoField);

			form.setField("Expediente"+i,(String) data.get(contador).get("Expediente"));
			
			this.contador++;
		}
		
	}
	

	
	public void setData(List < Map> data){
		this.data = data;
		this.max = data.size();
	}
	public List<Map> getData(){
		return data;
	}
	public String getAddressPdf() {
		return addressPdf;
	}

	public void setAddressPdf(String addressPdf) {
		this.addressPdf = addressPdf;
	}

	public String getAddressTemplate() {
		return addressTemplate;
	}

	public void setAddressTemplate(String addresTemplate) {
		this.addressTemplate = addresTemplate;
	}
}
