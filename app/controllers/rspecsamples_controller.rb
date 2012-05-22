class RspecsamplesController < ApplicationController
  # GET /rspecsamples
  # GET /rspecsamples.json
  def index
    @rspecsamples = Rspecsample.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rspecsamples }
    end
  end

  # GET /rspecsamples/1
  # GET /rspecsamples/1.json
  def show
    @rspecsample = Rspecsample.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rspecsample }
    end
  end

  # GET /rspecsamples/new
  # GET /rspecsamples/new.json
  def new
    @rspecsample = Rspecsample.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rspecsample }
    end
  end

  # GET /rspecsamples/1/edit
  def edit
    @rspecsample = Rspecsample.find(params[:id])
  end

  # POST /rspecsamples
  # POST /rspecsamples.json
  def create
    @rspecsample = Rspecsample.new(params[:rspecsample])

    respond_to do |format|
      if @rspecsample.save
        format.html { redirect_to @rspecsample, notice: 'Rspecsample was successfully created.' }
        format.json { render json: @rspecsample, status: :created, location: @rspecsample }
      else
        format.html { render action: "new" }
        format.json { render json: @rspecsample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rspecsamples/1
  # PUT /rspecsamples/1.json
  def update
    @rspecsample = Rspecsample.find(params[:id])

    respond_to do |format|
      if @rspecsample.update_attributes(params[:rspecsample])
        format.html { redirect_to @rspecsample, notice: 'Rspecsample was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rspecsample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rspecsamples/1
  # DELETE /rspecsamples/1.json
  def destroy
    @rspecsample = Rspecsample.find(params[:id])
    @rspecsample.destroy

    respond_to do |format|
      format.html { redirect_to rspecsamples_url }
      format.json { head :no_content }
    end
  end
end
