class AssistansController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
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
