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

require 'spec_helper'

describe Reading do
  let(:now)     { Time.local(2014, 7, 1, 18, 30) }
  let(:reading) { Reading.new metric: :temperature, value: 100, cooking_session: cooking_sessions(:roast), sensor: sensors(:meat) }

  before { Timecop.freeze now }
  after  { Timecop.return }

  it 'defaults taken_at to creation timestamp' do
    reading.save!
    expect(reading.taken_at).to eq(now)
  end

  it 'updates last reading timestamp on session when created' do
    reading.save!
    expect(cooking_sessions(:roast).last_reading_at).to eq(Time.local(2014, 7, 1, 18, 30))
  end
end
