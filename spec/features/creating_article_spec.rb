require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    visit "/"

    click_link "New Article"

    fill_in "Title", with: "Creating a blog post"
    fill_in "body", with: "Lorem Ipsum"

    click_button "Create Article"

    expect(page).to have_content("Articles has been createdd")
    expect(page.current_path).to eq(articles_path)
  end
end