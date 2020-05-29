class Material < ApplicationRecord
    has_many :hobby_materials
    has_many :hobbies, through: :hobby_materials

    def googlefy(material, zip_code)
        @query = material.downcase.gsub(" ", "+") + "+#{zip_code}"
        @map_url = "https://www.google.com/maps/search/?api=1&query=#{@query}"
    end

    def string_formatter(string)
        @query = string.downcase.gsub(" ", "+")
        
    end
end
