class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_i18n_locale_from_params
  before_action :authenticate_user!
  include Pundit

  protected
    def set_i18n_locale_from_params
      if params[:locale]
        if I18n.available_locales.map(&:to_s).include?(params[:locale]) 
          I18n.locale = params[:locale]
        else
          flash.now[:notice] = "#{params[:locale]} translation not available" 
          logger.error flash.now[:notice] 
        end
      end 
    end
    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in" 
      end
    end

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # private

  #   def user_not_authorized
  #     flash[:alert] = "You are not authorized to perform this action."
  #     redirect_to(request.referrer || root_path)
  #   end
    
end
