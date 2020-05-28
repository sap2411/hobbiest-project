class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user
    helper_method :require_admin
    before_action :fetch_user

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

    def require_admin
        unless !!session[:admin]
            return head(:forbidden) 
        end
    end

    private

    def log_out_user!
        session.delete(:user_id)
        session.delete(:username)
        session.delete(:admin)
    end

    def logged_in(user_id)
        session[:user_id] = user_id
        user = User.find(user_id)
        session[:username] = User.find(user_id).username
        session[:admin] = User.find(user_id).admin
    end

    def logged_in?
        !!current_user_id
    end

    def current_user_id
        session[:user_id]
    end
end
