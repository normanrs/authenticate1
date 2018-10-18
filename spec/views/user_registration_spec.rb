require 'rails_helper'

describe 'when user visits signup page' do
  it 'allows a user to signup' do
    username = "conanbarbarian"
    visit '/'

    click_on "Sign Up to Be a User"

    expect(current_path).to eq(new_user_path)
  end

  it 'should fill in form' do
    fill_in :firstname, with: "Alan"
    fill_in :lastname, with: "Turing"
    fill_in :email, with: "aturing@cambridge.edu"
    fill_in :password, with: "Enigma1914"

    click_on "Create User"

    expect(page).to have_content("Welcome, #{username}!")
  end
end
