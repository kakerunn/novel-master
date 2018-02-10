class BattleController < ApplicationController

  def show
    @option = Option.find(2)
  end

end
