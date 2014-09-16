require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  	it "should have the right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
  	it "should have the right title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("About")
    end
  end
end
