class HobbyMaterialsController < ApplicationController

    def destroy
        byebug
        @hobby_material = HobbyMaterial.find_by(hoparams[:id])
        @hobby_material.destroy
    end
end