class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  # GET /loans
  # GET /loans.json
  def index
    @loans = Loan.all
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @loan = Loan.new
    @buyer_id = params[:loan][:buyer_id]
  end

  # GET /loans/1/edit
  def edit
  end
  
  def view
    @buyer_id = params[:loan][:buyer_id]
    @loans = Loan.where('buyer_id' => @buyer_id)
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new(loan_params)
    @loan.monthly_installment = compute_monthly(@loan).round(2)
    @loan.downpayment = (@loan.purchase_price * 0.2).round(2)
    @loan.balance_penalty_amount = 0

    respond_to do |format|
      if @loan.save
        format.html { redirect_to @loan, notice: 'Loan was successfully created.' }
        format.json { render :show, status: :created, location: @loan }
      else
        format.html { render :new }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def compute_monthly(loan)
    # get the 80% of principal amount
    forInstallment = loan.purchase_price * 0.8
    
    # get the number of years based on the interest rate
    if loan.interest_rate == 15
      terms = 5
    elsif loan.interest_rate == 17
      terms = 7
    elsif loan.interest_rate == 18
      terms = 10
    end
    
   
    
    
    # calculate number of months
    numberOfMonths = terms * 12
    
    # get the monthly interest rate
    interest_rate = (loan.interest_rate/100.0) / 12.0
    
    # calculate monthly payment
    monthly = forInstallment * (interest_rate * (1 + interest_rate) ** numberOfMonths) / ((1 +  interest_rate) ** numberOfMonths - 1)
  
    return monthly
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    @loan.monthly_installment = compute_monthly(@loan)
    
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      params.require(:loan).permit(:TCT, :subdivision_name, :block, :lot, :lot_area, :floor_area, :loan_type, :purchase_price, :monthly_installment, :interest_rate, :buyer_id)
    end
end
