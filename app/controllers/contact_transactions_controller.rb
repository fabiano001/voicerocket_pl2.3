class ContactTransactionsController < ApplicationController
  before_action :set_contact_transaction, only: [:show, :edit, :update, :destroy]

  # GET /contact_transactions
  # GET /contact_transactions.json
  def index
    @contact_transactions = ContactTransaction.all
  end

  # GET /contact_transactions/1
  # GET /contact_transactions/1.json
  def show
  end

  # GET /contact_transactions/new
  def new
    @contact_transaction = ContactTransaction.new
  end

  # GET /contact_transactions/1/edit
  def edit
  end

  # POST /contact_transactions
  # POST /contact_transactions.json
  def create
    @contact_transaction = ContactTransaction.new(contact_transaction_params)

    respond_to do |format|
      if @contact_transaction.save
        format.html { redirect_to @contact_transaction, notice: 'Contact transaction was successfully created.' }
        format.json { render :show, status: :created, location: @contact_transaction }
      else
        format.html { render :new }
        format.json { render json: @contact_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_transactions/1
  # PATCH/PUT /contact_transactions/1.json
  def update
    respond_to do |format|
      if @contact_transaction.update(contact_transaction_params)
        format.html { redirect_to @contact_transaction, notice: 'Contact transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_transaction }
      else
        format.html { render :edit }
        format.json { render json: @contact_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_transactions/1
  # DELETE /contact_transactions/1.json
  def destroy
    @contact_transaction.destroy
    respond_to do |format|
      format.html { redirect_to contact_transactions_url, notice: 'Contact transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_transaction
      @contact_transaction = ContactTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_transaction_params
      params.require(:contact_transaction).permit(:phone_numer, :genre, :duration, :charge, :run_id)
    end
end
