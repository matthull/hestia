# == Schema Information
#
# Table name: dishes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Dish < ActiveRecord::Base
  validates_presence_of :name

  has_many :cooking_session
end
