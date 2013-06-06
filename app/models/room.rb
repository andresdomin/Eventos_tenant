class Room < ActiveRecord::Base
  belongs_to :tenant
  attr_accessible :description, :latitude, :longitude, :nombre
end
