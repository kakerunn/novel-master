class FantasyController < ApplicationController

  def show
    @option = Option.find(1)
  end

end
