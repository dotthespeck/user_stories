require 'rails_helper'

RSpec.describe StoryPart do
  it { should belong_to :category }
  it { should belong_to :part_type }

  it { should have_valid(:piece).when("build cool shit") }
  it { should_not have_valid(:piece).when("", nil) }

  it { should have_valid(:category).when(Category.new) }
  it { should_not have_valid(:category).when(nil) }

  it { should have_valid(:part_type).when(Part.new) }
  it { should_not have_valid(:part_type).when(nil) }
end
