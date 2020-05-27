class HobbiesController < ApplicationController
    before_action :require_login
    def index
        @hobbies = Hobby.all
    end
end
