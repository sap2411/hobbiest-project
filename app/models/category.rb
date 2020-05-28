class Category < ApplicationRecord
    has_many :category_hobbies
    has_many :hobbies, through: :category_hobbies

    def self.analyize_categories
        a = self.hobbies_categories
        counter = Hash.new(0)
        a.each do |v|
            counter[v] += 1
        end
        counter.sort_by {|k, v| -v}
    end

    def self.hobbies_categories
        Hobby.all.map {|h| h.categories.map {|c| c.name}}.flatten
    end

    def self.most_common_category
        array = self.analyize_categories
        if array[0][1] != array[1][1]
            ": #{array[0][0]}"
        else
            ans = array.map {|a| if a[1] == array[0][1] ; a[0] ; end}.compact
            " - #{ans.count} Way Tie: #{ans.join(", ")}"
        end
        #or could just use self.all.max_by {|c| c.hobbies.count}
    end

    def self.least_common_category
        self.all.min_by {|c| c.hobbies.count}.name
    end
    
end
