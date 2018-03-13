class ContributionsController < ApplicationController
before_action :set_contribute, only: [:show, :edit, :update, :destroy]

  def index
    @contributions = Contribution.all.order(created_at: 'desc' )
  end

  def show
    @user = User.find_by(id: @contribution.user_id)
  end

  def new
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.new(contribution_params)
    if @contribution.save
      redirect_to contributions_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @contribution.update(contribution_params)
      redirect_to contributions_path
    else
      render 'edit'
    end
  end

  def destroy
    @contribution.destroy
    redirect_to contributions_path
  end

private
  def contribution_params
    params.require(:contribution).permit(:title , :body , :option_id, :user_id)
  end

  def set_contribute
    @contribution = Contribution.find(params[:id])
  end


end
