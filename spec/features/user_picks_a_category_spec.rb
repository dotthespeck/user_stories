require "rails_helper"

feature "user picks a category and sucessfully finds a story", %Q{
  As a user
  I want to find a randomly generated story
  so that I can be amused
}

  scenario 'user picks a category'
    visit root_path
    click_on "I want a story for the Launch Winter Cohort"
    expect(page).to have_content "As a"
    expect(page).to have_content "I want"
  end
end
