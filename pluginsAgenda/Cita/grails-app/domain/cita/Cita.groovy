package cita
import paciente.Paciente
import expediente.Expediente
import doctor.Doctor

/**
 * Almacenar� los datos de las citas 
 * @author Max
 *
 */
class Cita {
	Date fecha
	//String hora
	Doctor doctor
	Paciente paciente
	Expediente expediente

    static constraints = {
		
    }
}
