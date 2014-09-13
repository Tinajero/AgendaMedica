package expediente

import grails.transaction.Transactional

@Transactional
class ExpedienteService {

    def serviceMethod() {

    }
	/**
	 * Elimina al expediente de la base de dator
	 * @param expediente
	 * @return true Exito
	 * @return false Fracaso
	 */
	def delete(Expediente expediente){
		if( expediente.delete(flush:true) )
			return true
		return false
	}
	/**
	 * Regresa la lista de Expedientes de la base de datos acorde a los parametros que reciba
	 * @param params
	 * @return
	 */
	def list(params){
		return Expediente.list(params)
	}
	/**
	 * Guarda un expediente en la base de datos
	 * @param expediente
	 * @return
	 */
	def save(Expediente expediente){
		if(expediente.save(flush:true)){
				return true
		}
		return false
	}
	/**
	 * actualiza un expediente en la base de datos
	 * @param expediente
	 * @return
	 */
	def update(Expediente expediente){
		if(expediente.save(flush:true)){
			return true
		}
		return false
	}
}
