require 'rails_helper'

RSpec.describe Person, :type => :model do

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:sex) }
  it { is_expected.to validate_presence_of(:division) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:phone_number) }

end
