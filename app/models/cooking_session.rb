# == Schema Information
#
# Table name: cooking_sessions
#
#  id               :integer          not null, primary key
#  first_reading_at :datetime
#  name             :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  dish_id          :integer
#  device_id        :integer
#

class CookingSession < ActiveRecord::Base
  validates_presence_of :name

  belongs_to :dish
  belongs_to :device_id
  has_many :readings
end
