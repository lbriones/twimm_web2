class LogjuegosController < ApplicationController
  # GET /logjuegos
  # GET /logjuegos.json
  def index
    @logjuegos = Logjuego.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @logjuegos }
    end
  end

  # GET /logjuegos/1
  # GET /logjuegos/1.json
  def show
    @logjuego = Logjuego.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @logjuego }
    end
  end

  # GET /logjuegos/new
  # GET /logjuegos/new.json
  def new
    @logjuego = Logjuego.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @logjuego }
    end
  end

  # GET /logjuegos/1/edit
  def edit
    @logjuego = Logjuego.find(params[:id])
  end

  # POST /logjuegos
  # POST /logjuegos.json
  def create
    @logjuego = Logjuego.new(params[:logjuego])

    respond_to do |format|
      if @logjuego.save
        format.html { redirect_to @logjuego, notice: 'Logjuego was successfully created.' }
        format.json { render json: @logjuego, status: :created, location: @logjuego }
      else
        format.html { render action: "new" }
        format.json { render json: @logjuego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /logjuegos/1
  # PUT /logjuegos/1.json
  def update
    @logjuego = Logjuego.find(params[:id])

    respond_to do |format|
      if @logjuego.update_attributes(params[:logjuego])
        format.html { redirect_to @logjuego, notice: 'Logjuego was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @logjuego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logjuegos/1
  # DELETE /logjuegos/1.json
  def destroy
    @logjuego = Logjuego.find(params[:id])
    @logjuego.destroy

    respond_to do |format|
      format.html { redirect_to logjuegos_url }
      format.json { head :no_content }
    end
  end
end
