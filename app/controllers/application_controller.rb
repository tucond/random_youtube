class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        include DeviseHackFakeSession
        skip_before_action :verify_authenticity_token, if: :devise_controller?, raise: false 
        # before_action :configure_permitted_parameters, if: :devise_controller?

        # protected

        # def configure_permitted_parameters
        #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        # end
end
