package domicilio
/**
 * Clase Domicilio que almacenara los domicilios del sistema
 * principalmente los domicilios del paciente
 * 
 * @author Daniel
 *
 */
class Domicilio {
	/** el nombre de la calle  **/
	String calle
	/** un numero exterior  **/
	String numeroExterior
	/** un numero interior si existiese **/
	String numeroInterior
	/** la localidad **/
	String localidad
	/**  el municipio **/
	String municipio
	/** Estado de la direccion , preferentemete sera solo el estado Oaxaca* */
	String estado
    static constraints = {
		numeroInterior nullable:true
    }
}
