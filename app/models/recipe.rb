class Recipe < ActiveRecord::Base
  attr_accessible :description, :ingredients, :preparation_method, :title

  translates :description, :ingredients, :preparation_method, :title
end