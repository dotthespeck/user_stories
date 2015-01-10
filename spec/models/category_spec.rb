require 'rails_helper'

RSpec.describe Category do
  it { should have_many :stories }
  it { should have_many :story_parts }

  it { should have_valid(:name).when("Launch") }
  it { should_not have_valid(:name).when("", nil) }
end
