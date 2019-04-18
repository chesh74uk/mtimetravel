Given("I have a timeline") do
  visit root_path
  click_button "New"
  expect(page).to have_content("Add a new timeline")
  fill_in "timeline_timelinename", :with => "Timeline name 1"
  click_button "Create Timeline"
  expect(page).to have_content("Timeline name 1")
end

When("I select new stage") do
  pclick_button "New stage"
end

Then("show me a stage form") do
  pending # Write code here that turns the phrase above into concrete actions
end