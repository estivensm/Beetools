class UserMailer < ApplicationMailer

	def user_review(documento)
		@document = documento
		mail(to: "salazar-moncada-estiven@hotmail.com", subject: "EL Documento #{@document.coding} necesita tu Revision")
	end

	def user_aprove(documento)
		@document = documento
		mail(to: "salazar-moncada-estiven@hotmail.com", subject: "EL Documento #{@document.coding} necesita tu Aprobacion")
	end

end
