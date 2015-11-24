class StoreController < ApplicationController
  skip_before_action :authorize
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
    @cart = current_cart
    end
end
