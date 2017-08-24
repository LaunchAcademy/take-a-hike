require 'spec_helper'

describe Trail, type: :model do
  it { should have_valid(:name).when('Rittenhouse', 'Appalachian') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:length).when(1, 2, 3)}
  it { should_not have_valid(:length).when(0, nil, '') }

  it { should have_valid(:city).when('Boston', 'Philadelphia', 'Buffalo')}
  it { should_not have_valid(:city).when(nil, '')}

  it { should have_valid(:state).when('MA', 'PA', 'NY') }
  it { should_not have_valid(:state).when('', nil) }

  it { should have_many :trips }
end
