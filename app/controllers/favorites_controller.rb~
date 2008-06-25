class FavoritesController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }
	 #  before_filter :login_required
	 #before_filter :authenticate
  def authenticate
	  authenticate_or_request_with_http_basic do |name,pass|
        name=='sunlifeng' && pass=='lifeng'
end 
  end
  def list
	  # @favorite_pages, @favorites = paginate :favorites, :per_page => 10
    @favorites= Favorite.find(:all, :order => 'id DESC')
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
    @favorite_url=params[:Url]
    @favorite_title=params[:Title]
  end

  def create
    @favorite = Favorite.new(params[:favorite])
    if @favorite.save
      flash[:notice] = 'Favorite was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])
    if @favorite.update_attributes(params[:favorite])
      flash[:notice] = 'Favorite was successfully updated.'
      redirect_to :action => 'show', :id => @favorite
    else
      render :action => 'edit'
    end
  end

  def destroy
    Favorite.find(params[:id]).destroy
 #   redirect_to :action => 'list'
    render_text "<b>Destroied</b>"
  end
  
end
