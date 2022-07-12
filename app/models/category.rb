require 'pry'

class Category < ActiveRecord::Base
    has_many :to_dos
    # like attr aaccessor, allows us to call to_dos
end