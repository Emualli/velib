class VelibsController < ActionController::Base
  include HTTParty

  def index
    api_key = ENV['VELIB_API_KEY'] || Rails.application.secrets['velib_api_key']
    #@all = HTTParty.get("https://api.jcdecaux.com/vls/v1/stations?apiKey=#{api_key}")

    @estrees = HTTParty.get("https://api.jcdecaux.com/vls/v1/stations/7018?contract=Paris&apiKey=#{api_key}")
    @sfx = HTTParty.get("https://api.jcdecaux.com/vls/v1/stations/7014?contract=Paris&apiKey=#{api_key}")
    @sevres = HTTParty.get("https://api.jcdecaux.com/vls/v1/stations/15008?contract=Paris&apiKey=#{api_key}")
    @bercy = HTTParty.get("https://api.jcdecaux.com/vls/v1/stations/12108?contract=Paris&apiKey=#{api_key}")
    @bourgoin = HTTParty.get("https://api.jcdecaux.com/vls/v1/stations/12011?contract=Paris&apiKey=#{api_key}")
  end
end