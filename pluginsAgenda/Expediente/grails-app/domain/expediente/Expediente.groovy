package expediente
/** 
 *  Abstrae la informacion de un expediente clinico,
 *  tendra todos los datos que tiene un expediente
 * @author D
 *
 */
//import paciente.Paciente
class Expediente {
	String numeroExpediente
	/**
	 * un expediente pertenece a un paciente
	 */
//	static belongsTo = [paciente:Paciente] 
//	paciente Paciente
    static constraints = {
    }
}
