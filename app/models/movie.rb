require 'pry'
class Movie < ActiveRecord::Base
# Create
    def self.create_with_title(title) # class
        # instantiates movie with title and adds to db
            # takes in title as a string
        self.create(title: title) 
    end
# Read
    def self.first_movie # class?
        # returns first item in table
        self.first
    end

    def self.last_movie # class?
        # returns last item in table
        self.last
    end

    def self.movie_count # class
        self.count
    end

    def self.find_movie_with_id(id) # class? same as below
        self.find(id)
    end

    def self.find_movie_with_attributes(some_hash) # class? searching class but acting on instance
        self.find_by(some_hash)
    end

    def self.find_movies_after_2002 # class
        self.where("release_date > 2002")
    end
# Update
    def update_with_attributes(new_hash) # instance (don't need to find any instances)
    self.update(new_hash)
    end

    def self.update_all_titles(new_title) # class

        self.update_all(title: new_title)

    end
# Delete
    def self.delete_by_id(id) # class
        self.destroy(id)
    end

    def self.delete_all_movies # class
        self.destroy_all
    end
end