RSpec.feature "Twitters", type: :feature do
    context "Create new twitt" do
      visit twitters_url
      scenario "should be successful" do
        fill_in 'Tweet about it', with: 'Test tweet creation'
        click_button "Create Twitter"
        expect(page).to have_content("Twitter was successfully created")
      end
    end
end