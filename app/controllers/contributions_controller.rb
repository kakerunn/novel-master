class ContributionsController < ApplicationController

    def index
        @contributions = Contribution.all.order(created_at: 'desc' )

    end

    def show
        @contribution = Contribution.find(params[:id])
        @user = User.find_by(id: @contribution.user_id)
    end

    def new
        @contribution = Contribution.new
    end

    def create
        @contribution = Contribution.new(contribution_params)
        @user = current_user
        @contribution.user_id = @user.id
      if @contribution.save
            redirect_to contributions_path
      else
            render 'new'
      end
    end

    def edit
        @contribution = Contribution.find(params[:id])
    end

    def update
        @contribution = Contribution.find(params[:id])
        if @contribution.update(contribution_params)
            redirect_to contributions_path
        else
            render 'edit'
        end
    end

    def destroy
        @contribution = Contribution.find(params[:id])
        @contribution.destroy
        redirect_to contributions_path
    end

    private
        def contribution_params
            params.require(:contribution).permit(:title , :body , :option_id).merge(user_id: current_user.id)
        end

end
