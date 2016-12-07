class ChangeMoneyColumnsToDecimal < ActiveRecord::Migration
  def change
    change_column :loans, :purchase_price, :decimal, :precision => 15, :scale => 2
    change_column :loans, :monthly_installment, :decimal, :precision => 15, :scale => 2
    
    change_column :payments, :total_payment, :decimal, :precision => 15, :scale => 2
    change_column :payments, :principal_amount, :decimal, :precision => 15, :scale => 2
    change_column :payments, :interest_amount, :decimal, :precision => 15, :scale => 2
    change_column :payments, :installment_penalty_amount, :decimal, :precision => 15, :scale => 2
    change_column :payments, :balance_penalty_amount, :decimal, :precision => 15, :scale => 2
    change_column :payments, :grand_total, :decimal, :precision => 15, :scale => 2
    
    change_column :buyers, :applicant_salary, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_allowances, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_expenses, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_business_income, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_commissions, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_others, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_gross_family_income, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_total_expenses, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :applicant_net_disposable_income, :decimal, :precision => 15, :scale => 2
    
    change_column :buyers, :spouse_salary, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_allowances, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_expenses, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_business_income, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_commissions, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_others, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_gross_family_income, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_total_expenses, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :spouse_net_disposable_income, :decimal, :precision => 15, :scale => 2
    
    change_column :buyers, :total_salary, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_allowances, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_expenses, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_business_income, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_commissions, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_others, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_gross_family_income, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_total_expenses, :decimal, :precision => 15, :scale => 2
    change_column :buyers, :total_net_disposable_income, :decimal, :precision => 15, :scale => 2
  end
end
