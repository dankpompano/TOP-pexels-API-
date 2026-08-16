class Client
  include HTTParty
  base_uri 'https://www.pexels.com/'
  
  def initialize
    @headers = { "Authorization" => ENV["pexels_app_key"] }
  end

  def collections(collection_id)
    self.class.get("/collections/#{collection_id}", @headers)
  end
end
