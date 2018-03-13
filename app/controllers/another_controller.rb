class AnotherController < ApplicationController

  def show
    @option = Option.find(7)
  end

end
