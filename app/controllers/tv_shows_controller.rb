class TvShowsController < ApplicationController
  include TvShowsHelper
  def index
    @tv_shows = TvShow.search(params[:search])
  end

  def favourite
    @tv_show = TvShow.find(params[:id])
    if @tv_show.is_favourite?
      flash[:notice] = 'Already favourite'
    else
      @tv_show.is_favourite = true
      @tv_show.save
    end
    redirect_to root_path
  end
end
