class OptionsController < ApplicationController

  def show
    @option = Option.find(params[:id]).contributions
  end

end
