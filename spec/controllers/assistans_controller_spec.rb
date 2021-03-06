require 'spec_helper'

 #before(:each)  do

# end

describe AssistansController do
  render_views
  @base_title = "Ruby on Rails Tutorial Sample App"
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it " should have the right title" do
      get 'home'
       response.should have_selector("title", :content => "Home")
  
       #response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it " should have the right title" do
      get 'contact'
       response.should have_selector("title", :content => "Contact")
       #response.should have_selector("title", :content => " Ruby on Rails Tutorial Sample App | Contact")
    end
    end
  describe " Get 'about"  do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it " should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "About")
      #response.should have_selector("title", :content => " Ruby on Rails Tutorial Sample App | About")
  end
end
describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it " should have the right title" do
      get 'help'
       response.should have_selector("title", :content => "Help")
       #response.should have_selector("title", :content => " Ruby on Rails Tutorial Sample App  | Home")
    end
  end
 end