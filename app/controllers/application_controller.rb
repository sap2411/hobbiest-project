class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user
    helper_method :require_login

    def require_login
        redirect_to '/login' unless session.include? :username
    end

    def current_user
        session[:username]
    end
end
