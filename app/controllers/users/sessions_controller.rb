class Users::SessionsController < Devise::SessionsController
  #before_action :logged_in_user

  #private
   # Confirms a logged-in user.
    #def logged_in_user
      #unless user_signed_in?
        #flash[:danger] = "Por favor, insira seu login!"
        #redirect_to new_user_session_path
      #end
    #end
    
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
