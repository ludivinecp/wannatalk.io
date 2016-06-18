require "rails_helper"
require 'faker'

describe "User submits a subject" do
  before(:all) do
    FactoryGirl.create(:conference)
    firstname = Faker::Name.first_name
    lastname = Faker::Name.last_name
    @email = Faker::Internet.email
    @password = Faker::Internet.password(8)

    sign_up_with(firstname, lastname, @email, @password)
    click_on('Déconnexion')
  end

  context 'allows user to create a new subject' do
    before(:each) do

      subject_title = "Capybara"
      subject_description = "How to use Capybara in native Ruby project"

      visit root_path
      click_on ("See conferences")
      binding.pry
      first('Proposer un sujet').click_on
      fill_in ("input[name='subject[title]']"), with: subject_title
      fill_in ("input[name='subject[description]']"), with: subject_description
      click_on ("Enregistrer")
    end

    after(:each) do
      find(:link_with_href, '/users/sign_out').click
    end
    it ("should create a new subject") {expect(page).to have_link subject_title}
  end
end

