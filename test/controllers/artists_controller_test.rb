require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { address: @artist.address, availability: @artist.availability, behance_url: @artist.behance_url, blog_url: @artist.blog_url, city: @artist.city, contact_no: @artist.contact_no, country: @artist.country, description: @artist.description, email: @artist.email, experience: @artist.experience, facebook_page: @artist.facebook_page, facebook_url: @artist.facebook_url, gravatar_url: @artist.gravatar_url, motto_line: @artist.motto_line, name: @artist.name, other_url: @artist.other_url, password: @artist.password, skill: @artist.skill, state: @artist.state, twitter_url: @artist.twitter_url, website_url: @artist.website_url, youtube_url: @artist.youtube_url }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    patch :update, id: @artist, artist: { address: @artist.address, availability: @artist.availability, behance_url: @artist.behance_url, blog_url: @artist.blog_url, city: @artist.city, contact_no: @artist.contact_no, country: @artist.country, description: @artist.description, email: @artist.email, experience: @artist.experience, facebook_page: @artist.facebook_page, facebook_url: @artist.facebook_url, gravatar_url: @artist.gravatar_url, motto_line: @artist.motto_line, name: @artist.name, other_url: @artist.other_url, password: @artist.password, skill: @artist.skill, state: @artist.state, twitter_url: @artist.twitter_url, website_url: @artist.website_url, youtube_url: @artist.youtube_url }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
end
