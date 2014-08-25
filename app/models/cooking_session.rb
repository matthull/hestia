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
#  last_reading_at  :datetime
#

class CookingSession < ActiveRecord::Base
  belongs_to :dish
  has_many :readings

  scope :latest_within_window, ->{ where("last_reading_at > ?", window.ago).order(last_reading_at: :desc) }

  def self.window
    30.minutes
  end

  def self.last_within_window
    self.latest_within_window.first
  end

  after_save :set_default_name
  def set_default_name
    self.name ||= default_name
  end

  def default_name
    "Untitled ##{self.id}"
  end
end
