class Artists < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :statement
end
