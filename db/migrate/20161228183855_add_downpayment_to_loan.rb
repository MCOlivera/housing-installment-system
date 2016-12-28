class AddDownpaymentToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :downpayment, :decimal, :precision => 15, :scale => 2
  end
end
