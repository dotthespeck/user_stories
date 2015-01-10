require 'rails_helper'

RSpec.describe Story do
  it { should belong_to :user }
  it { should belong_to :category }

  it { should have_valid(:sentence).when("As a user...") }
  it { should_not have_valid(:sentence).when("", null) }
  it { should valdidate_uniqueness_of(:sentence) }

  it { should have_valid(:category).when(Category.new) }
  it { should_not have_valid(:category).when(nil) }

  it { should have_valid(:user).when(User.new) }
  it { should_not have_valid(:user).when(nil) }
end
