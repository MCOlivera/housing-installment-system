class AddLoanTypeToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :loan_type, "ENUM('lot_only', 'house_and_lot', 'duplex_house')"
  end
end
