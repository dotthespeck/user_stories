require 'rails_helper'

RSpec.describe PartType do
  it { should have_many :story_parts }

  it { should have_valid(:name).when("Phrase") }
  it { should_not have_valid(:name).when("", nil) }
end
