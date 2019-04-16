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
end