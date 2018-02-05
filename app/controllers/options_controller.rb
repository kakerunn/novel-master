class OptionsController < ApplicationController

binding.pry
  def show
    @option = Option.find_by(id: @contribution.option_id)
  end

end
