class Show < ActiveRecord::Base
    def self.highest_rating 
        self.maximum(:rating)
    end

    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end

    def self.ratings_sum
        self.sum(:rating)
    end
    def self.popular_shows
        self.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        self.order(name: :asc)
    end
end


    
    # def Show.highest_rating
    #     Show.maximum(:rating)
    # end

    # def Show.most_popular_show
    #     Show.find_by(rating: Show.highest_rating)
    # end

    # def Show.lowest_rating
    #     Show.minimum(:rating)
    # end

    # def Show.least_popular_show
    #     Show.find_by(rating: Show.lowest_rating)
    # end

    # def Show.ratings_sum
    #     Show.sum(:rating)
    # end

    # def Show.popular_shows
    #     Show.where("rating>?",5)
    # end
# def self.shows_by_alphabetical_order
#         Show.all.sort_by { |obj| obj.name }
    # end
# end