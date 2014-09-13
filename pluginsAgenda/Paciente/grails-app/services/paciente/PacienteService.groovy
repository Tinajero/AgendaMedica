package paciente

import paciente.Paciente;
import grails.transaction.Transactional

@Transactional
class PacienteService {

    def serviceMethod() {

    }
	/**
	 * Elimina al paciente de la base de dator
	 * @param paciente
	 * @return true Exito
	 * @return false Fracaso
	 */
	def delete(Paciente paciente){
		if( paciente.delete(flush:true) )
			return true
		return false
	}
	/**
	 * Regresa la lista de Pacientes de la base de datos acorde a los parametros que reciba
	 * @param params
	 * @return
	 */
	def list(params){
		return Paciente.list(params)
	}
	/**
	 * Guarda un paciente en la base de datos
	 * @param paciente
	 * @return
	 */
	def save(Paciente paciente){
		if(paciente.save(flush:true)){
				return true
		}
		return false
	}
	/**
	 * actualiza un paciente en la base de datos
	 * @param paciente
	 * @return
	 */
	def update(Paciente paciente){
		if(paciente.save(flush:true)){
			return true
		}
		return false
	}
}
