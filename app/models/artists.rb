class Artists < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :statement
  has_many :products, inverse_of: :artist
end
