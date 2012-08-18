class RoundsController < ApplicationController

  def index
    @rounds = Round.order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rounds }
    end
  end

  def show
    @round = Round.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @round }
    end
  end

  def new
    @round = Round.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @round }
    end
  end

  def edit
    @round = Round.find(params[:id])
  end

  def create
    @round = Round.new(params[:round])

    respond_to do |format|
      if @round.save
        redirect_to rounds_path, notice: 'Round was successfully created.'
      else
        render action: "new"
      end
    end
  end

  def update
    @round = Round.find(params[:id])

    respond_to do |format|
      if @round.update_attributes(params[:round])
        redirect_to round_path, notice: 'Round was successfully updated.'
      else
        render action: "edit"
      end
    end
  end

  def destroy
    @round = Round.find(params[:id])
    @round.destroy

    respond_to do |format|
      format.html { redirect_to rounds_url }
      format.json { head :no_content }
    end
  end
end
