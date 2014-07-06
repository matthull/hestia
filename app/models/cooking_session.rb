# == Schema Information
#
# Table name: cooking_sessions
#
#  id               :integer          not null, primary key
#  first_reading_at :datetime
#  name             :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class CookingSession < ActiveRecord::Base
  validates_presence_of :name

  has_one :dish
  has_many :readings
end
