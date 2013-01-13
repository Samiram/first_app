class MicropostsController < ApplicationController
  # GET /microposts
  # GET /microposts.json
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => :destroy


  def index
    @microposts = Micropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microposts }
    end
  end

  # GET /microposts/1
  # GET /microposts/1.json
  def show
    @micropost = Micropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropost }
    end
  end

  # GET /microposts/new
  # GET /microposts/new.json
  def new
    @micropost = Micropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropost }
    end
  end

  # GET /microposts/1/edit
  def edit
    @micropost = Micropost.find(params[:id])
  end

  # POST /microposts
  # POST /microposts.json
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
       else
        @feed_items = []
        render 'assistans/home'
      end
    end
  

  # PUT /microposts/1
  # PUT /microposts/1.json
  def update
    @micropost = Micropost.find(params[:id])
    respond_to do |format|
      
    end
end

  # DELETE /microposts/1
  # DELETE /microposts/1.json
  def destroy
    @micropost.destroy
    redirect_back_or root_path
    end
    def authorized_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end
end
