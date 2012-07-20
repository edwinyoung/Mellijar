class Picture < ActiveRecord::Base
  attr_accessible :height, :route, :type, :width
  belongs_to :imageable, polymorphic: true
end
