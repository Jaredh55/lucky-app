class Api::PagesController < ApplicationController
    def fortune_action
    @fortune = ["good fortune", "bad fortune", "ok fortune"].sample
    render 'fortune_view.json.jbuilder'
  end
  def lotto_action
    @lotto = [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)]
    render 'lotto_view.json.jbuilder'
  end 

  def page_count_action
    @count = 0
    @count += 1
    render 'page_count_view.json.jbuilder'
  end

  def bottles_action
    @bottles_lyrics = []
    index = 99
    99.times do 
      @bottles_lyrics << "#{index} bottles of beer on the wall, #{index} bottles of beer. Take one down pass it around #{index-1} bottles of beer on the wall."
      index = index-1
    end
    return @bottles_lyrics
    render 'bottles_view.json.jbuilder'
  end
end
