require "open-uri"
require "json"

class GamesController < ApplicationController

  def new
    cont = 0
    array2 = []
    array = ("a".."z").to_a
    array.each do |letter|
      if cont < 10
        array2 << array.sample(1)
        cont += 1
      end
      @letters = array2
    end
  end

  def score
    @array = params[:array].scan(/[a-z]/)
    pala = params[:question]
    @reques = ""
    @array.each do |letter|
      unless pala.include?(letter)
        @reques = "letra Incorrecta"
      end
    end
  end
end
