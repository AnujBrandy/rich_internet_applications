class ArtistsController < ApplicationController
  
  def show
    @artist = Artist.find(params[:id])
  end


  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)    # Not the final implementation!
    if @artist.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Artisto!"
      redirect_to @artist
    else
      render 'new'
    end
  end
  
  private

    def artist_params
      params.require(:artist).permit(:name, :email, :password,
                                   :password_confirmation, :gravatar_url, :description, :skill, :experience, 
                                   :facebook_url, :twitter_url , :contact_no, :address, :country, :state, :city, 
                                   :availability, :youtube_url, :behance_url , :facebook_page, :blog_url, :website_url, 
                                   :other_url, :motto_line)
    end


end
