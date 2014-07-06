# == Schema Information
#
# Table name: readings
#
#  id                 :integer          not null, primary key
#  taken_at           :datetime
#  value              :float
#  created_at         :datetime
#  updated_at         :datetime
#  cooking_session_id :integer
#

class Reading < ActiveRecord::Base
  belongs_to :cooking_session
end
