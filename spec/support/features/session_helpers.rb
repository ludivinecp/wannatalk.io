require 'rspec/rails'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper'
include Capybara::DSL

Capybara.default_driver = :selenium  # use :poltergeist for headless

#Allow to use the href value to find a button
Capybara.add_selector(:link_with_href) do
  xpath {|href| ".//a[@href='#{href}']"}
end

module Features
  module SessionHelpers

    def sign_in_with(email, password)
      visit new_participant_session_path
      fill_in 'Email', with: email
      fill_in "Password", with: password
      click_on("Log in")
    end

    def sign_up_with(firstname, lastname, email, password)
      visit new_participant_registration_path
      fill_in "Email",                        :with => email
      fill_in "Password",                 :with => password
      fill_in "Password confirmation", :with => password
      click_on("Je m'inscris")
    end

  end
end