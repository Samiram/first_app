class AssistansController < ApplicationController
  def home
   @title = "Home"
    @micropost = Micropost.new if signed_in?
  end

  def contact
    @title = "Contact"
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  def about
    @title = "About"
   @base_title = "Ruby on Rails Tutorial Sample App"
  end

  def help
    @title = "Help"
   @base_title = "Ruby on Rails Tutorial Sample App"
  end
end
