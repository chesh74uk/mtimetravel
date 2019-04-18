Given("I have a timeline") do
  visit root_path
  click_button "New"
  expect(page).to have_content("Add a new timeline")
  fill_in "timeline_timelinename", :with => "Timeline name 1"
  click_button "Create Timeline"
  expect(page).to have_content("Timeline name 1")
end

When("I select new stage") do
  click_button "Add stage"
end

Then("show me a stage form") do
  expect(page).to have_content("Add a new stage")
end