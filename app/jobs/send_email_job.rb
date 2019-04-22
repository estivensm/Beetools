class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(documento, number)
  	@numero = number
  	@document = documento
  	
  	if @numero == 1
  		UserMailer.user_review(@document).deliver_later
  	else
  		UserMailer.user_aprove(@document).deliver_later
  	end
 
  end
end
