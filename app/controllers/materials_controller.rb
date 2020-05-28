class MaterialsController < ApplicationController
    before_action :require_admin
    def show
        @material = Material.find(params[:id])
    end

    def index
        @materials = Material.all
    end

    def destroy
        @material = Material.find(params[:id])
        @material.hobby_materials.each {|h| h.destroy}
        @material.destroy
        redirect_to materials_path
    end
end
