class OptionsController < ApplicationController

  def show
    @option = Option.find_by(id: @contribution.option_id)
  end

end
