class WelcomeController < ApplicationController
  def index
    @title = params["title"]

# code to connect and query Rotten Tomatoes

  @movies = [
  ["Oblivion"],
  ["John Wick"],
  ["Skyfall"]
]
  end
end
