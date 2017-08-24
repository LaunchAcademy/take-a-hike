require 'spec_helper'

describe TripParticipation do
  it { should belong_to :hiker }
  it { should belong_to :trip }
  
  it { should have_valid(:trip).when(Trip.new) }
  it { should_not have_valid(:trip).when(nil) }

  it { should have_valid(:hiker).when(Hiker.new) }
  it { should_not have_valid(:hiker).when(nil) }
end
