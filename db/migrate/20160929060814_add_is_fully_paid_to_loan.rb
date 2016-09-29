class AddIsFullyPaidToLoan < ActiveRecord::Migration
  def change
      add_column :loans, :is_fully_paid, :boolean, :default => false
  end
end
