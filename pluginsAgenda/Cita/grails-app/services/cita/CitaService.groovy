package cita

import paciente.Paciente;
import cita.Cita;
import grails.transaction.Transactional

@Transactional
class CitaService {

    def serviceMethod() {

    }
	
	def save(Cita cita){
		if(cita.save(flush:true)){
				return true
		}
		return false
	}
	
	def delete(Cita cita){
		if( cita.delete(flush:true) )
			return true
		return false
	}
	
	def update(Cita cita){
		if(cita.save(flush:true)){
			return true
		}
		return false
	}
	
	def list(params){
		return cita.list(params)
	}
}
