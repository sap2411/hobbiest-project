class HobbiesController < ApplicationController
    before_action :require_login
    def index
        @hobbies = Hobby.all
    end

    def show
        @hobby = Hobby.find(params[:id])
    end

    def update
        @hobby = Hobby.find(params[:id])
        @user = User.find_by(username: session[:username])
        @user.hobbies << @hobby
        redirect_to @hobby
    end
    
end
