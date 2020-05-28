class WelcomeController < ApplicationController
    # before_action :require_login
    def hello
    end

    def analytics
        @users = User.all
        @hobbies = Hobby.all
        @categories = Category.all
        @materials = Material.all
        @user = User.find_by(username: session[:username])
    end
end