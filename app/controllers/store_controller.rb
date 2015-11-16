class StoreController < ApplicationController
  
  def index
    @products = Product.order(:title)

    puts "-------------------"
    puts session[:counter]
    puts "-------------------"

    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    @counter = session[:counter]
    end
end
