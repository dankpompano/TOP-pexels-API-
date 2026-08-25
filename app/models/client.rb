class Client
  include HTTParty
  base_uri 'https://api.pexels.com/v1'
  
  def init
    @headers = { "Authorization" => ENV["pexels_app_key"] }
  end

  def collections
    self.class.get("/@eberhardgross/collections/", @headers)
  end

  def photo(photo_id)
    self.class.get("/photos/#{photo_id}", headers: @headers)
  end
end
