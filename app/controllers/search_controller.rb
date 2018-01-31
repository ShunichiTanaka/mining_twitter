class SearchController < ApplicationController
  def index
  end

  def search
    @tweets = Tweet.new.user_timeline(params[:q])
    @st_arr = []
    @tweets.each do |tweet|
      Natto::MeCab.new.parse(tweet.text) do |st|
        if st.feature.match(/名詞/)
          noun = extract_noun(st)
          @st_arr << extract_noun(st) unless noun.length == 1
        end
      end
    end
  end

  private

  def extract_noun(word)
    word.feature.split(',')[6]
  end
end
