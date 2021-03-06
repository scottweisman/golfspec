class RoundsController < ApplicationController
  before_filter :redirect_user_without_rounds_to_new_round, only: :index

  def index
    if current_user
      @rounds = current_user.rounds.order("date_played DESC")
      @page_title = "Your Rounds"
    end
  end

  def show
    @round = Round.find(params[:id])
  end

  def new
    @round = Round.new
    @page_title = "New Round"
  end

  def edit
    @round = Round.find(params[:id])
    @page_title = "Edit Round"
  end

  def create
    @round = current_user.rounds.new(params[:round])

    if @round.save
      redirect_to rounds_path, notice: 'Your round was added.'
    else
      render action: "new"
    end
  end

  def update
    @round = Round.find(params[:id])

    if @round.update_attributes(params[:round])
      redirect_to round_path, notice: 'Round was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @round = Round.find(params[:id])
    @round.destroy
  end

  private

    def redirect_user_without_rounds_to_new_round
      if current_user && current_user.rounds.blank?
        redirect_to new_round_path, notice: 'Add your first round'
      end
    end
end
