class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def set_locale
     I18n.locale = params[:locale] || I18n.default_locale
   end
   
  private
    def require_logged_in_user
      unless user_signed_in?
        flash[:danger] = 'Área restrita. Por favor, realize o login.'
        redirect_to entrar_url
      end
    end
end
