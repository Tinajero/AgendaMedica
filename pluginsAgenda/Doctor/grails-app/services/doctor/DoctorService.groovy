
package doctor

import grails.transaction.Transactional

@Transactional
class DoctorService {
	/**
	 * Esto es un servicio , estos dice la documentacion de grails que es preferible que ellos manejen
	 * Services in Grails are the place to put the majority of the logic in your application, 
	 * leaving controllers responsible for handling request flow with redirects and so on.
	 * asi que parece que en estos debe ir la logica de la aplicacion
	 * aunque lo que yo he hecho es que en los controllers construyo los objetos 
	 * y ya en este services solo lo llamo para guardar o hacer consultas
	 * todo estos si lo creamos nosotros
	 * comentaremos y colocaremos metodos en orden alfabetico
	 * @return
	 */

    def serviceMethod() {

    }
	/**
	 * borra al objeto Doctor doctor de la base de datos
	 * @param doctor, 
	 * @return Exito:true, Fallo: false
	 */
	def delete(Doctor doctor){
		if (doctor.delete(flush:true))
			return true
		return false
	}
	/** 
	 * lista a todos los objetos doctor que se encuentren en la base de datos
	 * y params son las variables get que puede obtener de la vista y asu vez lo enviara 
	 * el controller(leer documentacion de el metodo list() ) 
	 * vamos a tener que comentar asi cada metodo
	 * @param params, variable del tipo map
	 * @return List, lista de doctores
	 */
	def list(params){
		return Doctor.list(params)
	}
	/**
	 * Guarda al objeto Doctor doctor en la base de datos
	 * @param doctor, que sera guardado
	 * @return Exito:true, Fallo: false
	 */
	def save(Doctor doctor){
		if(doctor.validate() && doctor.save(flush:true))
			return true
		return false
	}
	/**
	 * actualiza al objeto Doctor doctor en la base de datos
	 * @param doctor, que sera guardado
	 * @return Exito:true, Fallo: false
	 */
	def update(Doctor doctor){
		if(doctor.validate() && doctor.save(flush:true))
		return true
	return false
	}
}
