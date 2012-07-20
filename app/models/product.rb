class Product < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :price, :quantity, :start_date
  belongs_to :artist, inverse_of: :products

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
