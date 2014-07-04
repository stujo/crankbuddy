require 'spec_helper'

describe Event do
  it { should have_many(:event_users) }
  it { should have_many(:users).through(:event_users) }
  it { should validate_presence_of(:event_name) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:time) }
  it { should validate_presence_of(:address) }
end
