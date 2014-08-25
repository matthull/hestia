require 'spec_helper'

describe CookingSession do
  it 'has a default name' do
    session = CookingSession.create!
    expect(session.name).to eq("Untitled ##{session.id}")
  end
end
