class HobbyMaterialsController < ApplicationController

    def destroy
        @hobby_material = HobbyMaterial.find(params[:id])
        @hobby = Hobby.find(@hobby_material.hobby_id)
        @hobby_material.destroy
        redirect_to hobby_path(@hobby)
    end
end