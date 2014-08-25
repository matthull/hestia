# == Schema Information
#
# Table name: sensors
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  alias       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :string(255)
#  metric      :string(255)
#

class Sensor < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
end
