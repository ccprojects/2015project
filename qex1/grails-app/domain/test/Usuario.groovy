package test

class Usuario {
	
	String Nombre
	String Apellido
	String email
	String Password
	Integer Telefono

	String calle
	Integer nro
	String partido
	String localidad	
	String provincia

	static hasMany= [reservas:Reserva]
	
    static constraints = {
		
		nombre (blank:false)
		apellido (blank:false)
		email (blank:false, email:true)
		password (blank:false, password: true)
		
		telefono (blank:false)
		
		calle (blank:false)
		nro (blank:false)
		localidad (blank:false)
		partido (blank:false)
		provincia (blank:false)
    }
}
