class Lecturer < ActiveRecord::Base
  belongs_to :tenant
  attr_accessible :age, :foto, :last_name, :name, :profile
end
