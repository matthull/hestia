require 'spec_helper'

describe ReadingsController do
  describe '#create' do
    before { allow(CookingSession).to receive(:window).and_return(30.minutes) }
    after  { Timecop.return }

    it 'uses an existing session if reading is within the window' do
      Timecop.freeze Time.zone.parse('2014-07-01 18:02:00 UTC')
      expect {
        post :create, format: :json, reading: { sensor_id: sensors(:ambient).id, metric: :temp, value: 324 }
      }.to_not change{ CookingSession.count }
    end

    it 'creates a new session if reading is outside the window' do
      Timecop.freeze Time.zone.parse('2014-07-01 19:00:00 UTC')
      expect {
        post :create, format: :json, reading: { sensor_id: sensors(:ambient).id, metric: :temp, value: 324 }
      }.to change{ CookingSession.count }.by(1)
    end
  end
end
