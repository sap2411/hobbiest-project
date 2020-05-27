class MaterialsController < ApplicationController
    before_action :require_login

    def show
        @material = Material.find(params[:id])
    end
end
