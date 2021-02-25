class Api::PagesController < ApplicationController
  def index
    response = HTTP.get("https://www.reddit.com/r/programming/.json")
    data = response.parse
    render json: { children: data["data"]["children"] }
  end

  def show
    response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=0d185ac5d5184c6f8842a019b6e3237f")
    data = response.parse
    render json: { articles: data["articles"] }
    # render json: data["articles"]
  end
end
