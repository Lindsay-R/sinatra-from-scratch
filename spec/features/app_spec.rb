require "spec_helper"

feature "Homepage" do
  scenario "A user can signin or go to registration page" do
    visit "/"

    click_link "Registration"

    fill_in "Username", with: "lindsy"
    fill_in "Email", with: "lindsay@example.com"
    fill_in "Password", with: "123"

    click_button "Register"

    expect(page).to have_content "Thanks for signing up"
  end
end



feature "Registration" do
  scenario "A user can create an account and log in" do
    visit "/"

    click_link "Register"

    fill_in "Username", with: "lindsy"
    fill_in "Email", with: "lindsay@example.com"
    fill_in "Password", with: "123"

    click_button "Register"

    expect(page).to have_content "Thanks for signing up"
  end
end