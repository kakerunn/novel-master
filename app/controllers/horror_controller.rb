class HorrorController < ApplicationController

  def show
    @option = Option.find(4)
  end
  
end
