class Licence < ActiveRecord::Base
  attr_accessible :licence_name

  belongs_to :user
end
