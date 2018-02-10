class LoveController < ApplicationController

  def show
    @option = Option.find(6)
  end
  
end
