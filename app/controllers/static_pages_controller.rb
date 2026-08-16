class StaticPagesController < ApplicationController
  def index
    client = Client.new
    if params.present?
      @collections = client.collections([:id])
    end
  end
end
