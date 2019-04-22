module ApplicationHelper

	def get_icon(state)
		state ? '<i class="fas fa-check true"></i>' : '<i class="fas fa-times false "></i>'
	end

	def select_documento
		[
	      ['Cédula de Ciudadanía', 'Cédula de Ciudadanía'],
	      ['Tarjeta de Identidad', 'Tarjeta de Identidad'],
	      ['Registro Civil de Nacimiento', 'Registro Civil de Nacimiento'],
	      ['Cédula de Extranjeria', 'Cedula de Extranjeria'],
	      ['Pasaporte', 'Pasaporte'],
	      ['Menor sin Identificación', 'Menor sin Identificación'],
	      ['Adulto sin Identificación', 'Adulto sin Identificación'],
	      ['Carnet Diplomático', 'Carnet Diplomático']
	     
	  	]
	end

	def select_type_proces
		[

			["Misional", "Misional"],
			["Apoyo", "Apoyo"]


		]
	end

	def select_document_source
		[

			["Nuevo Documento", "Nuevo Documento"],
			["Existente o Adjunto", "Existente"]


		]
		
	end

	def get_field_type
		[

			["Texto", "Texto"]


		]
	end

	def get_date(fecha)
   
	    if fecha != nil
	        ds = fecha.strftime("%w") #Dia de la semana
	        y = fecha.strftime("%Y") #Año
	        dm = fecha.strftime("%d") #Dia del mes
	        m = fecha.strftime("%m") # Mes del Año
	        meses = {"01" => "Enero", "02" => "Febrero","03"=>"Marzo","04" => "Abril", "05" => "Mayo","06"=> "Junio" ,"07"=> "Julio", "08" => "Agosto", "09"=> "Septiembre" ,"10"=> "Octubre","11" => "Noviembre" ,"12" => "Diciembre" }
	        dias = {"7" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
	        return  meses[m] + " " + dm + " del " + y 
	    #dias[ds] + ", " +
	     end 
   	end

    def get_date_hora(fecha)

	    if fecha != nil
	        ds = fecha.strftime("%w") #Dia de la semana
	        y = fecha.strftime("%Y") #Año
	        dm = fecha.strftime("%d") #Dia del mes
	        m = fecha.strftime("%m") # Mes del Año
	        meses = {"01" => "Enero", "02" => "Febrero","03"=>"Marzo","04" => "Abril", "05" => "Mayo","06"=> "Junio" ,"07"=> "Julo", "08" => "Agosto", "09"=> "Septiembre" ,"10"=> "Octubre","11" => "Noviembre" ,"12" => "Diciembre" }
	        dias = {"0" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
	        fecha.min < 10 ? min = "0" : min = ""
	        horat = fecha.hour > 12 ?   fecha.hour - 12 : fecha.hour
	        horati = fecha.hour > 12 ?   "pm" : "am"
	        fecha.hour < 10 ? hora = "0" : hora = ""
	        return "El " + dias[ds] + " " + dm + " de "+  meses[m] + " del "  + y + " a las " + hora + horat.to_s   + ":" + min + fecha.min.to_s + " " + horati + " Enviaste La Peticion "
	    #dias[ds] + ", " +
	    end

    end 

	def get_date_hora1(fecha)

	    if fecha != nil
	        ds = fecha.strftime("%w") #Dia de la semana
	        y = fecha.strftime("%Y") #Año
	        dm = fecha.strftime("%d") #Dia del mes
	        m = fecha.strftime("%m") # Mes del Año
	        meses = {"01" => "Enero", "02" => "Febrero","03"=>"Marzo","04" => "Abril", "05" => "Mayo","06"=> "Junio" ,"07"=> "Julo", "08" => "Agosto", "09"=> "Septiembre" ,"10"=> "Octubre","11" => "Noviembre" ,"12" => "Diciembre" }
	        dias = {"0" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
	        fecha.min < 10 ? min = "0" : min = ""
	        horat = fecha.hour > 12 ?   fecha.hour - 12 : fecha.hour
	        horati = fecha.hour > 12 ?   "pm" : "am"
	        fecha.hour < 10 ? hora = "0" : hora = ""
	        return "El " + dias[ds] + " " + dm + " de "+  meses[m] + " del "  + y + " a las " + hora + horat.to_s   + ":" + min + fecha.min.to_s + " " + horati + " Se Reviso Tu Peticion "
	    #dias[ds] + ", " +
	    end

	 end 


	 def get_traslate(value)
	 	if value == "in_creation"
		 		return "En Creacion"
		 	elsif value == "create"
		 		return "Creado"
		 	elsif value == "review"
		 		return "Revisado"
		 	elsif value == "aprove"
		 		return "Aprobado"
		 	elsif value == "ready"
		 		return "Listo"	 
	 	end	 		
	 end

	 def get_finish_document(state1, state2)
	 	if state1 && state2 == true
	 		return true
	 	end
	 end


	 def get_last(state)
	 	if state == true
	 		return "Si"
	 		else 
	 		return "No"
	 	end
	 end

	 def get_fields
	 	Field.all
	 end

	 def get_procesos
	 	Proceso.all
	 end

	 def get_document_type
	 	DocumentType.all
	 end

	 def get_user
	 	User.where.not(id: current_user.id)
	 end

	 def get_review
	 	Document.where(user_review_id: current_user.id, state_review: false)
	 end

	 def get_state_ready
	 	Document.where(user_review_id: current_user.id, user_aprove_id: current_user.id).first
	 end

end
