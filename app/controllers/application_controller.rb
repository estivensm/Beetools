class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    [:account_update,:sign_up].each do |metodo|
    devise_parameter_sanitizer.permit(metodo, keys: [:first_name, :second_name, :first_last_name, :second_last_name, :document_type, :document_number, :birthday, :avatar, :admin_user, :is_account, :position_id])
   end
  end

  layout :layout_for_selection
	protected
	
	def layout_for_selection
		if controller_name == 'sessions'  || controller_name == 'passwords' 
		      'application'
		elsif controller_name == 'registrations'

		    if action_name == "new" || action_name == "create"
		            'application'
		    else
		     'user'
		    end
		 else
		  'user'
		end
  end
end
