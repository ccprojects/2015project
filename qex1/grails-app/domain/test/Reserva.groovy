package test

class Reserva {
	
	   String usuario
		String restaurante
		Integer comensales
		Date fecha
		String hora
		
		static belongsTo= [restaurante:Restaurante, usuario:Usuario]
		
		static constraints = {
			
			usuario (blank:false, email:true)
			restaurante (blank:false)
			comensales (blank:false)
			fecha (blank:false)
			hora (blank:false)
					
				}
}





