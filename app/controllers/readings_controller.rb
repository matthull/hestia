class ReadingsController < ApplicationController
  respond_to :json

  # POST /readings
  def create
    reading = Reading.new reading_params
    reading.cooking_session = CookingSession.last_within_window || CookingSession.create
    reading.save!

    respond_with(reading)
  end

  protected

  def reading_params
    params.require(:reading).permit(:metric, :sensor_id, :taken_at, :value)
  end
end
