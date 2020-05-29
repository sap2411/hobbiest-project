class WelcomeController < ApplicationController
    skip_before_action :fetch_user, only: [:hello]

    def hello
        if !session[:username]
            redirect_to login_path
        end
    end

    def analytics
        @users = User.all
        @hobbies = Hobby.all
        @categories = Category.all
        @materials = Material.all
        @user = User.find_by(username: session[:username])
    end

    def admin
        session[:admin] = true
        redirect_to '/'
    end
end