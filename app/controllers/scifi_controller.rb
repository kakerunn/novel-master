class ScifiController < ApplicationController

  def show
    @option = Option.find(3)
  end
  
end
