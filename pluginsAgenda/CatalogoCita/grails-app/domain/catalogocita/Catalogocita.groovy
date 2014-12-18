package catalogocita
/**
 * Objeto que guardara los tipos de citas medicas que se ofrecen, esto para poder llevar un control
 * con respecto al Doctor que atiende tales citas medicas
 * Asi un doctor puede atender una o varias tipos de citas medicas
 * 
 * @author D
 *
 */
class Catalogocita {
	/** el nombre del tipo de cita**/
	String nombre
	/** una breve descipcion que puede o no tener**/
	String descripcion
    static constraints = {
		descripcion nullable:true
    }
}
