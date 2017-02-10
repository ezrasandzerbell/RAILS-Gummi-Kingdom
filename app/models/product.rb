class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
  validates :image, :presence => true
end
