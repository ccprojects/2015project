package test

class Restaurante {
	
	
	
	String restaurante
	String tipo
	
	String calle
	String nro
	String localidad
	String partido
	String provincia
	
	String inicioAM
	String cierreAM
	String inicioPM
	String cierrePM
	Integer disponibilidad
	
	
	static hasMany= [reservas:Reserva]

   static constraints = {
		restaurante (blank:false)
		tipo (blank:false, inList: ["italiana", "parrilla", "criolla", "mexicana", "china"])
		
		calle (blank:false)
		nro (blank:false)
		localidad (blank:false)
		partido (blank:false)
		provincia (blank:false)
		
		inicioAM (blank:false, inList: ['11','12','13','14','15'])
		cierreAM (blank:false, inList:['14','15','16'])
		inicioPM (blank:false, inList: ['19','20','21','22','23','24'])
		cierrePM (blamk:false, inList: ['00','01','02','03'])
		disponibilidad (blank:false, min:1)
		}
}
