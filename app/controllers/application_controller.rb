class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user
    before_action :fetch_user

    def require_login
        redirect_to '/login' unless session.include? :username
    end

    def current_user
        session[:username]
    end

    def fetch_user
        @logged_in = logged_in?
        if logged_in? && !!User.find(current_user_id)
            @logged_in_user = User.find(current_user_id)
        else
            redirect_to login_path
        end
    end

    private

    def log_out_user!
        session.delete(:user_id)
    end

    def logged_in(user_id)
        session[:user_id] = user_id
        session[:username] = User.find(user_id).username
    end

    def logged_in?
        !!current_user_id
    end

    def current_user_id
        session[:user_id]
    end
end
