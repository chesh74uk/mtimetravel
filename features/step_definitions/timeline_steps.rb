Given("I have populated my timeline with several timelines") do
  FactoryBot.create(:timeline,
                    :timelinename => "Timeline 1")
  FactoryBot.create(:timeline,
                    :timelinename => "Timeline 2")
end

When("I visit the homepage") do
  visit root_path
end

Then("I should see a list of my timelines") do
  expect(page).to have_content("Timeline 1")
  expect(page).to have_content("Timeline 2")
end

Given("I am at the homepage") do
  visit root_path
end

When("I click new") do
  click_button "New"
end

Then("I should be able to add a new timeline") do
  expect(page).to have_content("Add a new timeline")
  fill_in "timeline_timelinename", :with => "Timeline name 1"
  click_button "Create Timeline"
  expect(page).to have_content("Timeline name 1")
end