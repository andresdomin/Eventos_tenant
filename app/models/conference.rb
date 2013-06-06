class Conference < ActiveRecord::Base
  belongs_to :tenant
  attr_accessible :description, :floor, :latitude, :longitude, :nombre
end
