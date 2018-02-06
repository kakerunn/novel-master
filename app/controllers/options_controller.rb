class OptionsController < ApplicationController

  def show
    @option = Option.find(params[:id])
  end

end
