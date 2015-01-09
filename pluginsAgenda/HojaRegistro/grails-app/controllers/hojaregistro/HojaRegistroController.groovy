package hojaregistro
import grails.converters.XML
class HojaRegistroController {

	static allowedMethods = [ save :'POST',update:"GET"]
	static hojaRegistroDiarioService
	def mapa = [:]

	def index() { 
	}
	
	def buscar() {
		//criterio de b�squeda 1
		//par�metros de b�squeda
		//respond HojaRegistro.list(params), model : [ hojaRegistroList: hojaRegistroDiarioService.list(params)]
		def lista = hojaRegistroDiarioService.list(params)
		
		hojaRegistroDiarioService.printHdr(lista);
		//[ key:value]
		render ( view:"buscar.gsp", model:[ lista:lista])//lista as XML
		
			
	}
	def regresar(){
		notFound()
	}
	
	protected void notFound(){
		redirect action:"index", method : "GET"
	}
	
}
