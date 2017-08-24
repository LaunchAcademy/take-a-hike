require 'spec_helper'

describe Trip, type: :model do
  it { should have_valid(:name).when('Saturday stroll', 'Thriving Thursday') }
  it { should_not have_valid(:name).when(nil, '')}

  it { should have_valid(:started_on).when(Date.parse('03/01/2017'))}
  it { should_not have_valid(:started_on).when('', nil) }

  it { should have_valid(:trail).when(Trail.new)}
  it { should belong_to :trail }

  it { should have_many :hikers }
  it { should have_many :trip_participations }
end
