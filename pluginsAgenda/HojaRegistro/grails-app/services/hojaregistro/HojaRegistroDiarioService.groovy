package hojaregistro

import grails.transaction.Transactional
import pdfPrintTemplate.Hdr
import pdfPrintTemplate.generarLibro
import cita.Cita
@Transactional
class HojaRegistroDiarioService {

    def serviceMethod() {

    }
		
	def list(params){
		//obtener lista apratir de params
		//params {fecha:"", doctor:""}
  		
  		def resultados=[]
		  
  		resultados = Cita.executeQuery(
  			"select  c.fecha, c.hora, c.minuto, d.nombre, d.apellidoPaterno, d.apellidoMaterno, d.cedula\
  					,p.nombre, p.apellidoPaterno, p.apellidoMaterno, e.numeroExpediente\
  			 from Cita as c, Doctor as d, Paciente as p, Expediente as e\
  			 where c.fecha=? and d.id = c.doctor and p.id = c.paciente and p.expediente = e.id ORDER BY d.nombre,c.hora,c.minuto ASC",[params.fecha])
		
		//Se obtienen id´s_id
		def lista = []
		//construcción de lista de mapas
		
		for ( Object[] r in resultados ){
			def map =	[	'fecha': r[0], 
							'hora':r[1],
							'minuto' : r[2],
							'doctor': r[3]+" " + r[4]+" "+ r[5], 
							'cedula': r[6],
							'paciente' : r[7] +" "+ r[8] +" "+ r[9],
							'Expediente': r[10]
						]


			lista += map
		}
		
		//Enviando list[{map}]
		return lista
		
	}
	
	def printHdr(def lista){
		
		//def hdr = new Hdr(lista);
		
		def libro = new generarLibro();
		libro.setAddressPdf("C:/Users/RKL/Documents/librocitas.pdf");
		libro.setAddressTemplate("src/pdf/plantillaHDR.pdf");

		libro.setData(lista);
				
		libro.createPdf();
		
		/*
		try{
		
			
		def imprime = new Hdr("C:/Users/RKL/Documents/Untitled1.pdf","C:/Users/RKL/Documents/HDR.pdf")
		imprime.openFile()

		imprime.setField("Fecha","Desde Grails")
		imprime.setField("Doctor","Bueno esto es todo para una plantilla")
		imprime.setField("Info02","Falta imprimir el libro")
		
		imprime.closeFile()
		}catch(Exception e){
			e.printStackTrace()
		}
		
		*/
	}
	
}
