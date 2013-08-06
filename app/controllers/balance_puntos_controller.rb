class BalancePuntosController < ApplicationController
  # GET /balance_puntos
  # GET /balance_puntos.json
  def index
    @balance_puntos = BalancePunto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @balance_puntos }
    end
  end

  # GET /balance_puntos/1
  # GET /balance_puntos/1.json
  def show
    @balance_punto = BalancePunto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @balance_punto }
    end
  end

  # GET /balance_puntos/new
  # GET /balance_puntos/new.json
  def new
    @balance_punto = BalancePunto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @balance_punto }
    end
  end

  # GET /balance_puntos/1/edit
  def edit
    @balance_punto = BalancePunto.find(params[:id])
  end

  # POST /balance_puntos
  # POST /balance_puntos.json
  def create
    @balance_punto = BalancePunto.new(params[:balance_punto])

    respond_to do |format|
      if @balance_punto.save
        format.html { redirect_to @balance_punto, notice: 'Balance punto was successfully created.' }
        format.json { render json: @balance_punto, status: :created, location: @balance_punto }
      else
        format.html { render action: "new" }
        format.json { render json: @balance_punto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /balance_puntos/1
  # PUT /balance_puntos/1.json
  def update
    @balance_punto = BalancePunto.find(params[:id])

    respond_to do |format|
      if @balance_punto.update_attributes(params[:balance_punto])
        format.html { redirect_to @balance_punto, notice: 'Balance punto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @balance_punto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balance_puntos/1
  # DELETE /balance_puntos/1.json
  def destroy
    @balance_punto = BalancePunto.find(params[:id])
    @balance_punto.destroy

    respond_to do |format|
      format.html { redirect_to balance_puntos_url }
      format.json { head :no_content }
    end
  end
end
