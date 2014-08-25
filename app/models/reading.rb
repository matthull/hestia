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
#  sensor_id          :integer
#  metric             :string(255)
#  description        :string(255)
#

class Reading < ActiveRecord::Base
  belongs_to :cooking_session
  belongs_to :sensor

  validates :cooking_session, presence: true
  validates :metric,          presence: true
  validates :sensor,          presence: true
  validates :value,           presence: true, numericality: true

  after_create :set_taken_at, :set_last_reading_at
  def set_taken_at
    self.taken_at ||= created_at
  end

  def set_last_reading_at
    self.cooking_session.update_attribute :last_reading_at, taken_at
  end
end
