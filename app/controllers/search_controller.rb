class SearchController < ApplicationController
  def index
  end

  def search
    @tweets = Tweet.new.user_timeline(params[:q])
    @st_arr = []
    @tweets.each do |tweet|
      Natto::MeCab.new.parse(tweet.text) do |hel|
        @st_arr << hel.feature.split(',')[6] if hel.feature.match(/名詞/)
      end
    end
  end
end
