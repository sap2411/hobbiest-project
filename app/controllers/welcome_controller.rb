class WelcomeController < ApplicationController
    def hello
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