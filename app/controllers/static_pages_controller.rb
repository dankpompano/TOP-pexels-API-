class StaticPagesController < ApplicationController
  def index
    @client = Client.new
    if params[:id].present?
      response = @client.photo(params[:id])
      @photo = response["src"]["medium"]
    end
  end
end
