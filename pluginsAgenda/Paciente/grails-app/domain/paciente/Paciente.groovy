package paciente
import domicilio.Domicilio
import expediente.Expediente
/**
 * Almacena a los pacientes del hospital
 * @author D
 *
 */
class Paciente {
	/** apellido Paterno del paciente **/
	String apellidoPaterno
	/** apellido materno del paciente **/
	String apellidoMaterno
	/** nombre o nombres del paciente **/
	String nombre
	/** sexo del paciente Masculino o Femenino **/
	String sexo
	/**  la fecha de inscripcion del apciente **/
	Date fechaInscripcion
	/** la fecha de nacimiento del paciente **/
	Date fechaNacimiento
	/** el lugar de Nacimiento del paciente **/
	String lugarNacimiento
	/** estado Civil del paciente **/
	String estadoCivil
	/** la ocupacion del paciente **/
	String ocupacion
	/** la cedula unica de registro de poblacion del paciente aka curp**/
	String curp
	/** el folio del seguro popular del paciente**/
	String folioSeguroPopular
	/** el numero telefonico del paciente si tuvieses **/
	String telefono
	/** objeto Domicilio que tiene el domicilio de un paciente **/
	Domicilio domicilio
	/** un paciente tiene un expediente **/
//	static hasOne = [expediente:Expediente]
	Expediente expediente 
    static constraints = {
		sexo ( inList: ["Masculino", "Femenino"])
		estadoCivil ( inList: ["Soltero/a",
							"Casado/a",
							"Divorciado/a",
							"Viudo/a",
							"Separado/a",
							"Union libre"
			])
		
		curp ( matches:"[A-Za-z]{4}[0-9]{6}[H,M][A-Za-z]{5}[0-9]{2}")
		telefono nullable:true
		
    }
}
