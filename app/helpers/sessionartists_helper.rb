module SessionartistsHelper
  def login_artist(artist)
    session[:artist_id] = artist.id
  end
  
  # Forgets a persistent session.
  def forget(artist)
    user.forget
    cookies.delete(:artist_id)
    cookies.delete(:remember_token)
  end
  
  # Returns the user corresponding to the remember token cookie.
  def current_artist
    if (artist_id = session[:artist_id])
      @current_artist ||= Artist.find_by(id: artist_id)
    elsif (user_id = cookies.signed[:artist_id])
      
      artist = Artist.find_by(id: artist_id)
      if artist && artist.authenticated?(cookies[:remember_token])
        login_artist artist
        @current_artist = artist
      end
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in_artist?
    !current_artist.nil?
  end
  
  # Remembers a user in a persistent session.
  def remember(artist)
    artist.remember
    cookies.permanent.signed[:artist_id] = artist.id
    cookies.permanent[:remember_token] = artist.remember_token
  end

  # Logs out the current user.
  def logout_artist
    session.delete(:artist_id)
    @current_artist = nil
  end

end

