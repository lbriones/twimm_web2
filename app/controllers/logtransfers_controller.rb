class LogtransfersController < ApplicationController
  # GET /logtransfers
  # GET /logtransfers.json
  def index
    @logtransfers = Logtransfer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @logtransfers }
    end
  end

  # GET /logtransfers/1
  # GET /logtransfers/1.json
  def show
    @logtransfer = Logtransfer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @logtransfer }
    end
  end

  # GET /logtransfers/new
  # GET /logtransfers/new.json
  def new
    @logtransfer = Logtransfer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @logtransfer }
    end
  end

  # GET /logtransfers/1/edit
  def edit
    @logtransfer = Logtransfer.find(params[:id])
  end

  # POST /logtransfers
  # POST /logtransfers.json
  def create
    @logtransfer = Logtransfer.new(params[:logtransfer])

    respond_to do |format|
      if @logtransfer.save
        format.html { redirect_to @logtransfer, notice: 'Logtransfer was successfully created.' }
        format.json { render json: @logtransfer, status: :created, location: @logtransfer }
      else
        format.html { render action: "new" }
        format.json { render json: @logtransfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /logtransfers/1
  # PUT /logtransfers/1.json
  def update
    @logtransfer = Logtransfer.find(params[:id])

    respond_to do |format|
      if @logtransfer.update_attributes(params[:logtransfer])
        format.html { redirect_to @logtransfer, notice: 'Logtransfer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @logtransfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logtransfers/1
  # DELETE /logtransfers/1.json
  def destroy
    @logtransfer = Logtransfer.find(params[:id])
    @logtransfer.destroy

    respond_to do |format|
      format.html { redirect_to logtransfers_url }
      format.json { head :no_content }
    end
  end
end
