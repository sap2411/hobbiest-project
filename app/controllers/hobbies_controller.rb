class HobbiesController < ApplicationController
    # before_action :require_login

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
        @categories = Category.all
        @hobby = Hobby.new
        @materials = Material.all
        3.times do
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
        @materials = Material.all
    end

    def update
        @hobby = Hobby.find(params[:id])
        @hobby.update(hobby_params)

        # Check for presence of materials_ids from checkboxes and associates them with new hobby object
        # if params[:hobby][:material_ids]
        #     @hobby.add_existing_materials(params[:hobby][:material_ids])
        # end
        
        redirect_to @hobby
    end
    private

    def hobby_params
        params.require(:hobby).permit(:name, :description, :created_by, :material_ids, materials_attributes:[:name, :url])
    end
end
