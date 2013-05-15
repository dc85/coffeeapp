require 'spec_helper'

describe "Splash pages" do

  describe "Home page" do

    it "should have the h1 'Home'" do
      visit '/splash_pages/home'
      page.should have_selector('h1', :text => 'Home')
    end
    
    it "should have the title 'Home'" do
      visit '/splash_pages/home'
      page.should have_selector('title',
                        :text => "Coffee Network | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/splash_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/splash_pages/help'
      page.should have_selector('title',
                        :text => "Coffee Network | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/splash_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/splash_pages/about'
      page.should have_selector('title',
                    :text => "Coffee Network | About Us")
    end
  end
end