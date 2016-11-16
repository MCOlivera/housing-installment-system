class AddColumnsToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :balance_penalty_amount, :decimal, :precision => 15, :scale => 2
    add_column :loans, :grand_total, :decimal, :precision => 15, :scale => 2
  end
end
