# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

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
    prepend_before_action :verify_user, only: [:destroy]

    private
    ## This method intercepts SessionsController#destroy action
    ## If a signed in user tries to sign out, it allows the user to sign out
    ## If a signed out user tries to sign out again, it redirects them to sign in page
    def verify_user
      ## redirect to appropriate path
      redirect_to new_user_session_path, notice: 'You have already signed out. Please sign in again.' and return unless user_signed_in?
    end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
