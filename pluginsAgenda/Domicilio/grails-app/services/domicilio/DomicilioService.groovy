package domicilio

import domicilio.Domicilio;
import grails.transaction.Transactional

@Transactional
class DomicilioService {

    def serviceMethod() {

    }
	/**
	 * Elimina al domicilio de la base de dator
	 * @param domicilio
	 * @return true Exito
	 * @return false Fracaso
	 */
	def delete(Domicilio domicilio){
		if( domicilio.delete(flush:true) )
			return true
		return false
	}
	/**
	 * Regresa la lista de Domicilios de la base de datos acorde a los parametros que reciba
	 * @param params
	 * @return
	 */
	def list(params){
		return Domicilio.list(params)
	}
	/**
	 * Guarda un domicilio en la base de datos
	 * @param domicilio
	 * @return
	 */
	def save(Domicilio domicilio){
		if(domicilio.save(flush:true)){
				return true
		}
		return false
	}
	/**
	 * actualiza un domicilio en la base de datos
	 * @param domicilio
	 * @return
	 */
	def update(Domicilio domicilio){
		if(domicilio.save(flush:true)){
			return true
		}
		return false
	}
}
