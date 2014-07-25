class Category < ActiveRecord::Base
  has_many :master_categories
  has_many :masters, through: :master_categories
end
