require 'spec_helper'

describe Hiker, type: :model do
  it { should have_valid(:experience_level).when('beginner', 'expert')}
  it { should_not have_valid(:experience_level).when(nil, '', 'medium')}

  it { should have_valid(:first_name).when('Dan', 'John', 'Susan') }
  it { should_not have_valid(:first_name).when(nil, '')}

  it { should have_valid(:last_name).when('Smith', 'Doe') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_many :trip_participations }
  it { should have_many(:trips) }
end
