require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Design for Quality'" do
      visit '/static_pages/home'
      expect(page).to have_content('Design for Quality FMEA')
    end
        it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Design for Quality FMEA App | Home")
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('help')
    end
        it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Design for Quality FMEA App | Help")
    end
  end
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
      it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Design for Quality FMEA App | About Us")
    end
  end
end
