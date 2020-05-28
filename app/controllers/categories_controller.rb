class CategoriesController < ApplicationController
    skip_before_action :fetch_user, only: [:index]

    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
    end
end
