class MysteryController < ApplicationController

  def show
    @option = Option.find(5)
  end

end
