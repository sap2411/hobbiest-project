class HobbiesController < ApplicationController
    before_action :require_login

    # So far I can only get updates to this array to persist through one reload of new.erb DK
    @@categories = ["Test One", "Test Two", "Test Three"]

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
    
    def new
        @categories = @@categories
        @hobby = Hobby.new
    end

    def create
        params[:hobby][:username] = session[:username]
        if !@@categories.include? params[:hobby][:category]
            @@categories << params[:hobby][:category]
        end
        @hobby = Hobby.create(hobby_params)
        @hobby.materials.create(name: params[:materials][:name], url:"https://www.amazon.com/s?k=#{params[:materials][:name]}&ref=nb_sb_noss_2")
        byebug
        redirect_to @hobby
    end

    private

    def hobby_params
        params.require(:hobby).permit(:name, :category, :description, :created_by, materials: [:name])
    end
end
