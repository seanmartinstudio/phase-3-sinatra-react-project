require 'pry'

class Category < ActiveRecord::Base
    has_many :to_dos
end