package doctor
/**
 * Almacenara los datos del Doctores de la institucion
 * @author Daniel
 *
 */
class Doctor {
	String apellidoPaterno
	String apellidoMaterno
	String nombre
	String sexo
	String cedula
    static constraints = {
		sexo(inList:["masculino", "femenino"])
		cedula nullable:true
    }
}
