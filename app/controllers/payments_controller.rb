class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end
  
  def view
    @loan_id = params[:payment][:loan_id]
    @payments = Payment.where('loan_id' => @loan_id)
  end

  # GET /payments/new
  def new
    @payment = Payment.new
    @loan = Loan.find(params[:payment][:loan_id])
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)
    @loan = Loan.find(@payment.loan_id)
    
    monthly_interest = (@loan.interest_rate/100.0) / 12
    previous_balance = Payment.where(:loan_id => @payment.loan_id).last
    
    if previous_balance.nil?
      previous_balance = @loan.purchase_price * 0.8
    else
      previous_balance = previous_balance.grand_total
    end
    
    @payment.interest_amount = previous_balance * monthly_interest
    
    @payment.interest_amount.round
    
    @payment.principal_amount = compute_amortization_rate(@loan.interest_rate) * (@loan.purchase_price * 0.8) - @payment.interest_amount
    
    @payment.principal_amount.round
    
    @payment.grand_total = previous_balance - @payment.principal_amount
    
    @payment.grand_total.round
    
    if @payment.installment_penalty_amount.nil?
      @payment.installment_penalty_amount = 0
    end
    
    @payment.balance_penalty_amount = compute_penalty(@payment)
    
    @payment.balance_penalty_amount.round
    
    if @payment.grand_total <= 0
      @loan.update_attribute(:is_fully_paid, true)
      @payment.grand_total = 0;
    end

    respond_to do |format|
      if @payment.save
        format.html { redirect_to '/view_loan?loan%5Bbuyer_id%5D=' + @loan.buyer_id.to_s, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def compute_penalty(payment)
    if (payment.date_paid > payment.due_date)
      return payment.principal_amount * 0.02
    else
      return 0
    end
  end
  
  def compute_amortization_rate(interest_rate)
    if interest_rate == 15
      return 0.0237899301
    elsif interest_rate == 17
      return 0.0204358049
    elsif interest_rate == 18
      return 0.0180185199
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:due_date, :date_paid, :or_number, :total_payment, :principal_amount, :interest_amount, :installment_penalty_amount, :balance_penalty_amount, :grand_total, :loan_id)
    end
end
