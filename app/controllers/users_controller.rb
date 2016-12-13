class UsersController < ApplicationController
  
  def home
  
  end
  
  def amortization_calculator
    @months = params[:months].to_i
    @interest_rate = (params[:interest_rate].to_i/100.0) / 12
    @loan_amount = params[:loan_amount].to_i
    
    @interest_amount = Array.new
    @principal_amount = Array.new
    @balance_due = Array.new
    
    @monthly = compute_monthly(@loan_amount, @interest_rate, @months).round(2)
    @previous_balance = @loan_amount

    for i in 1..@months
      @interest_amount << (@previous_balance * @interest_rate).round(2)
      @principal_amount << (((@interest_rate * (1 + @interest_rate) ** @months) / ((1 + @interest_rate) ** @months - 1) * @loan_amount) - (@interest_amount.last)).round(2)
      @balance_due << (@previous_balance - @principal_amount.last).round(2)
      @previous_balance = (@previous_balance - @principal_amount.last).round(2)
    end
  end
  
  def compute_monthly(purchase_price, interest_rate, numberOfMonths)
    # get the 80% of principal amount
    forInstallment = purchase_price
    
    # calculate monthly payment
    monthly = forInstallment * (interest_rate * (1 + interest_rate) ** numberOfMonths) / ((1 + interest_rate) ** numberOfMonths - 1)
    
    return monthly
  end

end
