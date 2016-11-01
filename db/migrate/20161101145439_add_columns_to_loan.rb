class AddColumnsToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :balance_penalty_amount, :decimal
    add_column :loans, :grand_total, :decimal
  end
end
