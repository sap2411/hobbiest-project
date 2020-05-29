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

    def buy_local
        @zip_code = ""
        @material = Material.find(params[:id])
    end

    def create_results
        @material = Material.find(params[:id])
        @zip_code = params[:@zip_code]
        @google_query = @material.googlefy(@material.name, @zip_code)
        redirect_to @google_query
    end
end
