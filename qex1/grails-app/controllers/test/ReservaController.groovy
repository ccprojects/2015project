package test



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ReservaController {
	
	

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Reserva.list(params), model:[reservaInstanceCount: Reserva.count()]
	}

	def show(Reserva reservaInstance) {
		respond reservaInstance
	}

	def create() {
		respond new Reserva(params)
	}

	@Transactional
	def save(Reserva reservaInstance) {
		if (reservaInstance == null) {
			notFound()
			return
		}

		if (reservaInstance.hasErrors()) {
			respond reservaInstance.errors, view:'create'
			return
		}
		$ {MyBean.restaurante}
		
		//<g:fieldValue bean="${restaurante}" field="restaurante" />
		
		
		reservaInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'reserva.label', default: 'Reserva'), reservaInstance.id])
				redirect reservaInstance
			}
			'*' { respond reservaInstance, [status: CREATED] }
		}
	}

	def edit(Reserva reservaInstance) {
		respond reservaInstance
	}

	@Transactional
	def update(Reserva reservaInstance) {
		if (reservaInstance == null) {
			notFound()
			return
		}

		if (reservaInstance.hasErrors()) {
			respond reservaInstance.errors, view:'edit'
			return
		}

		reservaInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Reserva.label', default: 'Reserva'), reservaInstance.id])
				redirect reservaInstance
			}
			'*'{ respond reservaInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Reserva reservaInstance) {

		if (reservaInstance == null) {
			notFound()
			return
		}

		reservaInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'Reserva.label', default: 'Reserva'), reservaInstance.id])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'reserva.label', default: 'Reserva'), params.id])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}

	def reservar(){
		def reserva = new Reserva(params)	// NO ESTA RECIBIENDO LOS PARAMETRS DE INDEX(VER SI LOS MANDA)
		def resto= new Restaurante(params) //NO ESTARIA CARGANDO LOS DATOS DEL RESTO SELECCIONADO
										// ENT-> ACA DEBERIA RECIBIR DATOS DE RESTO DEL FORM DE INDEX Y MANEJARLOS DESDE ESTA VAR RESTO
		//def resto= findByRestaurante(restauranteInstance.restaurante)
		
		Restaurante r = Restaurante.get('Maderos')
		
		if(resto){
			
					
			flash.message = "Gracias por elegir ${params.restaurante} , la disponibilidad horaria es  ${resto.disponibilidad}"
			def disp=Restaurante.findByDisponibilidad(params.disponibilidad)
			if (reserva.comensales <= disp){
				
				reserva.save()
				//respond new Reserva(params)
				render "Reserva ha sido Creada"
				}
			
			
			}else{
			
			flash.message= "vuelva a intentarlo"
			
			}
		
		
		
		
		}
	
	
	}
