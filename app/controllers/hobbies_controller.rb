class HobbiesController < ApplicationController
    skip_before_action :fetch_user, only: [:index]
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
        @categories = Category.all
        @hobby = Hobby.new
        @materials = Material.all
        5.times do
            @hobby.materials.build
        end
    end

    def create
        # This creates the data for created_by attribute
        params[:hobby][:created_by] = session[:username]


        @hobby = Hobby.create(hobby_params)

        # Check for presence of materials_ids from checkboxes and associates them with new hobby object
        if params[:hobby][:material_ids]
            @hobby.add_existing_materials(params[:hobby][:material_ids])
        end
        redirect_to @hobby
    end

    def edit
        @categories = Category.all
        @hobby = Hobby.find(params[:id])
        @hobby_materials = HobbyMaterial.find_by(hobby_id: @hobby.id)
        @materials = Material.all
    end

    def destroy
        @hobby = Hobby.find(params[:id])
        @hobby.hobby_materials.each {|h| h.destroy}
        @hobby.category_hobbies.each {|h| h.destroy}
        @hobby.user_hobbies.each {|h| h.destroy}
        @hobby.destroy
        redirect_to hobbies_path
    end
    private

    def hobby_params
        params.require(:hobby).permit(:name, :description, :created_by, :category_ids, :material_ids, materials_attributes:[:name, :url])
    end
end
