class AccountBalancesController < ApplicationController
  # GET /account_balances
  # GET /account_balances.json
  def index
    @account_balances = AccountBalance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @account_balances }
    end
  end

  # GET /account_balances/1
  # GET /account_balances/1.json
  def show
    @account_balance = AccountBalance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account_balance }
    end
  end

  # GET /account_balances/new
  # GET /account_balances/new.json
  def new
    @account_balance = AccountBalance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @account_balance }
    end
  end

  # GET /account_balances/1/edit
  def edit
    @account_balance = AccountBalance.find(params[:id])
  end

  # POST /account_balances
  # POST /account_balances.json
  def create
    @account_balance = AccountBalance.new(params[:account_balance])

    respond_to do |format|
      if @account_balance.save
        format.html { redirect_to @account_balance, notice: 'Account balance was successfully created.' }
        format.json { render json: @account_balance, status: :created, location: @account_balance }
      else
        format.html { render action: "new" }
        format.json { render json: @account_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /account_balances/1
  # PUT /account_balances/1.json
  def update
    @account_balance = AccountBalance.find(params[:id])

    respond_to do |format|
      if @account_balance.update_attributes(params[:account_balance])
        format.html { redirect_to @account_balance, notice: 'Account balance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @account_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_balances/1
  # DELETE /account_balances/1.json
  def destroy
    @account_balance = AccountBalance.find(params[:id])
    @account_balance.destroy

    respond_to do |format|
      format.html { redirect_to account_balances_url }
      format.json { head :no_content }
    end
  end
end
