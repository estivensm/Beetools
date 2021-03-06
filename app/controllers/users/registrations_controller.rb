# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :html, :js, :only => [:new, :create, :create_user, :update]
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end


  def create_user
    @users = User.create(user_params)
    if @users.save
        redirect_to users_path
        flash[:success] = "El Registro de creo con"
      else 
        puts "noguardaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
        flash[:error] = "El Registro No se puedo crear"
    end
  end

  # PUT /resource
  #def update
    #super
  #end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  private 

  def after_update_path_for(resource)
    edit_user_registration_path
  end

  def user_params
    params.permit(:email, :password, :password_confirmation, :first_name, :second_name, :first_last_name, :second_last_name, :document_type, :document_number, :avatar, :admin_user, :is_account, :position_id, :birthday)
  end
end
