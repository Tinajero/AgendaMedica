package cita


import cita.Cita;
import grails.transaction.Transactional

@Transactional
class CitaService {


    def serviceMethod() {

    }
	def delete(Cita cita){
		if (cita.delete(flush:true))
			return true
		return false
	}

	def list(params){
		//obtiene el id de cada cita
		def s =  Cita.list(params)
		return s
	}

	def save(Cita cita){
		if(cita.validate() && cita.save(flush:true))
			return true
		return false
	}


	def update(Cita cita){
		if(cita.validate() && cita.save(flush:true))
		return true
	return false
	}
}
